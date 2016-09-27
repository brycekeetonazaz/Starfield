//your code here
NormalParticle[] normie;
void setup()
{
	//your code here
	size(800,600);
	normie = new NormalParticle[20];
	for(int i = 0; i < normie.length; i ++)
	{
		normie[i] = new NormalParticle();
	}
}

void draw()
{
	//your code here
	for(int i = 0; i < normie.length; i ++)
	{
		normie[i].move();
		normie[i].show();
	}
}
class NormalParticle
{
	// VARIABLES
	int myColor;
	double myX, myY, mySpeed, myAngle;
	// CONSTRUCTOR
	NormalParticle()
	{
		myX = 400;
		myY = 300;
		myAngle = Math.random()*(2*Math.PI);
		mySpeed = 2;
		myColor = color(255,0,0);
	}

	// FUNCTIONS
	void move()
	{
		myX += Math.cos(myAngle)*mySpeed;
		myY += Math.sin(myAngle)*mySpeed;
	}
	void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,10,10);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

