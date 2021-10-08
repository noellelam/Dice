Die bob;

void setup()
{
  noLoop();
  size (500,585);
 
  
}
void draw()
{
  background (75 + (int)(Math.random()*36), 230 +(int)(Math.random()*36), 230 + (int)(Math.random()*36));
  
  int rollCounter = 0; 
 
  for (int j =0; j <=500; j+=50) {
    for (int i=0; i <=500; i+=50) {
        bob = new Die (i,j);
        bob.roll();
        bob.show();
        rollCounter += bob.numRoll;
      
    }
    fill (255);
    rect (220, 555, 60, 25);
    fill (0);
    text ("total:" +rollCounter, 225, 575);
  }
  
  
  
  
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int numRoll, myX, myY;

  Die(int x, int y) //constructor, fancy initalizer
  {
    numRoll=0;
    myX=x;
    myY=y;
  }
  void roll()
  {
    numRoll = (int)(Math.random()*6 +1);
  }
  void show()
  {
     
     
    fill (255,255,255);
    rect (myX,myY, 50,50, 12, 12, 12, 12);
    stroke(0);
    
    if (numRoll ==1) {
      
      fill(75 - (int)(Math.random()*50), 230 +(int)(Math.random()*50), 230 + (int)(Math.random()*50));
      ellipse (myX+25,myY+25, 10,10);
      
   
      
     
    }
    
    else if (numRoll ==2) {
   fill(75 - (int)(Math.random()*50), 230 +(int)(Math.random()*50), 230 + (int)(Math.random()*50));
      ellipse (myX+10, myY+10, 10, 10);
      ellipse (myX+40, myY+40, 10, 10);
      
  
    }
    
    else if (numRoll==3) {
      fill(75 - (int)(Math.random()*50), 230 +(int)(Math.random()*50), 230 + (int)(Math.random()*50));
      ellipse (myX+10, myY+10, 10, 10);
      ellipse (myX+25, myY+25, 10, 10);
      ellipse (myX+40, myY+40, 10, 10);
      
    }
    
    else if (numRoll==4) {
fill(75 - (int)(Math.random()*50), 230 +(int)(Math.random()*50), 230 + (int)(Math.random()*50));
      ellipse (myX+10, myY+10, 10, 10);
      ellipse (myX+40, myY+10, 10, 10);
      ellipse (myX+10, myY+40, 10, 10);
      ellipse (myX+40, myY+40, 10, 10);

    }
    
    else if (numRoll==5) {
     fill(75 - (int)(Math.random()*50), 230 +(int)(Math.random()*50), 230 + (int)(Math.random()*50));
      ellipse (myX+10, myY+10, 10, 10);
      ellipse (myX+40, myY+10, 10, 10);
      ellipse (myX+10, myY+40, 10, 10);
      ellipse (myX+40, myY+40, 10, 10);
      ellipse (myX+25, myY+25, 10, 10);
  
    }
    
    else {
      fill(75 - (int)(Math.random()*50), 230 +(int)(Math.random()*50), 230 + (int)(Math.random()*50));
      ellipse (myX+10, myY+10, 10, 10);
      ellipse (myX+40, myY+10, 10, 10);
      ellipse (myX+10, myY+40, 10, 10);
      ellipse (myX+40, myY+40, 10, 10);
      ellipse (myX+10, myY+25, 10, 10);
      ellipse (myX+40, myY+25, 10, 10);
     
    
    }
  
 
  }
}
