#INCLUDE<P18F4550.INC>

CON1		EQU			0X00
CON2		EQU			0X01


PUERTOS
				CLRF			TRISB				; PORTB OUT FOR LCD BUS
				BCF				TRISD,0				; LED INDICATOR

				BCF				TRISC,0				; C0 OUT FOR RS
				BCF				TRISC,1				; C1 OUT FOR CS1
				BCF				TRISC,2				; C2 OUT FOR CS2

				BCF				TRISE,0				; E0 OUT FOR RST
				BCF				TRISE,1				; E1 OUT FOR E
				BCF				TRISE,2				; E2 OUT FOR R/W

				BSF				OSCCON,6			; INTERNAL OSCILLATOR 4 MHZ
				BSF				OSCCON,5
				BCF				OSCCON,4

				BSF				ADCON1,0			; C A D OFF
				BSF				ADCON1,1
				BSF				ADCON1,2
				BSF				ADCON1,3


				CALL			TIMER

				BCF				PORTE,2					;R/W=0

				CALL			LCD_ON
				CALL			LEFT_SEGMENT
			
				CALL			PAGE_0
				CALL			ADDRESS_0
		
				CALL			A0

	  			CALL			PAGE_1
				CALL			ADDRESS_1
			
				CALL			A1

				CALL			PAGE_2
				CALL			ADDRESS_2
	
				CALL			A2.0
				CALL			SPACE_SYMBOL
			    CALL            A2.1

				CALL			PAGE_3
				CALL			ADDRESS_3
	
				CALL			A3.0
				CALL			SPACE_SYMBOL
				CALL			A3.1
				CALL			SPACE_SYMBOL
				CALL			A3.2

				CALL			PAGE_4
				CALL			ADDRESS_4
	
				CALL			A4.0
				CALL			SPACE_SYMBOL
				CALL			A4.1
				CALL			SPACE_SYMBOL
				CALL			A4.2

				CALL			PAGE_5
				CALL			ADDRESS_5

				CALL			A5.0
				CALL			SPACE_SYMBOL
				CALL			A5.1

                CALL			PAGE_6
				CALL			ADDRESS_6

				CALL			A6.0
				CALL			SPACE_SYMBOL
				CALL			SPACE_SYMBOL
				CALL			A6.1
			
			    CALL			PAGE_7
				CALL			ADDRESS_7

				CALL			A7.0

				CALL			RIGHT_SEGMENT

				CALL			PAGE_0
				CALL			ADDRESS_0
	
				CALL			A0

	  			CALL			PAGE_1
				CALL			ADDRESS_1
		
				CALL			A1

				CALL			PAGE_2
				CALL			ADDRESS_2
	
				CALL			A2.0
				CALL			SPACE_SYMBOL
			    CALL            A2.1

				CALL			PAGE_3
				CALL			ADDRESS_3
	
				CALL			A3.0
				CALL			SPACE_SYMBOL
				CALL			A3.1
				CALL			SPACE_SYMBOL
				CALL			A3.2

				CALL			PAGE_4
				CALL			ADDRESS_4
		
				CALL			A4.0
				CALL			SPACE_SYMBOL
				CALL			A4.1
				CALL			SPACE_SYMBOL
				CALL			A4.2

				CALL			PAGE_5
				CALL			ADDRESS_5
		
				CALL			A5.0
				CALL			SPACE_SYMBOL
				CALL			A5.1

                CALL			PAGE_6
				CALL			ADDRESS_6
	
				CALL			A6.0
				CALL			SPACE_SYMBOL
				CALL			SPACE_SYMBOL
				CALL			A6.1
			
			    CALL			PAGE_7
				CALL			ADDRESS_7

				CALL			A7.0		
					
