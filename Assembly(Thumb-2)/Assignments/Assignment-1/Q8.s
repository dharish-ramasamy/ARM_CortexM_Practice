;Q8. Write a program to reverse the bytes of word and store into other two registers. 
;    i.e R0=0x12345678 have to stored as 0x78560000 into R1 and 0x00002143 into R2.

	AREA MYCODE, CODE, READONLY
	ENTRY
	EXPORT start

start PROC
      
	  LDR R0, = 0x12345678
	  REV R0, R0
	  
	  LDR R1, = 0xFFFF0000
	  AND R1, R0
	  
	  LDR R2, = 0x0000FFFF
	  AND R2, R0
	  
	  B .
	  
	  ENDP
	  END
	  