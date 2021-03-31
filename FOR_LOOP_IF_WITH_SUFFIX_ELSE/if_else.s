	AREA myCode, CODE
	ENTRY
	EXPORT __main
__main


	MOV R0,#4
	MOV R1,#3
	MOV R2,#6
	CMP R0,#5       ;  if(r0 != 5) {                
	ADDNE R1,R1,R0  ;	  r1 = r1 + r0;
	SUBNE R1,R1,R2  ;     r1 = r1 - r2 }
	ADDEQ R3,R1,R1  ;  else
				    ; 	  r3 = r1 + r1;
	
	END
	
	
	
