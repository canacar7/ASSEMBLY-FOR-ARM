atama1			EQU 	0XA0A0F0F0          	;odev icin verilen deger
iteration		EQU		16						;memory ye 16 cycle da kaydedebilcegimiz icin verilen deger
adress			EQU		0x20000400				;soruda verilen ilk adress
aranan_eleman 	EQU		0XA5					;aramak istedigim deger

			AREA MYCODE,CODE		
				ALIGN
				ENTRY
				EXPORT __main
__main
				LDR			R0,=iteration		;R0 registirana iterationa atadim
				LDR			R1,=adress
				LDR 		R10,=atama1
				ADD			R7,R0,R0     		;r7 = r0 + r0
				ADD			R3,R7,R1
				MOV			R2,R10, LSR #16	    ;0X0000A0A0	   
				MOV			R5,R10, LSL #16		;0XF0F00000
			    MOV			R4,R5,	LSR	#16		;0X0000F0F0
			
			
				
L1				STRH		R2,[R1]				;STRH halfwors biçimde memory e kayit islemi yapar, adress R1 e R2 degerinin en anlamli 2 byte ni kaydetti
				STRH		R4,[R3]				;R3 adresine r4 ün en anlamli 4 biti kaydedildi	
				ADD			R1,R1,#2			;memory de 400 ile baslayan adrese 16 bitlik degerleri yazdirdigimizdan dolayi adres 2 artirildi.
				ADD			R3,R3,#2			;memory de 420 ile baslayan adrese 16 bitlik degerleri yazdirdigimizdan dolayi adres 2 artirildi.
				ADD			R2,R2,#1			;soruda istenilen degeri birer birer arirarak hafizaya kaydetmemizdi, A0A0----- A1A0 olur
				ADD			R4,R4,#1			;soruda istenilen degeri birer birer arirarak hafizaya kaydetmemizdi, F0F0----- F1A0 olur
				SUBS		R0,R0,#1   			;16 cycle icin donguyu her adimda 1 azaltmasi icin ve R0 degeri 0 oldugunda bayrak ile cikis saglamak icin SUBS kullanildi
				BNE			L1					;bayrak aktiflestiginde dongu den cikiyor

;LINEAR SEARCH
				LDR			R0,=iteration		
				LDR			R1,=adress
				MOV			R9,#0				;R9 a baslangic degeri atadik
				LDR			R8,=aranan_eleman	
				
				
L2		
				CMP			R8,R6				;CMP komutu R8 ve R6 arasinda karsilastirma yapar
				BEQ			next				;Eger R8,R6 esit olursa donguden next ile ciksin 
				LDRB 		R6 ,[R1,R9]			;LDRB komutu R1 adresine R9 ofset i kadar gider ve o adresdeki degerini R6 ya atar
				ADD 		R9, R9,#1			
				B			L2
next
				MOV 		R12,R9				;R9 sayisi hangi kosulda saglanir ise biz R12 register ina atamamizi yapdi	
				END
					
					

