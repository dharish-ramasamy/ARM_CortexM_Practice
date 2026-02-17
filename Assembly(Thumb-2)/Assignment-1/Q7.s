;Q7. Write a program to store a string and convert from lowercase to uppercase

DATASEG EQU 0x20001000

	AREA MYDATA,CODE,READONLY

STRING	DCB	"hello",0

	AREA MYCODE,CODE,READONLY
	ENTRY
	EXPORT start
		
start PROC
	
	  LDR R0,=STRING     ;INTIAL STRING VALUES ARE AT 0x080001F0
	  LDR R6,=DATASEG
loop
	
	 LDRB R1, [R0]
	 CMP R1, #0
	 BEQ done
	 
	 AND R4, R1, #0xDF
	 STRB R4, [R6], #1   
	 ADD R0, R0, #1		;FINAL STRING VALUES ARE AT 0x20001000
	 B loop
	 
done B done

	 ENDP
	 END