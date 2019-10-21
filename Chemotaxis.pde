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
 	fill(255, 255, 0);
 	ellipse(mouseX, mouseY, 40, 40);
 	fill(0);
 	ellipse(mouseX-10, mouseY-10, 8, 8);
 	ellipse(mouseX+10, mouseY-10, 8, 8);
 	noFill();
 	strokeWeight(5);
 	arc(mouseX, mouseY, 30, 30, 0.5, PI-0.5);
 	strokeWeight(1);
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
 			x+=(int)(Math.random()*8)-2;
 		else
 			x+=(int)(Math.random()*8)-5;
 		if(mouseY>y)
 			y+=(int)(Math.random()*8)-2;
 		else
 			y+=(int)(Math.random()*8)-5;
 	}
 	void show(){
 		fill(255, 0, 0);
 		ellipse(x , y, 40, 40);
 		fill(0);
 		ellipse(x-10, y-10, 8, 8);
 		ellipse(x+10, y-10, 8, 8);
 		noFill();
 		strokeWeight(5);
 		arc(x, y+20, 30, 30, PI+0.5, 2*PI-0.5);
 		strokeWeight(1);
 	}
}