LED
				BSF				PORTD,0
				CALL				TIMER
				BCF				PORTD,0
				CALL				TIMER
				GOTO			LED
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
A0
				MOVLW			.128
				CALL				DATA_LETTER
				MOVLW			.128
				CALL				DATA_LETTER
				MOVLW			.128
				CALL				DATA_LETTER
				MOVLW			.128
				CALL				DATA_LETTER
				MOVLW			.128
				CALL				DATA_LETTER
				MOVLW			.128
				CALL				DATA_LETTER
				MOVLW			.192
				CALL				DATA_LETTER
				MOVLW			.240
				CALL				DATA_LETTER
				MOVLW			.252
				CALL				DATA_LETTER
				MOVLW			.252
				CALL				DATA_LETTER
				MOVLW			.252
				CALL				DATA_LETTER
				MOVLW			.252
				CALL				DATA_LETTER
				MOVLW			.252
				CALL				DATA_LETTER
				MOVLW			.252
				CALL				DATA_LETTER
				MOVLW			.252
				CALL				DATA_LETTER

				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
A1
				MOVLW			.128
				CALL				DATA_LETTER
				MOVLW			.192
				CALL				DATA_LETTER
				MOVLW			.224
				CALL				DATA_LETTER
				MOVLW			.240
				CALL				DATA_LETTER
				MOVLW			.248
				CALL				DATA_LETTER
				MOVLW			.252
				CALL				DATA_LETTER
				MOVLW			.124
				CALL				DATA_LETTER
				MOVLW			.62
				CALL				DATA_LETTER
				MOVLW			.62
				CALL				DATA_LETTER
				MOVLW			.31
				CALL				DATA_LETTER
				MOVLW			.31
				CALL				DATA_LETTER
				MOVLW			.15
				CALL				DATA_LETTER
				MOVLW			.15
				CALL				DATA_LETTER
				MOVLW			.15
				CALL				DATA_LETTER
				MOVLW			.15
				CALL				DATA_LETTER
				MOVLW			.15
				CALL				DATA_LETTER
                MOVLW			.239
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.252
				CALL				DATA_LETTER
				MOVLW			.248
				CALL				DATA_LETTER
				MOVLW			.248
				CALL				DATA_LETTER
				MOVLW			.240
				CALL				DATA_LETTER
				MOVLW			.224
				CALL				DATA_LETTER
				MOVLW			.192
				CALL				DATA_LETTER
				MOVLW			.128
				CALL				DATA_LETTER

				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
A2.0
				MOVLW			.128
				CALL				DATA_LETTER
				MOVLW			.224
				CALL				DATA_LETTER
				MOVLW			.248
				CALL				DATA_LETTER
				MOVLW			.254
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.127
				CALL				DATA_LETTER
				MOVLW			.31
				CALL				DATA_LETTER
				MOVLW			.7
				CALL				DATA_LETTER
				MOVLW			.3
				CALL				DATA_LETTER
				MOVLW			.1
				CALL				DATA_LETTER
				MOVLW			.0
				CALL				DATA_LETTER
			
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
A2.1
				MOVLW			.192
				CALL				DATA_LETTER
				MOVLW			.240
				CALL				DATA_LETTER
				MOVLW			.254
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.127
				CALL				DATA_LETTER
				MOVLW			.31
				CALL				DATA_LETTER
				MOVLW			.7
				CALL				DATA_LETTER
				MOVLW			.1
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER	
				MOVLW			.0
				CALL				DATA_LETTER
				MOVLW			.0
				CALL				DATA_LETTER
				MOVLW			.1
				CALL				DATA_LETTER
				MOVLW			.3
				CALL				DATA_LETTER
				MOVLW			.7
				CALL				DATA_LETTER
				MOVLW			.31
				CALL				DATA_LETTER
				MOVLW			.63
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.252
				CALL				DATA_LETTER
				MOVLW			.248
				CALL				DATA_LETTER
				MOVLW			.192
				CALL				DATA_LETTER
				MOVLW			.128
				CALL				DATA_LETTER	
	
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
A3.0
				
				MOVLW			.252
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.31
				CALL				DATA_LETTER
				MOVLW			.1
				CALL				DATA_LETTER
				MOVLW			.0
				CALL				DATA_LETTER
				MOVLW			.0
				CALL				DATA_LETTER
		
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
A3.1
				MOVLW			.128
				CALL				DATA_LETTER
				MOVLW			.240
				CALL				DATA_LETTER
				MOVLW			.252
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.63
				CALL				DATA_LETTER
				MOVLW			.7
				CALL				DATA_LETTER
				MOVLW			.1
				CALL				DATA_LETTER
                MOVLW			.0
				CALL				DATA_LETTER
                MOVLW			.0
				CALL				DATA_LETTER
                MOVLW			.0
				CALL				DATA_LETTER
                MOVLW			.0
				CALL				DATA_LETTER
                MOVLW			.255
				CALL				DATA_LETTER
                MOVLW			.255
				CALL				DATA_LETTER
                MOVLW			.255
				CALL				DATA_LETTER
                MOVLW			.255
				CALL				DATA_LETTER
                MOVLW			.255
				CALL				DATA_LETTER
                MOVLW			.255
				CALL				DATA_LETTER
                MOVLW			.0
				CALL				DATA_LETTER
                MOVLW			.0
				CALL				DATA_LETTER

				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

