	AREA myCode, CODE
	ENTRY
	EXPORT __main
__main
	
	MOV R0,#0XF3 ;atama yapmak icin
	MOV R1,#2
	ADD R2,R0,R1 ;toplama islemi yaptirir
	
	BX R14 ; return
	ALIGN
	END
		
