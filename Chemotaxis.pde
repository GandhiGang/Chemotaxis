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
 }  
 class Mover    
 {     
 	int x, y, col;
 	Mover(){
 		x = 250;
 		y = 250;
 		col = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 	}
 	void move(){
 		x+=(int)(Math.random()*5)-2;
 		y+=(int)(Math.random()*5)-2;
 	}
 	void show(){
 		fill(col);
 		ellipse(x, y, 40, 40);
 		fill(0);
 		ellipse(x-10, y-7, 8, 8);
 		ellipse(x+10, y-7, 8, 8);
 		noFill();
 		arc(x, y+5, 20, 20, 0.5, PI-0.5);
 	}
 }    