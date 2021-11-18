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
color measlesColour=#FF030B, resetColour=#FFFFFF;
//
void setup() {
  //Geometry
  size(700, 500);
  //
  //Population
  rectX = width*1/2 - height*1/2;
  rectY = height * 0;
  rectWidth = height;
  rectHeight = height;
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
  reset = 1;
  //
}//End setup()
//
void draw() {
  //Population that changes
  measleX = random(width);
  measleY = random(height);
  measleDiameter = random(width*1/30, width*1/10);
  //
  //Canvas
  rect(rectX, rectY, rectWidth, rectHeight);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
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