A3.2
				MOVLW			.7
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.248
				CALL				DATA_LETTER
			
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
A4.0
			
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.0
				CALL				DATA_LETTER
			
		
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
A4.1
				MOVLW			.192
				CALL				DATA_LETTER
				MOVLW			.240
				CALL				DATA_LETTER
				MOVLW			.254
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.223
				CALL				DATA_LETTER
				MOVLW			.199
				CALL				DATA_LETTER
				MOVLW			.192
				CALL				DATA_LETTER
                MOVLW			.192
				CALL				DATA_LETTER
                MOVLW			.192
				CALL				DATA_LETTER
                MOVLW			.192
				CALL				DATA_LETTER
                MOVLW			.192
				CALL				DATA_LETTER
                MOVLW			.192
				CALL				DATA_LETTER
                MOVLW			.192
				CALL				DATA_LETTER
			    MOVLW			.192
				CALL				DATA_LETTER
                MOVLW			.249
				CALL				DATA_LETTER
                MOVLW			.243
				CALL				DATA_LETTER
                MOVLW			.231
				CALL				DATA_LETTER
                MOVLW			.207
				CALL				DATA_LETTER
                MOVLW			.159
				CALL				DATA_LETTER
                MOVLW			.63
				CALL				DATA_LETTER
                MOVLW			.0
				CALL				DATA_LETTER
                MOVLW			.0
				CALL				DATA_LETTER
                MOVLW			.0
				CALL				DATA_LETTER


				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

A4.2
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
			
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
A5.0
				MOVLW			.31
				CALL				DATA_LETTER
				MOVLW			.127
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.248
				CALL				DATA_LETTER
				MOVLW			.96
				CALL				DATA_LETTER
				MOVLW			.0
				CALL				DATA_LETTER
				MOVLW			.128
				CALL				DATA_LETTER
				MOVLW			.240
				CALL				DATA_LETTER
				MOVLW			.252
				CALL				DATA_LETTER
                MOVLW			.255
				CALL				DATA_LETTER
                MOVLW			.255
				CALL				DATA_LETTER
                MOVLW			.255
				CALL				DATA_LETTER
                MOVLW			.255
				CALL				DATA_LETTER
                MOVLW			.63
				CALL				DATA_LETTER
                MOVLW			.31
				CALL				DATA_LETTER
			    MOVLW			.31
				CALL				DATA_LETTER
                MOVLW			.31
				CALL				DATA_LETTER
                MOVLW			.31
				CALL				DATA_LETTER
                MOVLW			.31
				CALL				DATA_LETTER
                MOVLW			.31
				CALL				DATA_LETTER
                MOVLW			.31
				CALL				DATA_LETTER
                MOVLW			.31
				CALL				DATA_LETTER
                MOVLW			.31
				CALL				DATA_LETTER
                MOVLW			.31
				CALL				DATA_LETTER
                MOVLW			.31
				CALL				DATA_LETTER
                MOVLW			.31
				CALL				DATA_LETTER
                MOVLW			.31
				CALL				DATA_LETTER
                MOVLW			.255
				CALL				DATA_LETTER
                MOVLW			.127
				CALL				DATA_LETTER
                MOVLW			.63
				CALL				DATA_LETTER
                MOVLW			.159
				CALL				DATA_LETTER
                MOVLW			.207
				CALL				DATA_LETTER
                MOVLW			.231
				CALL				DATA_LETTER
                MOVLW			.2
				CALL				DATA_LETTER
			
				RETURN

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

