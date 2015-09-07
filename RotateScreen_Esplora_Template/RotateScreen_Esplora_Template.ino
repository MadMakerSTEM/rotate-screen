/*
  Esplora Rotate Orientation
  
  Author: YOUR NAME
  School: YOUR SCHOOL
  Date: DATE

  Description: Detects the orientation of the Esplora board and,
  changes the LED colour according to the following orientations:
    Top Upright= Blue
    Left Upright = Red
    Right Upright = Green
    Bottom Upright = Yellow
  
 */

int xAxis,yAxis,zAxis;               // predefine the variable names and data type

#include <Esplora.h>

void setup() 
{
} 

void loop()
{
  xAxis = Esplora.readAccelerometer(X_AXIS);    // read the X axis
  yAxis = Esplora.readAccelerometer(Y_AXIS);    // read the Y axis
  zAxis = Esplora.readAccelerometer(Z_AXIS);    // read the Z axis
  
  //
  if(/*ENTER YOUR CONDITIONAL STATEMENT FOR 1st CASE*/){          
    // Change colour according to description
  }
  else if (/*ENTER YOUR CONDITIONAL STATEMENT FOR 2nd CASE*/){
    // Change colour according to description
  }
  else if (/*ENTER YOUR CONDITIONAL STATEMENT FOR 3rd CASE*/){
    // Change colour according to description
  }
  else if (/*ENTER YOUR CONDITIONAL STATEMENT FOR 4th CASE*/){
    // Change colour according to description
  }

}

