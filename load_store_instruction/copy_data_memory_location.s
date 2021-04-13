RAM1_ADDR		EQU		0x20000000
RAM2_ADDR		EQU		0x20000100


					AREA	myCode, CODE,READONLY
					ENTRY
					EXPORT	__main

__main
					BL		FILL
					BL		COPY
					
Stop					B		 Stop
				
				

FILL		   			LDR		R1,= RAM1_ADDR       		    ;r1 ram_adrr yi atadim
					MOV		R0,#10                              ;dongunun 10 kez tekrarlanmasi icin sabit
					LDR		R2,=0xDEEDBEEF                      ;R2 ye sabit atadim 
					                                            
L1					STR		R2,[R1]                             ;R2 degeri r1 adresine kaydedilcek
					ADD		R1,R1,#4                            ;R2 bellekde4 bitlik yer kapladi sonraki kaydedisde ustune yazmamasi iicn adresi 4 artirdim
					SUBS		R0,R0,#1                            ;dongunun 10 kez tekrari icin
					BNE		L1                                  ;dongunu sonlamasi icin
					BX		LR                                  ;ana fonk da yaptimiz dallanmadan cikabilmek icin kullancaz
					
COPY					LDR		R1,=RAM1_ADDR
					LDR		R2,=RAM2_ADDR
					MOV		R0,#10

L2					LDR 		R3,[R1]										
					STR		R3,[R2]				     ;R1=R3 onu bellekde r2 adressne aticam
					ADD		R1,R1,#4
					ADD		R2,R2,#4
					SUBS		R0,R0,#1
					BNE		L2
					BX		LR
					
					END
						
						
						
						
