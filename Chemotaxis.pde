 //declare bacteria variables here   
 Bacteria [] annie;
 void setup()   
 {     
   size(400,400);
   background(255);
 	annie = new Bacteria[45];
 for (int i = 0; i < annie.length; i++)
 {
   annie[i] = new Bacteria();
 }
 }   
 void draw()   
 {    
    background(255);
 	for(int i = 0; i < annie.length; i++)
 {
   annie[i].show();
   annie[i].move();

 }
//noStroke();
//fill(229, 190, 176);
//ellipse(mouseX,mouseY,20,20);
 }  
 class Bacteria    
 {     
 	//lots of java!   
 int x,y,r,g,b, myColor;
 Bacteria() {
   x = (int)(Math.random()*400);
   y = (int)(Math.random()*400);
   r = (int)(Math.random()*250 + 100);
   g = (int)(Math.random()*250 + 100);
   b= (int)(Math.random()*250 + 100); 
   myColor = color(210);
 }
 void move () {
 x = x + (int)(Math.random() *3) -1;
 y = y + (int)(Math.random() *3) -1;
 if (x >= 400)
 x = 399;
 if (x<= 0)
 x =1;
 if (y>=400)
 y= 399;
 if (y<= 0)
 y =1;
 }
 void show() {
   noStroke();
 fill(myColor);
 ellipse(x,y,20,20);
 
 //if ((get(mouseX,mouseY)) != color(255))
 if(dist(x,y,mouseX,mouseY) < 10)
   myColor = color(r,g,b);
 }
 }