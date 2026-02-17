;Q6.  Write a program to add, subtract, multiply, divide two 32 bit numbers stored in the memory

	AREA MYCODE, CODE, READONLY
	ENTRY
	EXPORT start
		
start PROC
	 
;NUMBER1 (32 BIT) = 0x 3333 3333 
;NUMBER2 (32 BIT) = 0x 6666 6666

	   MOV R0, # 0x33333333
	   MOV R1, # 0x66666666
	   
	   ADD R2, R1, R0

	   SUB R3, R1, R0
	   
	   MUL R4, R1, R0
	   
	   SDIV R5, R1, R0
	   
	   B .
	  
	   ENDP
	   END
 