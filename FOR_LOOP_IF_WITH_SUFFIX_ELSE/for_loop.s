	AREA myCode, CODE
		ENTRY
		EXPORT __main

__main

	MOV r0,#0    ; for(r0=0;r0<10;r0++)
loop
	cmp r0,#10
	beq exit	 ;bigger equal 
	add r0,r0,#1 ;ro++
	b loop 
	
exit	
	

END
	
