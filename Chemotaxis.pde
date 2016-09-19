 Bacteria bob;   
 int x = 300;
 int y = 300;

 void setup()   
 {     
	size(600,600);
 }   
 
 void draw()   
 {  
 	background(0); 
 	bob = new Bacteria(x,y);
 	bob.show(); 
 	x = x +(int)(Math.random()*10-5);
 	y = y +(int)(Math.random()*10-5);
 }  
 
 class Bacteria    
 {     
 	int bacteriaX, bacteriaY, bacteriaColor;
 	Bacteria (int x, int y)
 	{
 		bacteriaX = x;
 		bacteriaY = y;
 		bacteriaColor = (int)(Math.random()*226)+30;
 	}   
 	
 	void move()
 	{
 		
 	}

 	void show()
 	{
 		fill(0,bacteriaColor,0);
 		ellipse(bacteriaX, bacteriaY, 10, 10);
 	}
 }    