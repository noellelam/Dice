void setup()
{
  noLoop();
}
void draw()
{
  //your code here
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int numRoll, myX, myY;

  Die(int x, int y) //constructor
  {
    
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
    rect (myX,myY, 50,50);
    stroke(0);
    
    if (numRoll ==1) {
      
      fill(0);
      ellipse (myX,myY, 10,10);
    }
    
    
  }
}void setup()
{
  noLoop();
}
void draw()
{
  //your code here
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int numRoll, myX, myY;

  Die(int x, int y) //constructor
  {
    
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
    rect (myX,myY, 50,50);
    stroke(0);
    
    if (numRoll ==1) {
      
      fill(0);
      ellipse (myX,myY, 10,10);
    }
    
    
  }
}
