//your code here
void setup()
{
	//your code here
	size(800,600);

}
NormalPartical normie = new NormalPartical(400,300,2);
void draw()
{
	//your code here
	NormalPartical.move();
	NormalPartical.show();
}
class NormalParticle
{
	// VARIABLES
	int myColor;
	double myX, myY, mySpeed, myAngle;

	// CONSTRUCTOR
	NormalPartical(x,x,a)
	{
		mySpeed = 2;
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
		ellipse(myX,myY,10,10);
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

