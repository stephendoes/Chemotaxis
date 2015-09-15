 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(400,400);
 	frameRate(60);
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 	background(0);
 	Bacteria one = new Bacteria(200,200);
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
 
 	}
 	void show()
 	{
 	fill(bC,bC2,bC3);
 	ellipse(bX,bY,10,10);
 	}
 }    
