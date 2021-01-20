ORG 000H
CLR P2.0  // Motor 1
CLR P2.1  // Motor 2
CLR P2.2  // Motor 3
CLR P2.3  // Motor 4

CLR P0.0   // Left - p2.6
CLR P0.1   // Right - p2.7

FORWARD:
SETB P2.1
SETB P2.2
SJMP CHECK

LEFT:


RIGHT:


STOP:

void forward (void)
{
  mot1=0;
	mot2=1;
	mot3=1;
	mot4=0;
}
void backward (void)
{
  mot1=0;
	mot2=1;
	mot3=0;
	mot4=1;
}
void left (void)
{
  mot1=0;
	mot2=1;
	mot3=0;
	mot4=0;
}
void right (void)
{
  mot1=0;
	mot2=0;
	mot3=1;
	mot4=0;
}
void stop (void)
{
  mot1=0;
	mot2=0;
	mot3=0;
	mot4=0;
}



void main()
{
	s_left=1;
	s_right=1;
	while(1)
	{ 
	 if(s_left==0 && s_right==0)
	 {
		 forward();
	 }
	 else if(s_left==1 && s_right==1)
	 {
		 stop();
	 }
	 else if(s_left==0 && s_right==1)
	 {
		 left();
	 }
	 else if(s_left==1 && s_right==0)
	 {
		 right();
	 }
 }
}