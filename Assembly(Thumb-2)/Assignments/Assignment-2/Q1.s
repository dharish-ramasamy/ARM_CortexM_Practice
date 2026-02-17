;Q1. Push the contents of registers R0-R5, R14 and PSR on the stack and 
;    pop them back into the registers R7-R12, R14 and PSR respectively. 
	
        AREA MYCODE, CODE, READONLY
        ENTRY
        EXPORT start

        THUMB

start   PROC
       
        MOVS    R0, #11
        MOVS    R1, #22
        MOVS    R2, #33
        MOVS    R3, #44
        MOVS    R4, #55
        MOVS    R5, #66
        MOVS    R14, #77         


        PUSH    {R0-R5, R14}

 
        MRS     R6, xPSR
        PUSH    {R6}

        POP     {R6}
        MSR     APSR_nzcvq, R6  

        POP     {R0-R5, R14}

        MOV     R7, R0
        MOV     R8, R1
        MOV     R9, R2
        MOV     R10, R3
        MOV     R11, R4
        MOV     R12, R5


done
        B       done           
        ENDP
        END