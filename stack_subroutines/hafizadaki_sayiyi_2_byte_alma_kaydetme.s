		
		AREA MYCODE, CODE
			ALIGN
			ENTRY
			EXPORT __main
__main
	
			LDR 	R0, =0X20000040
			LDRH 	R1,[R0]				;hafizada kayitli sayinin en anlamsiz 2 byte ni R1 e atadik	
			STRH	R1,[R0,#4]			;memory de kaydecegimiz yeri tanimladik R0 + 4
			
			LDRH	R1,[R0,#2]			;hafizada kayitli sayinin en anlamli 2 byte ni R1 e atadik
			STRH	R1,[R0,#6]			;memory de kaydecegimiz yeri tanimladik R0 + 6
		
loop 		B		loop
			END