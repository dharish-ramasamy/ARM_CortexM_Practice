;Q5.  Write a program to call two separate subroutines for doing signed 32 bit additions & 
;     subtraction. Initially load the parameters in registers R0 and R1 before calling subroutine, in 
;     subroutines store the result in general purpose register.

	AREA MYCODE, CODE, READONLY
	ENTRY
	EXPORT start
		
start PROC
	 
;NUMBER1 (32 BIT) = 0x 6666 6666
;NUMBER2 (32 BIT) = 0x 8888 8888

	   MOV R0, # 0xFFFFFFD8   ; -40
	   MOV R1, # 0xFFFFFFB0   ; -80
	   
	   BL subroutine1
	   
	   BL subroutine2
	   
	   B .
	   
subroutine1

	   ADD R2, R1, R0
	   MOV PC, LR

subroutine2

	   SUB R3, R0, R1
	   MOV PC, LR
	   
	   
	   ENDP
	   END
 