 Bacteria bob;   
 int x = 0;
 int y = 300;

 void setup()   
 {     
	size(600,600);
 }   
 
 void draw()   
 {  
 	background(0); 
 	for (x = 0; x < 600; x += 20)
 	{	
 		bob = new Bacteria(x,y);
 		bob.show(); 
 		bob.move();
 	}
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
 		x = x +(int)(Math.random()*3-1.5);
 		y = y +(int)(Math.random()*3-1.5);
 	}

 	void show()
 	{
 		fill(0,bacteriaColor,0);
 		ellipse(bacteriaX, bacteriaY, 10, 10);
 	}
 }    