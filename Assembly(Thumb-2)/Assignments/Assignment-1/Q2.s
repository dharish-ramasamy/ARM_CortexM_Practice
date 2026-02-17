; Q2. Write a program to do 64- bit unsigned subtraction using register combination.

	  AREA MYDATA, CODE, READONLY
		  
L1    DCQ 0x9999999999999999
L2 	  DCQ 0x5555555555555555

	  AREA MYCODE, CODE, READONLY
	  ENTRY
	  EXPORT start
		
start PROC
	  
	  LDR R1, = L1
	  LDR R2, [R1], #4
	  LDR R3, [R1]
	  LDR R4, = L2
	  LDR R5, [R4], #4
	  LDR R6, [R4]
	  
	  SUBS R7, R2 , R5
	  SBC R8, R3, R6
	  
	  B .
	  
	  ENDP
	  END