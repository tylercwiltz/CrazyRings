//X locs
int xLeftLeft = 100;
int xLeft = 250;
int xCenter = 400;
int xRight = 550;
int xRightRight = 700;
//Y locs
int yTopTop = 100;
int yTop = 250;
int yCenter = 400;
int yBottom = 550;
int yBottomBottom = 700;

int move = 2;
//int size = 10;
int size = 110;
int increase = 1;
void setup() {
  size(800, 800);
}
void draw() {
 background(200,200,200);
 //LeftLeft
 rings(xLeftLeft,yTopTop,size);
 rings(xLeftLeft,yTop,size);
 rings(xLeftLeft,yCenter,size);
 rings(xLeftLeft,yBottom,size);
 rings(xLeftLeft,yBottomBottom,size);
 
 //Left
 rings(xLeft,yTopTop,size);
 rings(xLeft,yTop,size);
 rings(xLeft,yCenter,size);
 rings(xLeft,yBottom,size);
 rings(xLeft,yBottomBottom,size);
 
 //Center
 rings(xCenter,yTopTop,size);
 rings(xCenter,yTop,size);
 rings(xCenter,yCenter, size);
 rings(xCenter,yBottom,size);
 rings(xCenter,yBottomBottom,size);
 
 //Right
 rings(xRight,yTopTop,size);
 rings(xRight,yTop,size);
 rings(xRight,yCenter,size);
 rings(xRight,yBottom,size);
 rings(xRight,yBottomBottom,size);
 
 //RightRight
 rings(xRightRight,yTopTop,size);
 rings(xRightRight,yTop,size);
 rings(xRightRight,yCenter,size);
 rings(xRightRight,yBottom,size);
 rings(xRightRight,yBottomBottom,size);

//Control
if(!keyPressed) {
//Inc/Dec Size
 size+=increase;
if(xLeftLeft == 400 || xLeftLeft < 100 || xLeftLeft > 700) {
  increase = -increase;
 }
 
//Move
xLeftLeft+=move*2;
xLeft+=move;
xRightRight-=move*2;
xRight-=move;
yTopTop+=move*2;
yTop+=move;
yBottomBottom-=move*2;
yBottom-=move;
if(xLeftLeft < 100 || xLeftLeft >700 || xLeft < 100 || xLeft >700) {
  move = -move;
}
}
}
void rings(int x, int y, int size){
 for(int i = 0; i < 20; i++) {
   //noFill();
   stroke(1);
   fill(random(255),random(255),random(255));
   ellipse(x, y, size, size);
   //size+=5;
   size-=5;
 } 
}
