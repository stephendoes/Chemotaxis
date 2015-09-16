 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(400,400);
 	frameRate(10);

 } 
 Bacteria [] colony =
 {new Bacteria(), new Bacteria() };
 
 Bacteria one = new Bacteria(200,200);
 void draw()   
 {    
 	//move and show the bacteria   
 	background(0);
 	
 	one.walk();
 	one.show();
 }  
 class Bacteria    
 {     
 	//lots of java!
 	int bX ; int bY; int bC;int bC2;int bC3;    
 	Bacteria(int x,int y)
 	{
 		bX = x;
 		bY = y;
 		bC = (int)(Math.random()*255);
 		bC2 = (int)(Math.random()*255);
 		bC3= (int)(Math.random()*255);
 	}
 	void walk()
 	{
 		int direction = (int)(Math.random()*4);

 		if (direction == 0)
 		{
 			bX = bX + 20;
 		}
	 		else if (direction == 1)
	 		{
	 			bX = bX - 20;
	 		}
		 		else if (direction == 2)
		 		{
		 			bY = bY + 20;
		 		}
			 		else if (direction == 3)
			 		{
			 			bY = bY - 20;
			 		}

 		if (bY>390)
 		{
 			bY = bY - 20;

 		}
	 	if (bY<20)
	 	{
	 		bY = bY +20;
	 	}
	 	if (bX>390)
 		{
 			bX = bX - 20;
 		}
	 	if (bX<20)
	 	{
	 		bX = bX + 20;
	 	}


 		
 		
 	}
 	void show()
 	{
 	fill(bC,bC2,bC3);
 	ellipse(bX,bY,30,30);
 	}
 }    
