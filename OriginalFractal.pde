int siz = 100;
int roseC = color(187, 17, 17);
int r=255;
int strokeC = color(0);
public void setup(){
  size(500, 500);
}

public void draw(){
  background(#FFEAFB);
  fill(roseC);
  stroke(strokeC);
  myFractal(140, 100, siz); //top left going c
  myFractal(250, 100, siz);
  myFractal(375, 100, siz);
  myFractal(375, 250, siz);
  myFractal(125, 400, siz);
  myFractal(250, 400, siz);
  myFractal(375, 400, siz);
  myFractal(125, 250, siz);
  myFractal(250, 250, siz);
  if (mousePressed)
    siz+=1;
  if (siz>150)
    siz=100;
  if (r<10)
    r=255;
  if (keyPressed && key == 'f'){
    roseC = color(#BC1111, r-=5);
    strokeC = color(0, r-=5);
  }
   if (keyPressed && key == 'r'){
      siz = 100;
      roseC = color(#BC1111);
      strokeC = color(0);
  }
}

public void myFractal(int x, int y, int siz){
  if (siz < 10){
   ellipse(x, y-2, siz, siz); //top going cc
   ellipse(x-2, y-2, siz, siz);
   ellipse(x-2, y, siz, siz);
   ellipse(x-2, y+2, siz, siz);
   ellipse(x, y+2, siz, siz);
   ellipse(x+2, y+2, siz, siz);
   ellipse(x+2, y, siz, siz);
   ellipse(x+2, y-2, siz, siz);

  }
  else {
   ellipse(x+siz/8, y-siz/2, siz, siz); //top going cc
   ellipse(x-siz/4, y-siz/4, siz, siz);
   ellipse(x-siz/2, y-siz/8, siz, siz);
   ellipse(x-siz/4, y+siz/4, siz, siz);
   ellipse(x-siz/8, y+siz/2, siz, siz);
   ellipse(x+siz/4, y+siz/4, siz, siz);
   ellipse(x+siz/2, y+siz/8, siz, siz);
   ellipse(x+siz/4, y-siz/4, siz, siz);
   myFractal(x, y, siz/2);
  }
}
