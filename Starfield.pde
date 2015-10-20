//your code here
Particle [] sparks = new Particle[50];
void setup()
{
	//your code here
	size(500,500);
	for( int nI = 0; nI < sparks.length; nI++)
	{
		sparks[nI] = new NormalParticle();
	}
		for( int nI = 0; nI < 25; nI++)
	{
		sparks[nI] = new OddballParticle();
	}
		for( int nI = 0; nI < 6; nI++)
	{
		sparks[nI] = new JumboParticle();
	}
}
void draw()
{
	//your code here
	background(0);
	for( int i= 0; i < sparks.length; i++)
	{
		sparks[i].show();
		sparks[i].move();
	}
}
void mousePressed()
{
		for( int nI = 0; nI < sparks.length; nI++)
	{
		sparks[nI] = new NormalParticle();
	}
		for( int nI = 0; nI < 25; nI++)
	{
		sparks[nI] = new OddballParticle();
	}
		for( int nI = 0; nI < 6; nI++)
	{
		sparks[nI] = new JumboParticle();
	}
}
class NormalParticle implements Particle
{
	int myColor;
	double myX,myY,mySpeed,myAngle;
	NormalParticle()
	{
		myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		myX = mouseX;
		myY = mouseY;
		mySpeed = Math.random()*8;
		myAngle = Math.PI*2*Math.random();
	}
	public void show()
	{
	fill(myColor);
	ellipse((float)myX,(float)myY, 15,15);
	}
	public void move()
	{
	myX= myX + Math.cos(myAngle)*mySpeed;
	myY= myY + Math.sin(myAngle)*mySpeed;
	}
}
interface Particle
{
	//your code here
	public void show();
	public void move();
}
class OddballParticle implements Particle//uses an interface
{
double myX,myY,mySpeed,myAngle;

 OddballParticle()
 {
 	myX = mouseX;
 	myY = mouseY;
 	mySpeed = Math.random()*8;
	myAngle = Math.PI*2*Math.random();
 }
 public void show()
 {
 	fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 	rect((float)myX,(float)myY,20,20);
 }
 public void move()
 {
 	myX= myX + Math.cos(myAngle)*mySpeed;
	myY= myY + Math.sin(myAngle)*mySpeed;
 }
}
class JumboParticle extends NormalParticle//uses inheritance
{
	//your code here
	void show()
	{
		fill(myColor,(int)(Math.random()*255));
		ellipse((float)(myX),(float)(myY),50,50);
	}
}

