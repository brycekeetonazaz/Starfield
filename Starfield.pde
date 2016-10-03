//your code here
Particle[] normie;
JumboParticle jumbo;
void setup()
{
	//your code here
	size(800,600);
	normie = new Particle[1000];
	jumbo = new JumboParticle();
	for(int i = 0; i < normie.length; i ++)
	{
		normie[i] = new NormalParticle();
	}
}

void draw()
{
	//your code here
	background(0);
	
	for(int i = 0; i < normie.length; i ++)
	{
		normie[i].move();
		normie[i].show();
	}
	jumbo.move();
	jumbo.show();
}
class NormalParticle
{
	// VARIABLES
	int myColor, mySize;
	double myX, myY, mySpeed, myAngle;
	// CONSTRUCTOR
	NormalParticle()
	{
		myX = 400+Math.random()*10;
		myY = 300+Math.random()*10;
		myAngle = Math.random()*(2*Math.PI);
		mySpeed = 2;
		mySize = 10;
		myColor = color(255,0,0);
	}

	// FUNCTIONS
	public void move()
	{
		//mySpeed = ;
		myX += Math.cos(myAngle)+mySpeed;
		myY += Math.sin(myAngle)+mySpeed;
		//myX++;
		//myY +=10*Math.cos((100/Math.PI)*myX);
		if(myX > 800)
		{
			myX = 0;
		}
		if(myY > 600)
		{
			myY = 0;
		}
	}
	public void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,mySize,mySize);
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle //uses an interface
{
	Oddball()
	{
		
	}
}
class JumboParticle extends NormalParticle//uses inheritance
{
	//your code here
	JumboParticle()
	{
		mySize = 100;
	}
}

