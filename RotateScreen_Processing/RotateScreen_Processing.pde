/* Screen Rotation
  Provides an emulator for the screen rotate function found in portable devices
  such as tablets and smart phones.
  
  Use the arrow keys (UP, DOWN, LEFT, RIGHT), to change the direction the top of
  of the image is facing.
  
  Hack Tips:
    - Pick any photo you'd like to rotate by copying an image to the same folder of
    this sketch and change the filename of String, image.
  
  Challenge:
    - Make your Esplora's accelerometer detect its orientation and send out key arrow 
    inputs to this sketch.
  
  
  Author: Calla Klafas
  Date: September 2015
  http://challenge.madmaker.com.au
*/

String image = "image.png";

PImage img;
float angle, target, diff;
float up = 0;              // up-facing angle in radians (0 degrees)
float right = PI/2;        // right-facing angle in radians (90 degrees)
float down = PI;           // down-facing angle in radians (180 degrees)
float left = 3*PI/2;       // left-facing angle in radians (270 degrees)

void setup(){
  size(400,400);           // size of window
  img = loadImage(image);  // load image into variable 'img'
  imageMode(CENTER);       // make the image transform relative to its centre
                           // i.e not top-left corner
  angle = 0;               // start the angle at 0 radians.
}

void draw(){
  background(0);

  if ((diff<0 && angle > target) || (diff>0 && angle < target)){
    angle = angle + diff/10;
  }
  else if (diff!=0){
    angle = target;
    diff=0;

    if (angle==2*PI||angle==-2*PI){
      angle = 0;
    }
  }

  translate(width/2, height/2);
  rotate(angle);
  image(img,0,0);
  delay(10+round(30*abs(cos(angle))));   // smooth timing delay
}

void keyPressed(){
  if (key == CODED) {
    if (keyCode == UP) {
      target=up;
    } else if (keyCode == LEFT) {
      target=left;
    } else if (keyCode == DOWN) {
      target=down;
    } else if (keyCode == RIGHT) {
      target=right;
    }
    diff = target-angle;
    if (diff>PI){
      diff = diff -2*PI; // diff changes sign
      target = diff + angle;
    }
    else if(diff<=-PI){
      diff = diff +2*PI;
      target = diff + angle;
    }
  }
}