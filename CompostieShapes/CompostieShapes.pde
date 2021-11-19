//Measles
//
//Global Variables
float rectX, rectY, rectWidth, rectHeight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2;
float mouthThick, reset;
float measleX, measleY, measleDiameter;
color measlesColour= #0000FF, resetColour=#FFFFFF;
//
void setup() {
  //Geometry
  size(700, 500);
  //
  //Population
  faceX = width*1/2;
  faceY = height*1/2;
  faceDiameter = height; //smallest dimension
  eyeDiameter = width*1/8;
  leftEyeX = width*1/3;
  leftEyeY = height*1/4;
  rightEyeX = width*2/3;
  rightEyeY = leftEyeY;
  noseX1 = faceX;
  noseY1 = height*3/8;
  noseX2 = leftEyeX;
  noseY2 = faceY;
  noseX3 = rightEyeX;
  noseY3 = faceY;
  mouthX1 = leftEyeX;
  mouthY1 = height*3/4;
  mouthX2 = rightEyeX;
  mouthY2 = mouthY1;
  mouthThick = 15;
  reset = 10;
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  //
}//End setup()
//
void draw() {
  //Population that changes
  measleX = 5/30*(width);
  measleY = 5/16*(height);
  measleDiameter = random(width*2/30, width*2/10);
  //
  //Canvas
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  strokeWeight(mouthThick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset);
  fill(measlesColour);
  ellipse(measleX, measleY, measleDiameter, measleDiameter);
  fill(resetColour);
}//End draw()
