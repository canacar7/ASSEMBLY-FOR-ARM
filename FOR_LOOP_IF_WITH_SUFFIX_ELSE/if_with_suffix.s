	AREA myCode, CODE
	ENTRY
	EXPORT __main
__main


	MOV r0,#4
	MOV r1,#3
	MOV r2,#6
	CMP r0,#5     ;  if(r0 != 5) {                
	ADDNE r1,r1,r0  ;	  r1 = r1 + r0;
	SUBNE r1,r1,r2  ;   r1 = r1 - r2 }
	
	END
	
	;arm assembly sinin güzel yanlarindan biri ADDNE gibi if boklarini oldukca rahat tanimlamamiza izin vermesidir
	;ADDNE ve SUBNE r0 esit degilken 5 e caliscaktir ''NE(NOT EGUAL) anlami katmaktadir''
	;ADD komutu flaglari degistirmiceginden SUB komutununcalismasina da engel olmaz Ayni zamanda SUB komutuda degistirmez
	;flag lerin degismesi komutun sonuna s yazilmasi ile veya bir compera eklenmesi ile degisir
	
