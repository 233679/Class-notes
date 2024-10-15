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
main:
	;movlw h'FF'
	movlw h'00'
	movwf PORTB
	goto main