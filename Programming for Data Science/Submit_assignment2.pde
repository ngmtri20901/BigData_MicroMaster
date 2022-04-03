size(600, 600);
int bar1=135;
int bar2=283;
int bar3=467;
int bar4=320;
int bar5=169;
int bar6=243;
int bar7=341;
int bar8=385;
int bar9=415;
int bar10=184;
int sum=bar1+bar2+bar3+bar4+bar5+bar6+bar7+bar8+bar9+bar10;
float mean=sum/10.0;
//grid
int gridW=40;
for (int x = 0; x < width-2*gridW; x+=gridW) {
  for (int y = 0; y < height-2*gridW; y+=gridW) {
    strokeWeight(3);
    stroke(141, 145, 153);
    noFill();
    rect(x+gridW, y+gridW,gridW,gridW); 
  }
} 
stroke(0);
line(gridW,width-(gridW/2),gridW,0);
line(gridW/2,width-gridW,width,width-gridW);
//bar
int k=12;
   fill(k,36, 173);
   rect(gridW,(height-2*gridW),bar1,gridW);  
   fill(2*k,36, 173);
   rect(gridW,(height-2*gridW)-gridW,bar2,gridW);
   fill(3*k,36, 173);
   rect(gridW,(height-2*gridW)-2*gridW,bar3,gridW);
   fill(4*k,36, 173);
   rect(gridW,(height-2*gridW)-3*gridW,bar4,gridW);
   fill(5*k,36, 173);
   rect(gridW,(height-2*gridW)-4*gridW,bar5,gridW);
   fill(6*k,36, 173);
   rect(gridW,(height-2*gridW)-5*gridW,bar6,gridW);
   fill(7*k,36, 173);
   rect(gridW,(height-2*gridW)-6*gridW,bar7,gridW);
   fill(8*k,36, 173);
   rect(gridW,(height-2*gridW)-7*gridW,bar8,gridW);
   fill(9*k,36, 173);
   rect(gridW,(height-2*gridW)-8*gridW,bar9,gridW);
   fill(10*k,36, 173);
   rect(gridW,(height-2*gridW)-9*gridW,bar10,gridW);
//mean_line
stroke(140,24,24);
line(gridW+mean,gridW,gridW+mean,height-gridW);
