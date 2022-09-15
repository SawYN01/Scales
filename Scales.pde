boolean shift = true;

void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void scale(int x, int y) {
  fill(0,0,255);
  stroke(255,255,255);
  strokeWeight(2);
  bezier(x,y,x-20,y-65,x+70,y-65,x+50,y);
}

void draw() {
for(int y = 30; y < 550; y+=15)
  {
    for(int x =-20; x< 500; x+=60)
    {
      if (shift == true) {
        fill(0,51,102);
        stroke(255,255,255);
        strokeWeight(2);
        bezier(x,y,x-20,y-65,x+70,y-65,x+50,y);
      } else {
        fill(0,51,102);
        stroke(255,255,255);
        strokeWeight(2);
        bezier(x+30,y,x+10,y-65,x+100,y-65,x+80,y);
      }
    }
    if (shift == true)
      shift = false;
    else 
      shift = true;
  }    
}  
