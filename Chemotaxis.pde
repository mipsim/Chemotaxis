 Bacteria [] colony = new Bacteria[100];
 int x = 300;
 int y = 300;

 void setup()   
 {     
	size(600,600);
	for (int i=0; i<colony.length;i++)
	{
		colony[i] = new Bacteria(i);
	}
 }   
 
 void draw()   
 {  
 	background(0,0,50); 
 	for (int i=0; i<colony.length;i++)
	{
		colony[i].move();
		colony[i].show();
	}
 }  
 
 class Bacteria    
 {     
 	int bacteriaX, bacteriaY, bacteriaColor;
 	Bacteria (int arg)
 	{
 		bacteriaX = x;
 		bacteriaY = y;
 		bacteriaColor = (int)(Math.random()*131)+75;
 	}   
 	
 	void move()
 	{
 		bacteriaX = bacteriaX + (int)(Math.random()*5-2.5);
 		bacteriaY = bacteriaY + (int)(Math.random()*5-2.5);
 	}

 	void show()
 	{
 		fill(200,bacteriaColor,0);
 		ellipse(bacteriaX, bacteriaY, 10, 10);
 	}
 }    