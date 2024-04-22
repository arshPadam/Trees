
float angle;
float theta;
void setup() {
  size(800, 800);
  fullScreen();
}

void draw() {
  background(255);

  angle = map(mouseX, 0, width, -PI/2, PI/2);
  theta = map(mouseX, 0, width, -PI/20, PI/20);
  translate(width/2, height);
  branch(250);
}


void branch(float length) {
  stroke(#449D52);

  line(0, 0, 0, -length);
  translate(0, -length);

  if (length>2) {
    pushMatrix();
    rotate(angle + theta);
    branch(length*.7);
    popMatrix();
    pushMatrix();
    rotate(-angle+theta);
    branch(length*.7);
    popMatrix();
  }
 /* 
  else{
   ellipse(0, 0, 2, 2);
   }
   */
}
