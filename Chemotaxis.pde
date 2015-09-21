 //declare bacteria variables here   
 Bacteria [] colony;
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(400,400);
 	frameRate(10);
	colony = new Bacteria[100];
 	for (int i = 0; i<colony.length; i++)
 	{
 		colony[i] = new Bacteria(400,400);
 	}

 } 
 void draw()   
 {    
 	//move and show the bacteria   
 	background(0);
 	for(int i = 0; i<colony.length; i++)
  	{
    	colony[i].walk();
    	colony[i].show();
  	}  
 	
 }  
 class Bacteria    
 {     
 	//lots of java!
 	int bX ; int bY; int bC;int bC2;int bC3; int armSize; int bI; int bI2; int bI3;
 	Bacteria(int x,int y)
 	{
 		bX = x;
 		bY = y;
 		bC = (int)(Math.random()*255);
 		bC2 = (int)(Math.random()*255);
 		bC3= (int)(Math.random()*255);
 		bI = (int)(Math.random()*255);
 		bI2 = (int)(Math.random()*255);
 		bI3 = (int)(Math.random()*255);
 		armSize = 6;
 	}

 	void walk()
 	{
 		int direction = (int)(Math.random()*8);

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
			else if (direction == 4)
			{
				bX = bX + 20;
			 	bY = bY + 20;
			}
			else if (direction == 5) 	
			{
				bX = bX - 20;
			 	bY = bY + 20;
			}
			else if (direction == 6)
			{
				bX = bX + 20;
			 	bY = bY - 20;
			}	
			else if (direction == 7)
			{
				bX = bX - 20;
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

	armSize++;
 	
 	if (armSize > 12)
 	{
 		armSize= 4;
 	}
	
 		
 	}
 	void show()
 	{
 	fill(bC,bC2,bC3);
 	ellipse(bX,bY,20,20);
 	fill(bI, bI2, bI3);
 	ellipse(bX - 5, bY -5, armSize,armSize);
 	ellipse(bX + 5, bY +5, armSize,armSize);
 	ellipse(bX + 5, bY -5, armSize,armSize);
 	ellipse(bX - 5, bY +5, armSize,armSize);
 	}
 	
 }    
	}
