



 
int value=0;
int abc = 0;
int cols = 8;
int rows = 8;
int[][] myArray = new int[cols][rows];
 
String[] languages = { "java", "c++", "python" , "c#", "javascrip" }; 
 
void setup()
{
  textAlign(CENTER,CENTER);
  ellipseMode(RIGHT);
  size(500,500);
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      myArray[i][j] = (int)random(languages.length-1) + 1;
    }
  }
}
 
void draw() {
  
  
  background(#330000);
  for (int i = 0; i < cols; i++) 
  {
    for (int j = 0; j < rows; j++)
    {
      fill(#ccffcc);
      if(myArray[i][j] != 0) {
        ellipse(64*i, 64*j,50,50); 
        //rect(width/cols, height/rows, width/3, height/18); // shuffle value
        fill(0); 
        textAlign(CENTER,CENTER);
        text(languages[(myArray[i][j]) % languages.length], 64*i + 25,64*j + 25);
        fill(255, 0, 0);
      }
    }
  }
}

      // this is the definition for our custom MovingCircle object,
// start with the name of the class (or type of object)
 
class MovingCircle 
{
 
  // any variable declared here will be properties of
  // objects of this type 
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float circleSize;
 
  // this special function declaration has the same name
  // as the class (MovingCircle) and it has no return type. This
  // is known as the constructor and it's run when an 
  // object of this type is created.
   
  MovingCircle(float xpos, float ypos, float csize) 
    {
      x = xpos;
      y = ypos;
      circleSize = csize;
       
      xSpeed = random(-10, 10);
      ySpeed = random(-10, 10);
       
    }
 
  // update adds the speed to the position, making
  // our circle move around.
  void update() 
    {
      x += xSpeed;
      y += ySpeed; 
    }
}
      //text(myArray[i][j], "java", "hello");
     // text(i+","+j, 15+ 50*j, 10+ 50*i);
      //text("shuffle", width/2 -20, height/18*17.7);
      //text(myArray[i][j], 30+ 50*j, 40+ 50*i);
    
    /*
    
 
void shuffleArray(int[][] a) {
  int nbrCols = a.length;
  int nbrRows = a[0].length;
  for (int c = 0; c < nbrCols; c++) {
    for (int r = 0; r < nbrRows; r++) {
      int nc = (int)random(nbrCols);
      int nr = (int)random(nbrRows);
      int temp = a[c][r];
      a[c][r] = a[nc][nr];
      a[nc][nr] = temp;
    }
  }
}
 
void mouseReleased() {
  if (value == 0 && mouseX > width/3 && mouseX < width/3 + width/3 && mouseY > height/18*17 && mouseY < height/18*17 + height/18) { 
    shuffleArray(myArray);
  }
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      if (value == 0 && mouseX > 25+(50*i) && mouseX < 25+(50*i) +25 && mouseY > 50*j && mouseY < (50*j)+25) {
        value = 255;
        println("1st value"+ j);
        println("2nd value"+ i );
        fill(0, 255, 0);
        ellipse(25+(50*i), 50*j, 25, 25);
 
        int getal = myArray[j][i] ;          
        println("number: "+ getal);
 
        if (j == 3 && i == 5) {
          println("oki!");
        }
        rect(25+(50*i), 50*j, 25, 25);
      }
      else {
        value = 0;
      }
    }
  }

*/