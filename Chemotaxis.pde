
void setup()   
 {     
 	//initialize bacteria variables here   
 	size(400,400);
 	

 }   
 void draw()   
 {    
 	//move and show the bacteria   
 	bob = new Bacteria(200,200);
 	bob.show();
 }  
 class Bacteria    
 {     
 	int bacX; int bacY;//int bacSize; 
 	Bacteria(int x, int y)
 	{
 		bacX = x;
 		bacY = y;
 		//int bacSize = 7;
 	}
 	void show()
 	{
 		bacSize++;
 		if (bacSize>10)
 		{
 			bacSize--;
 		}
 		if (bacSize<7)
 		{
 			bacSize++;
 		}

 		noStroke;
 		ellipse(bacX,bacY,7,7);
 	}
 }    