A5.1
				MOVLW			.192
				CALL				DATA_LETTER
				MOVLW			.252
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.127
				CALL				DATA_LETTER
				MOVLW			.15
				CALL				DATA_LETTER
				MOVLW			.0
				CALL				DATA_LETTER
			
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

A6.0
				MOVLW			.1
				CALL				DATA_LETTER
				MOVLW			.131
				CALL				DATA_LETTER
				MOVLW			.224
				CALL				DATA_LETTER
				MOVLW			.248
				CALL				DATA_LETTER
				MOVLW			.254
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.255
				CALL				DATA_LETTER
				MOVLW			.63
				CALL				DATA_LETTER
				MOVLW			.15
				CALL				DATA_LETTER
                MOVLW			.195
				CALL				DATA_LETTER
                MOVLW			.192
				CALL				DATA_LETTER
                MOVLW			.128
				CALL				DATA_LETTER
                MOVLW			.128
				CALL				DATA_LETTER
               
			
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
A6.1
				MOVLW			.4
				CALL				DATA_LETTER
				MOVLW			.6
				CALL				DATA_LETTER
				MOVLW			.7
				CALL				DATA_LETTER
				MOVLW			.7
				CALL				DATA_LETTER
				MOVLW			.7
				CALL				DATA_LETTER
				MOVLW			.7
				CALL				DATA_LETTER
				MOVLW			.128
				CALL				DATA_LETTER
				MOVLW			.192
				CALL				DATA_LETTER
				MOVLW			.224
				CALL				DATA_LETTER
				MOVLW			.240
				CALL				DATA_LETTER
                MOVLW			.248
				CALL				DATA_LETTER
                MOVLW			.252
				CALL				DATA_LETTER
                MOVLW			.127
				CALL				DATA_LETTER
                MOVLW			.63
				CALL				DATA_LETTER
				MOVLW			.15
				CALL				DATA_LETTER
                MOVLW			.7
				CALL				DATA_LETTER
				MOVLW			.1
				CALL				DATA_LETTER
			
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
A7.0
				MOVLW			.160
				CALL				DATA_LETTER
				MOVLW			.184
				CALL				DATA_LETTER
				MOVLW			.190
				CALL				DATA_LETTER
				MOVLW			.191
				CALL				DATA_LETTER
				MOVLW			.63
				CALL				DATA_LETTER
				MOVLW			.63
				CALL				DATA_LETTER
				MOVLW			.63
				CALL				DATA_LETTER
				MOVLW			.15
				CALL				DATA_LETTER
				MOVLW			.3
				CALL				DATA_LETTER
				MOVLW			.0
				CALL				DATA_LETTER
                MOVLW			.0
				CALL				DATA_LETTER
                MOVLW			.3
				CALL				DATA_LETTER
                MOVLW			.7
				CALL				DATA_LETTER
                MOVLW			.15
				CALL				DATA_LETTER
				MOVLW			.15
				CALL				DATA_LETTER
                MOVLW			.31
				CALL				DATA_LETTER
				MOVLW			.31
				CALL				DATA_LETTER
                MOVLW			.30
				CALL				DATA_LETTER
                MOVLW			.62
				CALL				DATA_LETTER
                MOVLW			.60
				CALL				DATA_LETTER
				MOVLW			.60
				CALL				DATA_LETTER
                MOVLW			.60
				CALL				DATA_LETTER
				MOVLW			.60
				CALL				DATA_LETTER
                MOVLW			.60
				CALL				DATA_LETTER
                MOVLW			.60
				CALL				DATA_LETTER
                MOVLW			.60
				CALL				DATA_LETTER
				MOVLW			.60
				CALL				DATA_LETTER
                MOVLW			.60
				CALL				DATA_LETTER
				MOVLW			.60
				CALL				DATA_LETTER
                MOVLW			.28
				CALL				DATA_LETTER
                MOVLW			.30
				CALL				DATA_LETTER
                MOVLW			.30
				CALL				DATA_LETTER
				MOVLW			.15
				CALL				DATA_LETTER
                MOVLW			.15
				CALL				DATA_LETTER
				MOVLW			.15
				CALL				DATA_LETTER
                MOVLW			.7
				CALL				DATA_LETTER
                MOVLW			.3
				CALL				DATA_LETTER
                MOVLW			.3
			
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SPACE_SYMBOL
				MOVLW			.0
				CALL				DATA_LETTER
				MOVLW			.0
				CALL				DATA_LETTER
				MOVLW			.0
				CALL				DATA_LETTER
				MOVLW			.0
				CALL				DATA_LETTER
				MOVLW			.0
				CALL				DATA_LETTER
				MOVLW			.0
				CALL				DATA_LETTER

				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
