		
		
		AREA MYCODE, CODE
			ALIGN
			ENTRY
			EXPORT  mean_calc
				
mean_calc 		PROC
			PUSH {R0,R1,R3,R4}
			ADD	  R0,R0,R1
			ADD	  R0,R0,R3
			ADDS  R0,R0,R4   
			MOV	  R2,R0
			
			RRXS  R2
			RRXS  R2
				


			POP  {R0,R1,R3,R4}
			MOV   PC ,LR
			ENDP
				