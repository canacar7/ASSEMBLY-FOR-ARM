
num0  			EQU 0x40000004   
num1  			EQU 0x40000002
num2	  		EQU 0x3FFFFFFE
num3	 		EQU 0x3FFFFFFC
adress0		 	EQU	0X20000040	
adress1		 	EQU	0X20000060

	
		AREA MYCODE, CODE
			ALIGN
			ENTRY
			EXPORT __main
			EXTERN  mean_calc
__main
			LDR 	R0, = num0
			LDR 	R1, = num1
			LDR 	R3, = num2
			LDR 	R4, = num3
			LDR		R5, = adress0
			LDR		R6, = adress1
			MOV  	R7,#0
			STR 	R0,[R5,R7]
			ADD		R7,R7,#4
			STR 	R1,[R5,R6]
			ADD		R7,R7,#4
			STR 	R3,[R5,R6]
			ADD		R7,R7,#4
			STR 	R4,[R5,R7]
			BL 		mean_calc
			SUB		R0,R0,R2
			SUB 	R1,R1,R2
			SUB		R3,R3,R2
			SUB		R4,R4,R2
			
			MOV		R7,#0
			
			STR		R0,[R6,R7]
			ADD		R7,R7,#4
			STR		R1,[R6,R7]
			ADD		R7,R7,#4
			STR		R3,[R6,R7]
			ADD		R7,R7,#4
			STR		R4,[R6,R7]
			
			
				
loop 		B		loop
			END	
				
				
				
			