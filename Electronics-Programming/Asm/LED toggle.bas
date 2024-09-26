init: 
	clrf PORTB
	bsf STATUS,RP0 ; Allows writing to TRISx
	
	; Sets B.x Output	
	movlw h'00'
	movwf TRISB
	; Sets A.x Input
	movlw h'FF'
	movwf TRISA
	
	bcf STATUS,RP0 ; Locks TRISx
main:
	bsf PORTB,0
	call wait100ms
	bcf PORTB,0
	call wait100ms
	goto main