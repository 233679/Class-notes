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
main:
	movlw h'1'
	andlw h'5'
	btfss STATUS,2
	incf PORTB,1 ; Inc if status Z is false
	call wait1000ms