		AREA MYCODE, CODE
			ALIGN
			ENTRY
			EXPORT __main
__main
	
			LDR		R0,=0X20000030  	;R0 a atama gerceklestirdim
			LDR		R1,=0X20000004 
			PUSH{R0,R1}					;stack adresine gittim bu sefer r1 ve r0 i kaydedicem
			LDR		R0,=0X20000555		;R0 A stack icerisinde yeni bir deger atadim
			POP{R0,R1}					
			
loop 		B		loop
			END