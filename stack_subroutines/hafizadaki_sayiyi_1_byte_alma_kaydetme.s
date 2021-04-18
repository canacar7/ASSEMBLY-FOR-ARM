		
		AREA MYCODE, CODE
			ALIGN
			ENTRY
			EXPORT __main
__main
	
			LDR 	R0, =0X20000040
			LDRB 	R1,[R0]				;hafizada kayitli sayinin en anlamsiz 1 byte ni R1 e atadik
			BFC	R1, #4, #4 		        ;R1 de bulunan degerinin en anlamsiz 4 bitine ulastik BFC 4. bitten 8. bite kadar anlamli bitleri sildi
			STRB	R1,[R0,#4]			;memory de kaydecegimiz yeri tanimladik R0 + 4
			
			LDRB	R1,[R0]				;hafizada kayitli sayinin en anlamsiz 1 byte ni R1 e atadik
			LSR	R1,R1,#4			;degeri 4 bit saga kaydirdik ve en anlamli 4 bitine ulastik
			STRB	R1,[R0,#5]			;memory de kaydecegimiz yeri tanimladik R0 + 5
		
loop 			B		loop
			END
