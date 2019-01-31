int x = 20;

int color1 = (int)(Math.random()*75)+75;
int color2 = (int)(Math.random()*75)+75;
int color3 = (int)(Math.random()*75)+75;
public void setup()
{
	size(1000,1000);
}
public void draw()
{
	background(200);
	sierpinski(10,10,x);
	sierpinski2(10,990,x);
}
public void mouseDragged()//optional
{
	if(x <= 980){
		x+=10;
	}else{
		x = 0;
		color1 = (int)(Math.random()*75)+75;
		color2 = (int)(Math.random()*50)+50;
		color3 = (int)(Math.random()*75)+75;
	}
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20){
		triangle(x, y, (2*x+len)/2, y + len, x + len, y);

	}else{
		fill(color1,color2,color3);
		sierpinski(x,y,len/2);
		fill(color3,color2,color1);
		sierpinski(x + len/2,y,len/2);
		fill(color1,color2,color3);
		sierpinski(x + len/4, y + len/2 , len/2);
		
	}
}

public void sierpinski2(int x, int y, int len) 
{
	if(len <= 20){
		triangle(x, y, (2*x+len)/2, y - len, x + len, y);

	}else{
		fill(color1,color2,color3);
		sierpinski2(x,y,len/2);
		fill(color3,color2,color1);
		sierpinski2(x + len/2,y,len/2);
		fill(color1,color2,color3);
		sierpinski2(x + len/4, y - len/2 , len/2);
		
	}
}