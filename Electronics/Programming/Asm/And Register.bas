init: 
	clrf PORTB
	bsf STATUS,RP0 ; Allows writing to TRISx (memory page 1)
	
	; Sets B.x Output	
	movlw h'00'
	movwf TRISB
	; Sets A.x Input
	movlw h'FF'
	movwf TRISA
	
	bcf STATUS,RP0 ; Locks TRISx (memory page 0)
vars:
	movlw h'2'
	movwf B0
main:
	movfw PORTA
	andwf B0, 1
	btfss STATUS,2
	incf PORTB,1
	call wait100ms
	
	decfsz B0,F
	goto main