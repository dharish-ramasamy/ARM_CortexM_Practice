;Q9. Write a program to drive the thread mode into unprivileged access level with PSP acting as SP 
;    and repeat Q1 problem statement. 

	AREA MYCODE, CODE, READONLY
	ENTRY
	EXPORT start
		
start PROC

	  MOV R0, #3
	  MSR CONTROL, R0


L1    DCQ 0x6666666666666666
L2    DCQ 0x2222222222222222
	  
	  LDR R1, = L1
	  LDR R2, [R1], #4
	  LDR R3, [R1]
	  LDR R4, = L2
	  LDR R5, [R4], #4
	  LDR R6, [R4]
	  
	  ADDS R7, R2 , R5
	  ADC R8, R3, R6
	  
	  
	  B .
	  
	  ENDP
	  END