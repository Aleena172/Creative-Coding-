void setup(){
  size(600,400);
}
  void draw(){
background (219,231,255);

stroke(203,203,203);
fill(188,9,9);
circle(mouseX,mouseY,300);

stroke(203,203,203);
fill(242,242,242);
circle(mouseX,mouseY,210);

stroke(203,203,203);
fill(69,97,206);
rect(mouseX-200,mouseY-30,400,70);

textSize(70);
fill(242,242,242);
text("underground", mouseX-190, mouseY+25);
  }
