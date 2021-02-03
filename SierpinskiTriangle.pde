public void setup()
{
 size(800, 800);
}
public void draw()
{
  background(245, 215, 232); // #f5d7e8
  sierpinski(100, 150, 600);
}
public void mouseDragged()//optional
{
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 8)
  {
    fill(254, 243, 211); //#fef3d3
    triangle(x, y, x+len, y, x + (len/2), y-len);
  }
  else
  {
    sierpinski(x, y, len/2);
    sierpinski(x+(len/2), y, len/2);
    sierpinski(x+(len/4), y+ (len/2), len/2);
  }
}
