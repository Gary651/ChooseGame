//new game for big brain peoples //<>//
//Room data
String [] description =
  {
  //0
  "You woke up in dis weird place and u gotta escape to live",
  //1
  "You are in the LEFT CHAMBER. Go left to return to start, go right to see the dog statue.",
  //2
  "You went right",
  //3
  "The dog statue is so cool.",
  //4
  "Dog go bark. Wonder where it came from",
  //5
  "Oooo a painting of a dog, maybe we should keep going this way...",
  //6
  "Good job you got away from the dog, where next to",
  //7
  "Look V-Bucks",
  //8
  "OOooo a sword wonder what it for????",
  //9
  "AAAAAA oh its a bug we good",
  //10
  "OML ITS A ZOMBUH",
  //11
  "We survived yay",
  //12
  "Dang where's that music comin from. I think it's comin from the left...",
  //13
  "Oh wow you got scratched by that zombie",
  //14
  "You died rip big g",
  //15
  "You got rickrolled lol",
  //16
  "Yeah lets not go to it",
  //17
  "Now we found a bow wooowwwww",
  //18
  "Oooooo bats we gotta kill em",
  //19
  "Good job they all dead and now we in new place",
  //20
  "They bit you and you got rabies rip",
};

//Player's data
int currentRoom = 0;
int choice = 0;

void setup()
{
  size(900, 600);
  textAlign(CENTER);
  textSize(40);
}

int changeRoom()
{
  //Went left
  if ( choice == 1 )
    switch( currentRoom )
  {
  case 0:
    return 1;
  case 5:
    return 6;
  case 7:
    return 8;
  case 8:
    return 9;
  case 9:
    return 11;
  case 11:
    return 12;
  case 12:
    return 15;
  case 16:
    return 17;
  case 17:
    return 18;
  case 18:
    return 19;
  default:
    return 0;
  }
  //Went Right
  else
    switch( currentRoom )
  {
  case 0:
    return 2;
  case 1:
    return 3;
  case 2:
    return 4;
  case 3:
    return 5;
  case 6:
    return 7;
  case 7:
    return 8;
  case 8:
    return 10;
  case 10:
    return 11;
  case 11:
    return 13;
  case 13:
    return 14;
  case 12:
    return 16;
  case 16:
    return 17;
  case 17:
    return 18;
  case 18:
    return 20;
  default:
    return 0;
  }
}

//********************************************//

void draw()
{
  background(0);

  drawButtons();

  //Draws the text in the middle of the screen
  fill(255);
  text(description[currentRoom], width/2-250, height/2, 500, 400);
}

void drawButtons()
{
  stroke(100);
  strokeWeight(4);

  //First Button
  fill(160);
  if (mousePressed && mouseX < 100)
  {
    fill(120);
  }
  rect(0, 0, 100, height);

  //Second Button
  fill(160);
  if (mousePressed && mouseX > width-100)
  {
    fill(120);
  }
  rect(width, 0, -100, height);
}

void mouseReleased()
{
  choice = -1;
  if ( mouseX > width-100 )
    choice = 2;
  if ( mouseX < 100 )
    choice = 1;

  if (mouseX > width - 100 || mouseX < 100 )
    currentRoom = changeRoom();
  choice = -1;
}
