ORG 000H    
MOV P0, #00000000B
MOV P2, #00000000B

// SENSORS - P0 
// MOTORS  - P2  
 
MAIN: 
SETB P2.0
SETB P2.1

JB P0.0, RIGHT   
JB P0.1, LEFT   
SJMP MAIN

LEFT:    
    SETB P2.0         
    CLR P2.1          
    ACALL WAIT2       
    SJMP MAIN         	
RIGHT: 
	CLR P2.0           
    SETB P2.1          
    ACALL WAIT1        
    SJMP MAIN          

STOP:
	CLR P2.0
	CLR P2.1
	ACALL WAIT2
	ACALL WAIT1
	SJMP MAIN
	
WAIT1:
	JB P0.1, STOP
	JB P0.0, WAIT1      
    RET                 
WAIT2:
	JB P0.0, STOP
    JB P0.1, WAIT2     
    RET   
END                       