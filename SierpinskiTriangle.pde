public void setup()
{
size(500,500);
background(255);
}
public void draw()
{
sierpinski(75,400,400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{

if(len <=20){
  int x2= x + len;
  int x3= x + len/2;
  int y3 = y - len;
  triangle(x,y,x2,y,x3,y3);
}
else{
 sierpinski(x,y,len/2);
 sierpinski(x+len/2, y, len/2);
 sierpinski(x + len/4, y-len/2, len/2);
}

}

