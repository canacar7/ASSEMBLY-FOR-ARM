	AREA myCode, CODE
	ENTRY
	EXPORT __main
__main
	
	mov r0,#0     ;for(r0=0;r0<10;r0++)
loop
	add r0,r0,#1  ; r0++
	cmp r0,#10
	bne loop      ;10 oldugunda program loop a gitmez alt satira iner ve prograi sonlandirir
	
	BX R14 ; return
	ALIGN
	END
		