RIGHT_SEGMENT
				BSF				PORTC,1
				BCF				PORTC,2
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LEFT_SEGMENT
				BCF				PORTC,1
				BSF				PORTC,2
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LCD_ON
				BCF				PORTC,0				; RS =0
				BCF				PORTE,1					; E = 0
				MOVLW			B'00111111'
				MOVWF			PORTB
				CALL				TIMER_3MS
				BSF				PORTE,1					; E=1
				BCF				PORTE,1					; E=0
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
PAGE_0
				BCF				PORTC,0				; RS =0
				BCF				PORTE,1					; E = 0
				MOVLW			B'10111000'
				MOVWF			PORTB
				CALL				TIMER_3MS
				BSF				PORTE,1					; E=1
				BCF				PORTE,1					; E=0
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ADDRESS_0
				BCF				PORTC,0				; RS =0
				BCF				PORTE,1					; E = 0
				MOVLW			B'01011011'
				MOVWF			PORTB
				CALL				TIMER_3MS
				BSF				PORTE,1					; E=1
				BCF				PORTE,1					; E=0
				RETURN

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
PAGE_1
				BCF				PORTC,0				; RS =0
				BCF				PORTE,1					; E = 0
				MOVLW			B'10111001'
				MOVWF			PORTB
				CALL				TIMER_3MS
				BSF				PORTE,1					; E=1
				BCF				PORTE,1					; E=0
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ADDRESS_1
				BCF				PORTC,0				; RS =0
				BCF				PORTE,1					; E = 0
				MOVLW			B'01001110'
				MOVWF			PORTB
				CALL				TIMER_3MS
				BSF				PORTE,1					; E=1
				BCF				PORTE,1					; E=0
				RETURN

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
PAGE_2
				BCF				PORTC,0				; RS =0
				BCF				PORTE,1					; E = 0
				MOVLW			B'10111010'
				MOVWF			PORTB
				CALL				TIMER_3MS
				BSF				PORTE,1					; E=1
				BCF				PORTE,1					; E=0
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ADDRESS_2
				BCF				PORTC,0				; RS =0
				BCF				PORTE,1					; E = 0
				MOVLW			B'01001001'
				MOVWF			PORTB
				CALL				TIMER_3MS
				BSF				PORTE,1					; E=1
				BCF				PORTE,1					; E=0
				RETURN

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

