		AREA MYCODE, CODE
			ALIGN
			ENTRY
			EXPORT __main
__main
	
			LDR		R0,=0X20000040  	;R0 a atama gerceklestirdim
			PUSH{R0}					;stack adresine goturdum, stack adresine R0 i kaydettim
			LDR		R0,=0X20000555		;R0 A stack icerisinde yeni bir deger atadim
			POP{R0}						;POP ile stack den ciktim ve R0 in degeri yine basda tanimladigim 0x20000040 olur
			
loop 		B		loop
			END