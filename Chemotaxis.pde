 Bacteria [] colony = new Bacteria[1000];
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
	fill(255);
	ellipse(mouseX,mouseY,25,25);


 }  
 
 class Bacteria    
 {     
 	int bacteriaX, bacteriaY, bacteriaColor;
 	Bacteria (int arg)
 	{
 		bacteriaX = x;
 		bacteriaY = y;
 		bacteriaColor = (int)(Math.random()*126)+100;
 	}   
 	
 	void move()
 	{
 		if (bacteriaX < 0)
		{
			bacteriaX = 600;
		}
		else if (bacteriaX > 600)
		{
			bacteriaX = 0;
		}
		if (bacteriaY < 0)
		{
			bacteriaY = 600;
		}
		else if (bacteriaY > 600)
		{
			bacteriaY = 0;
		}
 		bacteriaX = bacteriaX + (int)(Math.random()*10-5);
 		bacteriaY = bacteriaY + (int)(Math.random()*10-5);
 	}

 	void show()
 	{
 		noStroke();
 		fill(100,bacteriaColor,0);
 		ellipse(bacteriaX, bacteriaY, 10, 10);
 	}
 }    