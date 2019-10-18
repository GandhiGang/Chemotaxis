 Mover [] faces; 
 void setup()   
 {     
 	size(500,500);
 	background(255);
 	strokeWeight(3);
 	faces = new Mover[10];
 	for(int i = 0; i < faces.length; i++)
 		faces[i] = new Mover();   
 }   
 void draw()   
 {    
 	background(255);
 	for(int i = 0; i<faces.length; i++){
 		faces[i].move();
 		faces[i].show();
 	}
 	ellipse(mouseX, mouseY, 40, 40);
 }  
 class Mover    
 {     
 	int x, y, col;
 	Mover(){
 		x = (int)(Math.random()*500);
 		y = (int)(Math.random()*500);
 		col = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 	}
 	void move(){
 		if(mouseX>x)
 			x+=(int)(Math.random()*5);
 		else
 			x-=(int)(Math.random()*5);
 		if(mouseY>y)
 			y+=(int)(Math.random()*5);
 		else
 			y-=(int)(Math.random()*5);
 	}
 	void show(){
 		ellipse(x , y, 40, 40);
 	}
}