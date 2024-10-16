;*******************************************************************
;            TEMPLATE PROVIDED BY CENTRE FOR USE WITH HEADER FILE     
;
;         TITLE:  #### Microcontroller fire alarm system #####
;         AUTHOR: ######## Tye #########
;         DATE:   ####### 2024/10/14 ######
;

;******************************************************************
; PROGRAM DESCRIPTION:
;
; #### Checks if a fire has started & triggers alarms & sprinklers in response #######
;
;******************************************************************

;*********************************************************************
;                       DEFINITIONS
;*********************************************************************
;The header file can be used with either the PIC16F88 or PIC16F877A
;#define UseRC		; UseRC, UseCrystal or UseInternal - defaults to UseRC
#define UseInternal		; UseRC, UseCrystal or UseInternal - defaults to UseRC
#define UseInterrupt	
;#define Watchdog		; The Watchdog timers are off by default unless this is uncommented 

;#include "Header.inc" ;Predefined wait subroutines - wait1ms, wait10ms, wait100ms, wait1000ms
;Predefined ADC subroutines - readadc0, readac1, readadc2
;	radix	dec                 ; set default number radix to decimal
	;radix	hex	       ; set default number radix to hex

;*********************************************************************
;                       VARIABLES
;*********************************************************************

; #### Create any variables here using the EQU statement
; 
;
; #### e.g.	myVar equ b1
 
;*********************************************************************
;                       MAIN PROGRAM
;*********************************************************************

; ---------- Initialisation ----------
init: 
	; Clears inputs & outputs
	clrf PORTB
	clrf PORTA
	
	bsf STATUS,RP0 ; Allows writing to TRISx (memory page 1)
	
	; Sets B.x Output	
	movlw h'00'
	movwf TRISB
	; Sets A.x Input
	movlw h'FF'
	movwf TRISA
	
	bcf STATUS,RP0 ; Locks TRISx (memory page 0)

vars:
	; Stores how many times each spinkler has been triggered
	Sprinkler_One_Count EQU B0
	Sprinkler_Two_Count EQU B1
	Sprinkler_Three_Count EQU B2
	
	; Stores the result of calculations
	Result EQU B3
	
	; Init all vars to 0
	movlw h'0'
	movwf Sprinkler_One_Count
	movwf Sprinkler_Two_Count
	movwf Sprinkler_Three_Count
	movwf Result
	
	
; ---------- Main Cycle ----------	
main:
	; Test for override.
	btfsc PORTA, 1
	goto override_switch
	
	; Run spinklers
	btfsc PORTA, 0
	call spk_one_guard
	btfsc PORTA, 7
	call spk_two_guard
	btfsc PORTA, 6
	call spk_three_guard
	
	; Reset spk counts (if appropriate)
	btfss PORTA, 0
	call zero_spk_one_count
	btfss PORTA, 7
	call zero_spk_two_count
	btfss PORTA, 6
	call zero_spk_three_count
	
	; Wait for awhile
	call wait100ms
	
	goto main
	
	
; ---------- Override Switch ----------
override_switch:
	clrf PORTB
	
	; Reset counts for spinkler triggers
	movlw h'00'
	movwf Sprinkler_One_Count
	movwf Sprinkler_Two_Count
	movwf Sprinkler_Three_Count
	goto main	


; ---------- Sprinkler One ----------
spk_one_guard:
	; Set Result 0 if count is not 5.
	btfss Sprinkler_One_Count, 0
	bsf Result, 0
	btfss Sprinkler_One_Count, 2
	bsf Result, 0
	
	; Increment in place if bellow 5.
	btfsc Result, 0
	incf Sprinkler_One_Count, 1
	
	; Trigger if 5.
	btfss Result, 0
	call spk_one_trigger
	
	bcf Result, 0 ; Reset Result reg.
	return
	
spk_one_trigger:
	; Trigger,
	bsf PORTB, 0 ; Alarm
	bsf PORTB, 1 ; Sensor one indicator
	bsf PORTB, 4 ; Sensor one sprinkler
	return

	
; ---------- Sprinkler Two ----------
spk_two_guard:
	; Set Result 0 if count is not 5.
	btfss Sprinkler_Two_Count, 0
	bsf Result, 0
	btfss Sprinkler_Two_Count, 2
	bsf Result, 0
	
	; Increment in place if bellow 5.
	btfsc Result, 0
	incf Sprinkler_Two_Count, 1
	
	; Trigger if 5.
	btfss Result, 0
	call spk_two_trigger
	
	bcf Result, 0 ; Reset Result reg.
	return
	
spk_two_trigger:
	; Trigger,
	bsf PORTB, 0 ; Alarm
	bsf PORTB, 2 ; Sensor two indicator
	bsf PORTB, 5 ; Sensor two sprinkler
	return
	
	
; ---------- Sprinkler Three ----------
spk_three_guard:
	; Set Result 0 if count is not 5.
	btfss Sprinkler_Three_Count, 0
	bsf Result, 0
	btfss Sprinkler_Three_Count, 2
	bsf Result, 0
	
	; Increment in place if bellow 5.
	btfsc Result, 0
	incf Sprinkler_Three_Count, 1
	
	; Trigger if 5.
	btfss Result, 0
	call spk_three_trigger
	
	bcf Result, 0 ; Reset Result reg.
	return
	
spk_three_trigger:
	; Trigger,
	bsf PORTB, 0 ; Alarm
	bsf PORTB, 3 ; Sensor three indicator
	bsf PORTB, 6 ; Sensor three sprinkler
	return


; ---------- Count Resets ----------
zero_spk_one_count:
	movlw h'00'
	movwf Sprinkler_One_Count
	return
zero_spk_two_count:
	movlw h'00'
	movwf Sprinkler_Two_Count
	return
zero_spk_three_count:
	movlw h'00'
	movwf Sprinkler_Three_Count
	return

   	

;*********************************************************************
;			INTERRUPT SERVICE ROUTINE
;*********************************************************************

W_SAVE		EQU B20     ; backup registers used in interrupts

interrupt:
	movwf 	W_SAVE 	  	; Copy W to save register
    	btfss  INTCON,INT0IF  	; check correct interrupt has occurred
    	retfie                		; no, so return and re-enable GIE

;**********The interrupt service routine (if required) goes here*********

                    
   	bcf    INTCON,INT0IF 	 ; bit clear so clear interrupt flag 
	
	movf   W_SAVE,W       	; restore W
	retfie              ; return and re-set GIE bit
	
    	END                 ; all programs must end with this