//your code here
Particle[] star;
PImage moon;
void setup()
{
	//your code here
	size(500,500);
	moon = loadImage("moon.png");
	star = new Particle[800];
	for(int i = 0; i< star.length; i++){
		star[i] = new Particle ();
		
	}
		star[0] = new OddballParticle();
		
		
}
void draw()
{
	//your code here
	loop();
	background(0);
	for(int i = 0; i< star.length;i++){
		star[i].show();
		star[i].move();
	}
	
}
void mousePressed(){
	setup();
}
class Particle
{
	//your code here
	double myX, myY, myAngle, mySpeed;
	int colorX;
		Particle()
		{
			myX = 250;
			myY = 250;
			myAngle = Math.random()*2*Math.PI;
			mySpeed = (Math.random()*10);
			if((int)(Math.random()*2) == 0){
				colorX = 255;
			}else colorX = 60;
			
		}
		void move()
		{
			myX = myX + Math.cos(myAngle)*mySpeed;
			myY = myY + Math.sin(myAngle)*mySpeed;
		}
		void show()
		{
			float x = (float)Math.random()*12 +3;
			fill(255,255,colorX);
			ellipse((float)myX, (float)myY,x,x);
		}
}

class OddballParticle extends Particle //inherits from Particle
{
	OddballParticle()
	{
		myX = 250;
		myY = 250;
		myAngle = 0;
		mySpeed = 0;
		
	}
	void move()
	{
		myX = myX + (Math.random()*5)-2;
		myY = myY + (Math.random()*5)-3;
	}
	void show()
	{
		fill((int)(Math.random()*255),(int)(Math.random()*250),(int)(Math.random()*255));
		image(moon,(float)myX,(float)myY,50,50);
	}

}


