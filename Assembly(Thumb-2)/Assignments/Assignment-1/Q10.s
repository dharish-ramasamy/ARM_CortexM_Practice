;Q10. Write a program to set 7th bit of memory location 0x20000000 to 1 (make use of alias region address)

	AREA MYCODE, CODE, READONLY
	ENTRY
	EXPORT start
		
start PROC

      MOV R0, #0x20000000           
    
      LDRB R1, [R0]                 
    
      MOV R2, R1                   
    
      ORR R1, R1, #0x80             

      STRB R1, [R0]                
    
      MOV R3, #0x1                  
      STR R3, [R0, #4]             
	  
	  B . 
	  
	  ENDP
	  END