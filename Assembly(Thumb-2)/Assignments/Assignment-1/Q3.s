;Q3. Write a program to do 32- bit signed additions and 32 bit signed subtraction and 
;    take care if there are overflows.

	AREA MYCODE,CODE,READONLY
	ENTRY
	EXPORT start
		
start PROC

;NUMBER 1(32-BIT): 0x6666 6666
;NUMBER 2(32-BIT): 0x4444 4444
	
	  MOV R0,#0x66666666
	  MOV R1,#0x44444444
	
	  ADDS R2, R0, R1
	  BVS ADD_OVERFLOW    ; Branch if overflow occurs
	
	  SUBS R3, R0, R1
	  BVS SUB_OVERFLOW    ; Branch if overflow occurs

	  B DONE


ADD_OVERFLOW			   ; Handle addition overflow here
        
        MOV R4,#1          ; Indicate overflow
        B DONE

SUB_OVERFLOW               ; Handle subtraction overflow here
        
        MOV R5,#1          ; Indicate overflow
        B DONE

DONE
	  B .
	
	  ENDP	
	  END
	