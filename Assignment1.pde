size(500,500);
background(128,18,224);
int x1=width/4;
int x2=2*x1;
int x3=3*x1;
int y1=height/7;
int y2=3*y1;
int y3=4*y1;
int y4=height-(height/7);
strokeWeight(7);
//ellipse
noFill();
stroke(255, 255, 255);
ellipse(x2,y1,80,80);
//triangle
fill(128,18,224);
stroke(252, 8, 195);
triangle(x1,y2,x2,y1,x3,y2);
//ellipse 2
noFill();
stroke(255, 255, 255);
ellipse(x2,y4,80,80);
//rectangle
strokeCap(ROUND);
noFill();
stroke(8, 252, 975);
rect(x1,y3,x3-x1,y4-y3);