PAGE_3
				BCF				PORTC,0				; RS =0
				BCF				PORTE,1					; E = 0
				MOVLW			B'10111011'
				MOVWF			PORTB
				CALL				TIMER_3MS
				BSF				PORTE,1					; E=1
				BCF				PORTE,1					; E=0
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ADDRESS_3
				BCF				PORTC,0				; RS =0
				BCF				PORTE,1					; E = 0
				MOVLW			B'01001000'
				MOVWF			PORTB
				CALL				TIMER_3MS
				BSF				PORTE,1					; E=1
				BCF				PORTE,1					; E=0
				RETURN

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
PAGE_4
				BCF				PORTC,0				; RS =0
				BCF				PORTE,1					; E = 0
				MOVLW			B'10111100'
				MOVWF			PORTB
				CALL				TIMER_3MS
				BSF				PORTE,1					; E=1
				BCF				PORTE,1					; E=0
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ADDRESS_4
				BCF				PORTC,0				; RS =0
				BCF				PORTE,1					; E = 0
				MOVLW			B'01001000'
				MOVWF			PORTB
				CALL				TIMER_3MS
				BSF				PORTE,1					; E=1
				BCF				PORTE,1					; E=0
				RETURN

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
PAGE_5
				BCF				PORTC,0				; RS =0
				BCF				PORTE,1					; E = 0
				MOVLW			B'10111101'
				MOVWF			PORTB
				CALL				TIMER_3MS
				BSF				PORTE,1					; E=1
				BCF				PORTE,1					; E=0
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ADDRESS_5
				BCF				PORTC,0				; RS =0
				BCF				PORTE,1					; E = 0
				MOVLW			B'01001000'
				MOVWF			PORTB
				CALL				TIMER_3MS
				BSF				PORTE,1					; E=1
				BCF				PORTE,1					; E=0
				RETURN

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
PAGE_6
				BCF				PORTC,0				; RS =0
				BCF				PORTE,1					; E = 0
				MOVLW			B'10111110'
				MOVWF			PORTB
				CALL				TIMER_3MS
				BSF				PORTE,1					; E=1
				BCF				PORTE,1					; E=0
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ADDRESS_6
				BCF				PORTC,0				; RS =0
				BCF				PORTE,1					; E = 0
				MOVLW			B'01001010'
				MOVWF			PORTB
				CALL				TIMER_3MS
				BSF				PORTE,1					; E=1
				BCF				PORTE,1					; E=0
				RETURN

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
PAGE_7
				BCF				PORTC,0				; RS =0
				BCF				PORTE,1					; E = 0
				MOVLW			B'10111111'
				MOVWF			PORTB
				CALL				TIMER_3MS
				BSF				PORTE,1					; E=1
				BCF				PORTE,1					; E=0
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ADDRESS_7
				BCF				PORTC,0				; RS =0
				BCF				PORTE,1					; E = 0
				MOVLW			B'01001000'
				MOVWF			PORTB
				CALL				TIMER_3MS
				BSF				PORTE,1					; E=1
				BCF				PORTE,1					; E=0
				RETURN

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DATA_LETTER
				BSF				PORTC,0				; RS =1
				BCF				PORTE,1					; E = 0
				MOVWF			PORTB
				CALL				TIMER_1MS
				BSF				PORTE,1					; E=1
				BCF				PORTE,1					; E=0
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
TIMER
				MOVLW			.170
				MOVWF			CON1
N1
				MOVLW			.120
				MOVWF			CON2
N2
				DECFSZ			CON2,1
				GOTO			N2
				DECFSZ			CON1,1
				GOTO			N1
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
TIMER_3MS
				MOVLW			.20
				MOVWF			CON1
N3
				MOVLW			.10
				MOVWF			CON2
N4
				DECFSZ			CON2,1
				GOTO			N4
				DECFSZ			CON1,1
				GOTO			N3
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
TIMER_1MS
				MOVLW			.10
				MOVWF			CON1
N5
				MOVLW			.6
				MOVWF			CON2
N6
				DECFSZ			CON2,1
				GOTO			N6
				DECFSZ			CON1,1
				GOTO			N5
				RETURN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
END 
