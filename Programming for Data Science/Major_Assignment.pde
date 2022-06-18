//Part 1: Design- line 6-10
//Part 2: Data- line 12-16
//Part 3: Analysis- line 94-144
//Part 4: Visualisation- line 62-92

//Part 1- Design---------------------------------
//1. Data is collected from Kaggle.com that represent monthly Covid-19 new cases in Vietnam in 2 years, 2020 and 2021 
//2. Perform 3 functions that calculate the max, min and average of each year
//3. Display data table on the left and 2 line graph on the right to show changes over time of each year
//--------------------------------------------------

//Part 2- Data---------------------------------
int[] cases_2020 = {2, 14, 187, 67, 58, 27, 154, 531, 54, 83, 166, 113};
int[] cases_2021= {325, 651, 162, 320, 4254, 9339, 124615, 308367, 329909, 136205, 308507, 42178};
String[] months = {"JAN", "FEB", "MAR", "APR",  "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"};
//--------------------------------------------------
int blue= #1D3557;
int red= #E63946;

void setup(){
  //canvas
  size(1200,700);
  background(#F1FAEE);
  
  //header
  textAlign(CENTER);
  textSize(28);
  fill(blue);
  text("Monthly Covid-19 cases in Vietnam in 2020 and 2021", width/2,50);
  
//Display data table 
  textSize(18);
  stroke(blue);
  strokeWeight(1.5);
  //Loop for vertical lines
  for (int i=0;i<4;i++){
         line(100+100*i,100,100+100*i,100+40*13);
  }
  //Loop for horizontal lines
  for (int j=0;j<14;j++){
      line(100,100+40*j,100+100*3,100+40*j);
  }
  //Loop for displaying months
  for (int k=0;k<months.length;k++){
    text(months[k],150,165+40*k);
      //displaying months for visualisation
      text(months[k],525+40*k,100+40*6.5);
      text(months[k],525+40*k,100+40*14.5);
  }
  //Loop for displaying 2020 new cases
  for (int m=0;m<cases_2020.length;m++){
    text(cases_2020[m],250,165+40*m);
  }
  //Loop for displaying 2021 new cases
   for (int n=0;n<cases_2021.length;n++){
    text(cases_2021[n],350,165+40*n);
  }
  // Display 2 years label for data table
  text("2020",50+100*2,130);
  text("2021",50+100*3,130);
//--------------------------------------------------

//Part 4- Visualisation---------------------------------
  // Draw 2020 axes 
  line(100+100*3+100,100+40*6,width-200,100+40*6);
  line(100+100*3+100,100+40*6,100+100*3+100,100);  
  //Vertical labels 2020 (0-600)
    for(int x = 0; x <700;x =x+100){
    text(x, 480,(100+40*6)-40*(x/100));
  }
  // Draw 2021 axes 
  line(100+100*3+100,100+40*14,width-200,100+40*14);
  line(100+100*3+100,100+40*14,100+100*3+100,100+40*7);
  //Vertical labels 2021(0-350000)
    for(int y = 0; y <400000;y =y+50000){
    text(y, 470,(100+40*14)-40*(y/50000));
  }
  strokeWeight(2);
  stroke(red);
  noFill();
  //Draw 2020 data
  beginShape();
  for(int i = 0; i < cases_2020.length; i++){
    vertex(((i+0.5)*40)+500, (100+40*6) - ((40*cases_2020[i])/100));
  }
  endShape();
  //Draw 2021 data
  beginShape();
    for(int j = 0; j < cases_2021.length; j++){
    vertex(((j+0.5)*40)+500, (100+40*14) - ((40*cases_2021[j])/50000));
  }
  endShape();
//-----------------------------------------------
  
//Part 3- Analysis--------------------
  //Show 2020 analysis
  textSize(22);
  float ave_20 = average(cases_2020);
  int max_20 = maximum(cases_2020);
  int min_20 = minimum(cases_2020);
  text("2020 Analysis ", 1000, 100);
  line(525+40*9,125,width-75,125);
  text("Max= "+ max_20, 1000, 150);
  text("Average= "+ ave_20, 1000, 200);
  text("Min= "+ min_20, 1000, 250);
  //Show 2021 analysis
  float ave_21 = average(cases_2021);
  int max_21 = maximum(cases_2021);
  int min_21 = minimum(cases_2021);
  text("2021 Analysis ", 1050, 400);
  line(525+40*11,425,width-75,425);
  text("Max= " +max_21, 1050, 450);
  text("Average= "+ ave_21, 1050, 500);
  text("Min= "+ min_21, 1050, 550);
}
// function calculate the average
float average(int[] data){
    int sum = 0;
    for(int i = 0; i < data.length; i++){
        sum += data[i];
    }
    float ave = (float)sum/data.length;
    return ave;
}
// function calculate the max
int maximum(int[] data){
    int max = data[0];
    for(int i = 0; i < data.length; i++){
        if(data[i] > max){
            max = data[i];
        }
    }
    return max;
}
// function calculate the min
int minimum(int[] data){
    int min = data[0];
    for(int i = 0; i < data.length; i++){
        if(data[i] < min){
            min = data[i];
        }
    }
    return min;
}
//--------------------------
