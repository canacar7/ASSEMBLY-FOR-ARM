	AREA myCode, CODE
	ENTRY
	EXPORT __main
__main


	MOV r0,#4
	MOV r1,#3
	MOV r2,#6
	CMP r0,#5     ;  if(r != 5)
	BEQ BYPASS 	  ; {                   
	ADD r1,r1,r0  ;	  r1 = r1 + r0;
	SUB r1,r1,r2  ;   r1 = r1 - r2;
BYPASS            ; }
	
	END
	
;--assembly de if blogu c diline göre tam ters iliski vardir.