;Q11. Write a program to demonstrate conditional execution using IF- THEN instructions.

	AREA MYCODE, CODE, READONLY
	ENTRY
	EXPORT start
		
start PROC

	  MOV R0, #3          
      CMP R0, #3

	  IT EQ
	  MOVEQ R1,#1

	  IT NE
	  MOVNE R1,#0

	  B . 
	  ENDP
	  END