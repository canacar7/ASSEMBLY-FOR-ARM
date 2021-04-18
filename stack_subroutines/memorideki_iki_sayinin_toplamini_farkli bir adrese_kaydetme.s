;hafizada kayitli iki sayiyi toplayan ve farkli bir adrese kaydeden; nunlari yaparken toplamin elde bitini kontrol edecek bir program	
			
			AREA MYCODE, CODE
				ALIGN
				ENTRY
				EXPORT __main
__main			
				LDR		R0,=0X20000040
				BFC		R2,#0 , #32			;R2 register inin bitlerini temizledim
				BFC		R3,#0 , #32			;R3 register inin bitlerini temizledim
				LDR		R1,[R0] , #4		;R0 DAN kac sayi toplanacak degerini aldik sonra adresi 4 byte ilerlettik
				LDR		R2,[R0] , #4		;R2 ilk toplanacak ifade yine 4 byte kaydirdim
				SUBS	R1,#1			
				BEQ		exit
			
toplama			LDR 	R4,[R0] , #4     	;R4 e ikinci toplanacak sayiyi ekledim
				ADDS	R2,R4				;R2 ye R4 eklendi
				BCC 	elde				;Bits Caary Clear bitine bakiyoruz eger elde varsa
				ADD		R3,#1				;elde bitini 1 artiralim
elde			SUBS	R1,#1
				BEQ		exit
				B		toplama
				
exit			LDR     R0,=0X20001000		;toplanmis veriyi yeni adrese kaydedecez
				STRD	R2,R3,[R0]	
		
l				B		l

				END
					