int triangleSize = 200;


public void setup()
{
	size(400,400);
	background(0);
}



public void draw()
{
	sierpinski(50,350,305);
}


public void mouseDragged()//optional
{
}


public void mousePressed()
{
	if(triangleSize>15)
	{
		triangleSize = triangleSize - 10;
	}
	background(0);
	sierpinski(50,350,305);
}



public void sierpinski(int x, int y, int len) 
{
	if(len<=triangleSize)
	{
		triangle(x,y,x+len, y, x+len/2, y-len);
	}
	else
	{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);

	}

}