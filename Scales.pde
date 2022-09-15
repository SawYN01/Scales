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
for(int y = 10; y < 550; y+=20)
  {
    for(int x =-40; x< 500; x+=100)
    {
      if (shift == true) {
        fill(0,51,102);
        stroke(255,255,255);
        strokeWeight(2);
        //bezier(100,105,110,40,190,40,200,105);
        //bezier(115,105,125,60,175,60,185,105);
        //bezier(130,105,140,80,160,80,170,105);
        bezier(x,y,x+10,y-65,x+90,y-65,x+100,y);
        bezier(x+15,y,x+25,y-45,x+75,y-45,x+85,y);
        bezier(x+30,y,x+40,y-25,x+60,y-25,x+70,y);
      } else {
        fill(0,51,102);
        stroke(255,255,255);
        strokeWeight(2);
        bezier(x+50,y,x+60,y-65,x+140,y-65,x+150,y);
        bezier(x+65,y,x+75,y-45,x+125,y-45,x+135,y);
        bezier(x+80,y,x+90,y-25,x+110,y-25,x+120,y);
      }
    }
    if (shift == true)
      shift = false;
    else 
      shift = true;
  }    
}  
