//Franklin Ramirez
//
//2020-06-05
//Ms.Basaraba
//In this draft, there are a few scenes I added. I added Chad swimming around looking for Skipper then introducing Skipper who chases after Chad. It then cuts to Bertha and Vinny racing each other before spotting Skipper and Chad and swimming to meet up. 
int counter=0;
int timer=200;

float xMove=0;
float xSpeed=10;

float ySpeed=10;
float yMove=0;


int function=0;

int whaleBack=-200;
void setup()
{
  size(800, 500);//Size of SCreen
}

void title()
{
  Intro();
}
void draw()
{
  if (function<=10) {
    myBackground();    //The background of the sketch
  }
  if (function>=10 && function<=16 && counter==0) {
    myBackground2();
  }
  if(function==16 && counter==2 && xMove>=300)
  {
    myBackground3();
  }
  stroke(255);
  Scene_1();
  Scene_2();
  Scene_3();
  Scene_4();
  Scene_5();
  Scene_6();
  Scene_7();
  Scene_8();
   Scene_9();
  // Scene_10();  //  This will become Scene_10. Scene_9(); will be Chad and Skipper highfiving and then Chad explaining what is going on. They then spot Bertha and Vinny and meet up with them.
  if (timer<=200 && timer>=60) {
    title();
  }
  timer=timer-8;
  xMove=xMove+xSpeed;
  yMove=yMove+ySpeed;
  println(function);
  println(xMove);
  println(counter);
  // println(yMove);
}

void Intro()
{

  textSize(32);
  stroke(255, 0, 0);
  PFont font;

  font=createFont("MonotypeCorsiva-48", 48);
  textFont(font);
  text("The Ocean Treasure", 170, 150);
  font=createFont("MonotypeCorsiva-28", 28);
  textFont(font);
  text("By: Franklin Ramirez", 260, 250);
}

void Scene_1()
{
  if (xMove>=0 && function==0) {
    shark();
  }

  if (xMove==500 && function==0)
  {
    frameRate(0);
    delay(5000);
    frameRate(60);
  }
  if ( xMove<=600 && xMove >=300 && function==0)
  {
    shark();
    message_1();
    message_1();
  }
  if (xMove==1300 && function==0 ) {
    shark();
    xMove=50;
    function=1;
  }
}
void Scene_2()
{
  if (xMove>=50 && function == 1) {
    frameRate(60);
    shark();
    whale();
  }

  if (xMove>=500 &&function==1 ) {
    shark();
    frameRate(0);
    frameRate(60);
    delay(0);
  }

  if (xMove>=500 && xMove<=800&& function==1) {

    shark();
    whale();
    message_2();
    message_2();
  }

  if (xMove==1300 && function==1) {
    shark();
    xMove=50;
    function=2;
  }
  if (xMove>=50 && function==2) {
    shark();
    whale_2();
    function=3;
  }
}
void Scene_3()
{
  if (xMove==1300 && function==3) {

    xMove=50;
  }

  if (xMove>=50 && xMove<500 && function==3 || function==4) {
    shark();
    whale_2();
  }

  if (xMove>50 && xMove <=500 && function==3)
  {
    turtle();
  }

  if (xMove==500 && function==3) {
    frameRate(60);
    function=4;
  }
  if (xMove>=400 && xMove<=700 && function==3) {

    message_3();
  }

  if (xMove>=550 && xMove<=750 && function==4) {
    message_4();
  }

  if (xMove>=500 && function ==4) {

    turtle2();
    whale_2();
    shark();
  }
}

void Scene_4()
{
  if (xMove==1300 && function==4 ) {
    xMove=-50;
    function=5;
  }

  if (xMove>=-50 && function==5) {
    turtle2();
    whale_2();
    shark();
  }

  if (xMove>=500 && xMove<=700 &&   function==5) {
    message_5();
  }
}


void Scene_5()    //This scene will be Chad calling out for Skipper and then eventually SKipper appearing. Chad then calls for Skipper to chase after him and go treasure hunting. 
{
  if (xMove==1200 && function==5) {
    function=6;
  }
  if (xMove==1300 && function==6 ) {
    xMove=50;
  }
  if (xMove==50 && function==6) {
    yMove=0;
  }
  if (xMove>=50 && xMove<=600 && function==6) {

    pushMatrix();
    translate(0, -100);    //Rotating Chad so that he moves diagonally. I have not perfectly done this and will need to change 
    rotate(-0.35);
    turtle3();
    popMatrix();
    message_6();
  }
  if (xMove==600 && function==6) {

    ySpeed=ySpeed*-1;    //This makes Chad go up instead of down
  }
  if ( xMove>=600  && function==6) {

    pushMatrix();
    translate(100, -200);
    rotate(0.1);    //This is the rotation that makes Chad moving up in a diagonal manner. 
    turtle3();
    popMatrix();
  }

  if (yMove==80 && xMove>=800 && function==6) {
    turtle3();
    ySpeed=0;
    yMove=80;
  }
  if (xMove==1280 && yMove==80 && function==6) {
    function=7;
    xMove=50;
  }
  if (xMove>=50 && function==7) {
    message_6();    //This is the word "Skipper". It is made to show that Chad is shouting his name while calling for him. 
    turtle4();
  }
  if (xMove==1300 && function==7) { 
    function=8;
    xMove=50;
    yMove=250;
  }
  if (xMove>=50 && function==8)
  {
    message_6();
    turtle3();
  }

  if (xMove==1300 && function==8)
  {
    xMove=200;
    yMove=0;
    function=9;
  }

  if (xMove>=50 && function==9) {
    pushMatrix();
    rotate(0.8);    //This is the final scene before transitioning to the new background. This is Chad spotting Skipper below and swimming diagonally towards him. 
    ySpeed=2;
    turtle4();
    popMatrix();
  }

  if (xMove>=1500 && function==9) {
    function=10;
  }
}
void Scene_6()
{
  if (xMove==1500 && function==10) {
    xMove=50;
  }
  if (xMove>=50 && function==10) {
    yMove=10;
    fish2();
    message_7();  //SKipper saying he hears Chad somewhere.
  }
  if (xMove==1480 && function==10 && yMove==10)
  {
    function=11;
  }
  if (xMove==1600 && function==11) {
    xMove=-200;
  }
  if (xMove>=200 && xMove<=800 && function==11) {
    message_8();  //This message will be Chad tellign Skipper to follow him as they are going treasure hunting.
    //Skipper will then be surprised but still follow Chad.
  }
  if (xMove>=-200 && function==11) {
    fish2();
    turtle2();
  }
  if (xMove==500 && function==11) {
    function=12;
  }
  if (xMove>=500 && function==12) {
    fish2();
    turtle2();
  }
}
void Scene_7()    //This scene will be Bertha and Vinny racing to reach the finish line. This finish line will be a new background with a rocktower being the end line. 
{
  if (xMove==1800 && function==12) {
    xMove=50;
    function=13;
  }
  if (xMove<=800 && function==13 ) {
    message_9();    //This message will be a cutscene saying "Meanwhile with Vinny and Bertha"
  }
  if (xMove==1300 && function==13) {
    function=14;
  }
  if (xMove==1300 && function==14) {
    xMove=-300;
  }
  if (xMove>=-100 && function==14 ) {

    shark2();
  }
  if (xMove>=-100 && function==14) {

    whale_3();
  }

  if (xMove>=-300  && xMove<=700 && function==14) {
    message_10();    // Bertha saying "Race you to the rocks"
  }
  if (xMove>=700 && xMove<=900 && function==14) {
    message_11();       //Bertha says he wins
  }
  if (xMove==1200 && function==14) {
    function=15;
  }
}

void Scene_8()    //This scene will be Bertha and Vinny swimming down because they saw Chad and Skipper. They then meet up together and explain the only clue he got. (Still work in progress) 
{
  if (xMove==1200 && function==15 && counter==0) {
    xMove=-100;
  }
  if (xMove>=-100 && xMove<=1280 && function==15 ) {
    shark2();
    whale_2();
    counter=1;
  }
  if (xMove>=200 && xMove<=800 && function==15 && counter==1 ) {

    message_12();    //This message will be Bertha spotting Chad and Skipper and choosing to swim down to them.
  }
  if (xMove==1380 && function==15) {

    function=16;
  }

  if (xMove==1400 && function==16 && counter==1) {
    xMove=-300;
  }
  if (xMove>=100 && xMove<=1300 && function==16 && counter==1) {
    pushMatrix();
    translate(-130, -100);    //Hello Ms. Basaraba, I have a quick question. At this part, on the left side of the screen, there is another procedure occuring but I do not know why. 
    //If I were to translate(0,-100), the whale and the shark would be seen easily but I do not know how to make them not appear. 
    rotate(-0.5);
    shark2();
    whale_2();
    popMatrix();
  }
  if (xMove==1350 && function==16 && counter==1) {
    counter=2;
  }
  if (xMove==1400 && function==16 && counter==2) {
    xMove=-300;
  }

  if (xMove>=100 && xMove<=1300 && function==16 && counter==2) {
    pushMatrix();
    translate(-130, -100);    //Hello Ms. Basaraba, I have a quick question. At this part, on the left side of the screen, there is another procedure occuring but I do not know why. 
    //If I were to translate(0,-100), the whale and the shark would be seen easily but I do not know how to make them not appear. 
    rotate(-0.5);
    shark2();
    whale_2();
    popMatrix();
  }
  if (xMove>=100 && xMove<=800 && function==16 && counter==2) {
    //message_12();    //This will be a message of Bertha saying "ooh a Crab".
  }
  if (xMove==1340 && function==16 && counter==2) {
    counter=3;
  }
  if (xMove==1400 && function==16 && counter==3) {
    xMove=-50;
    function=17;
    yMove=50;
  }
}

void Scene_9() //This will the scene where they meet up as a group and Vinny explains the only clue he got. The clue is that the treasure is right from a Red Crab. 
{
  if (xMove>=50 && function==17) {
    fish3();
    turtle2();
  }
}

void Scene_10()    
{
  //Bertha and Chad will be on the left moving from left to right.
  //Vinny and Skipper will be on the right. They will pause and meet in the middle while Vinny explains the clue

  if (xMove>=50 && function==17) {
    whale();
    turtle4();
    //////////
    shark3();
    fish3();
    yMove=50;
    if (xMove==500) {
      noLoop();
    }
  }
}

void fish3()    //This is Skipper but moving from left to right
{

  tailFish3();
  headFish3();
  bodyFish3();
  faceFish3();
}

void bodyFish3()
{
  fill(  #31c4a0);
  stroke (#31c4a0);
  ellipse(400+(xMove*1.1)-650, 250, 200, 100);

  fill(  #4682B4);
  stroke(  #4682B4);
  quad(450+(xMove*1.1)-650, 240, 450+(xMove*1.1)-650, 260, 400+(xMove*1.1)-650, 275, 400+(xMove*1.1)-650, 225);
}
void headFish3()
{
  fill(  #4682B4);
  stroke(  #4682B4);
  triangle(350+(xMove*1.1)-650+100, 206, 350+(xMove*1.1)-650+100, 294, 450+(xMove*1.1)-650+100, 250);
}

void faceFish3()
{
  fill(0);
  arc(290+(xMove*1.1)-650+220, 255, 20, 15, radians(0), radians(180));
  ellipse(290+(xMove*1.1)-650+220, 240, 15, 15);
}
void tailFish3()
{
  fill(  #4682B4);
  stroke(  #4682B4);
  beginShape();
  vertex(240+(xMove*1.1)-650, 320);
  vertex(265+(xMove*1.1)-650, 250);
  vertex(240+(xMove*1.1)-650, 180);
  vertex(340+(xMove*1.1)-650, 250);
  endShape(CLOSE);
}

void fish2()    //This will be the second model of Skipper.  In this one, he will be moving slower than the average xSpeed. 
{

  tailFish2();
  headFish2();
  bodyFish2();
  faceFish2();
}

void bodyFish2()
{
  fill(  #31c4a0);
  stroke (#31c4a0);
  ellipse(400-(xMove/1.5)+550, 250, 200, 100);    //The circular body

  fill(  #4682B4);
  stroke(  #4682B4);
  quad(350-(xMove/1.5)+550, 240, 350-(xMove/1.5)+550, 260, 400-(xMove/1.5)+550, 275, 400-(xMove/1.5)+550, 225);    //The fin
}
void headFish2()
{
  fill(  #4682B4);
  stroke(  #4682B4);
  triangle(350-(xMove/1.5)+550, 206, 350-(xMove/1.5)+550, 294, 250-(xMove/1.5)+550, 250);    //The triangular head
}

void faceFish2()
{
  fill(0);
  arc(290-(xMove/1.5)+550, 255, 20, 15, radians(0), radians(180));    //The smile
  ellipse(290-(xMove/1.5)+550, 240, 15, 15);    //The eye
}
void tailFish2()
{
  fill(  #4682B4);
  stroke(  #4682B4);
  beginShape();    //The shape of his tail
  vertex(435-(xMove/1.5)+550, 250);
  vertex(585-(xMove/1.5)+550, 180);
  vertex(540-(xMove/1.5)+550, 250);
  vertex(585-(xMove/1.5)+550, 320);
  endShape(CLOSE);
}

void fish()    //This is Skipper but moving at regular speed. 
{

  tailFish();
  headFish();
  bodyFish();
  faceFish();
}

void bodyFish()
{
  fill(  #31c4a0);
  stroke (#31c4a0);
  ellipse(400-xMove+550, 250, 200, 100);

  fill(  #4682B4);
  stroke(  #4682B4);
  quad(350-xMove+550, 240, 350-xMove+550, 260, 400-xMove+550, 275, 400-xMove+550, 225);
}
void headFish()
{
  fill(  #4682B4);
  stroke(  #4682B4);
  triangle(350-xMove+550, 206, 350-xMove+550, 294, 250-xMove+550, 250);
}

void faceFish()
{
  fill(0);
  arc(290-xMove+550, 255, 20, 15, radians(0), radians(180));
  ellipse(290-xMove+550, 240, 15, 15);
}
void tailFish()
{
  fill(  #4682B4);
  stroke(  #4682B4);
  beginShape();
  vertex(435-xMove+550, 250);
  vertex(585-xMove+550, 180);
  vertex(540-xMove+550, 250);
  vertex(585-xMove+550, 320);
  endShape(CLOSE);
}
void turtle4()    //This is Chad but him appearing from the left side of the screen and moving accross the right of the screen. 
{

  legsT4();
  bodyT4();
  headT4();
  faceT4();
}

void bodyT4()
{
  fill(#28340A);
  stroke(#28340A);

  arc(-100+xMove, 55+yMove, 150, 120, radians(0), radians(90));
  arc(-100+xMove, 55+yMove, 150, 120, radians(270), radians(360));
  arc(-100+xMove, 55+yMove, 200, 120, radians(90), radians(180));
  arc(-100+xMove, 55+yMove, 200, 120, radians(180), radians(270));

  fill(255);
  quad(-150+xMove, 40+yMove, -100+xMove, 40+yMove, -100+xMove, 70+yMove, -150+xMove, 70+yMove);    //top
  quad(-90+xMove, 40+yMove, -40+xMove, 40+yMove, -40+xMove, 70+yMove, -90+xMove, 70+yMove);    //middle



  arc(-100+xMove, 30+yMove, 100, 50, radians(180), radians(270));    //left top
  arc(-100+xMove, 80+yMove, 100, 50, radians(90), radians(180));    //left bottom

  arc(-90+xMove, 80+yMove, 100, 50, radians(0), radians(90));      //niddle bottom
  arc(-89+xMove, 30+yMove, 100, 50, radians(270), radians(360));    ///middle top

  arc(-160+xMove, 52+yMove, 50, 60, radians(180), radians(270));    //Top piece
  arc(-160+xMove, 52+yMove, 50, 60, radians(90), radians(180));    //Bottom piece
}

void legsT4()
{
  fill(#28340A);
  stroke(#28340A);

  arc(-45+xMove, 30+yMove, 100, 50, radians(270), radians(360));    //xop Foox    //Front
  arc(-45+xMove, 80+yMove, 100, 50, radians(0), radians(90));    //Bottom foot


  fill(#28340A);
  arc(-160+xMove, 85+yMove, 100, 50, radians(90), radians(180));
  arc(-160+xMove, 20+yMove, 100, 50, radians(180), radians(270));
}

void headT4()
{
  fill(#28340A);
  stroke(#28340A);
  arc(-33+xMove, 53+yMove, 100, 50, radians(270), radians(360));
  arc(-33+xMove, 53+yMove, 100, 50, radians(0), radians(90));
}

void faceT4()
{
  fill(255);
  stroke(#28340A);
  ellipse(-10+xMove, 40+yMove, 15, 15);    //top
  ellipse(-10+xMove, 60+yMove, 15, 15);    //bottom

  fill(0);
  ellipse(-10+xMove, 40+yMove, 5, 5);
  ellipse(-10+xMove, 60+yMove, 5, 5);
}

void turtle3()    //Chad moving from right to left
{

  legsT3();
  bodyT3();
  headT3();
  faceT3();
}

void bodyT3()
{
  fill(#28340A);
  stroke(#28340A);
  arc(500-xMove+400, 55+yMove, 150, 109, radians(90), radians(190));
  arc(500-xMove+400, 47+yMove, 150, 109, radians(170), radians(270));
  arc(500-xMove+400, 50+yMove, 200, 120, radians(0), radians(90));
  arc(500-xMove+400, 52+yMove, 200, 120, radians(270), radians(360));

  fill(255);
  quad(450-xMove+400, 35+yMove, 500-xMove+400, 35+yMove, 500-xMove+400, 65+yMove, 450-xMove+400, 65+yMove);    //top
  quad(510-xMove+400, 35+yMove, 560-xMove+400, 35+yMove, 560-xMove+400, 65+yMove, 510-xMove+400, 65+yMove);    //middle



  arc(500-xMove+400, 25+yMove, 100, 50, radians(180), radians(270));    //left top
  arc(500-xMove+400, 70+yMove, 100, 50, radians(90), radians(180));    //left bottom

  arc(510-xMove+400, 70+yMove, 100, 50, radians(0), radians(90));      //niddle bottom
  arc(510-xMove+400, 25+yMove, 100, 50, radians(270), radians(360));    ///middle top

  arc(565-xMove+400, 50+yMove, 50, 60, radians(0), radians(90));    //right patter bottom
  arc(565-xMove+400, 50+yMove, 50, 60, radians(270), radians(360));  //Right patter top

  fill(#28340A);
  triangle(600-xMove+400, 40+yMove, 600-xMove+400, 60+yMove, 615-xMove+400, 50+yMove);    //Tail
}

void legsT3()
{
  fill(#28340A);
  stroke(#28340A);
  arc(580-xMove+400, 40+yMove, 100, 50, radians(270), radians(360));    //xop Foox
  arc(580-xMove+400, 70+yMove, 100, 50, radians(0), radians(90));    //Bottom foot


  fill(#28340A);
  arc(450-xMove+400, 75+yMove, 100, 50, radians(90), radians(180));
  arc(450-xMove+400, 25+yMove, 100, 50, radians(180), radians(270));
}

void headT3()
{
  fill(#28340A);
  stroke(#28340A);
  arc(427-xMove+400, 50+yMove, 100, 50, radians(180), radians(270));
  arc(427-xMove+400, 50+yMove, 100, 50, radians(90), radians(180));
}

void faceT3()
{
  fill(255);
  stroke(#28340A);
  ellipse(410-xMove+400, 40+yMove, 15, 15);    //top
  ellipse(410-xMove+400, 60+yMove, 15, 15);    //bottom

  fill(0);
  ellipse(410-xMove+400, 40+yMove, 5, 5);
  ellipse(410-xMove+400, 60+yMove, 5, 5);
}


void turtle2()    //Moving right to left but different position 
{

  legsT2();
  bodyT2();
  headT2();
  faceT2();
}

void bodyT2()
{
  fill(#28340A);
  stroke(#28340A);
  arc(500-xMove+250, 155, 150, 109, radians(90), radians(190));
  arc(500-xMove+250, 147, 150, 109, radians(170), radians(270));
  arc(500-xMove+250, 150, 200, 120, radians(0), radians(90));
  arc(500-xMove+250, 152, 200, 120, radians(270), radians(360));

  fill(255);
  quad(450-xMove+250, 135, 500-xMove+250, 135, 500-xMove+250, 165, 450-xMove+250, 165);    //top
  quad(510-xMove+250, 135, 560-xMove+250, 135, 560-xMove+250, 165, 510-xMove+250, 165);    //middle



  arc(500-xMove+250, 125, 100, 50, radians(180), radians(270));    //left top
  arc(500-xMove+250, 170, 100, 50, radians(90), radians(180));    //left bottom

  arc(510-xMove+250, 170, 100, 50, radians(0), radians(90));      //niddle bottom
  arc(510-xMove+250, 125, 100, 50, radians(270), radians(360));    ///middle top

  arc(565-xMove+250, 150, 50, 60, radians(0), radians(90));    //right patter bottom
  arc(565-xMove+250, 150, 50, 60, radians(270), radians(360));  //Right patter top

  fill(#28340A);
  triangle(600-xMove+250, 140, 600-xMove+250, 160, 615-xMove+250, 150);    //Tail
}

void legsT2()
{
  fill(#28340A);
  stroke(#28340A);
  arc(580-xMove+250, 140, 100, 50, radians(270), radians(360));    //xop Foox
  arc(580-xMove+250, 170, 100, 50, radians(0), radians(90));    //Bottom foot


  fill(#28340A);
  arc(450-xMove+250, 175, 100, 50, radians(90), radians(180));
  arc(450-xMove+250, 125, 100, 50, radians(180), radians(270));
}

void headT2()
{
  fill(#28340A);
  stroke(#28340A);
  arc(427-xMove+250, 150, 100, 50, radians(180), radians(270));
  arc(427-xMove+250, 150, 100, 50, radians(90), radians(180));
}

void faceT2()
{
  fill(255);
  stroke(#28340A);
  ellipse(410-xMove+250, 140, 15, 15);    //top
  ellipse(410-xMove+250, 160, 15, 15);    //bottom

  fill(0);
  ellipse(410-xMove+250, 140, 5, 5);
  ellipse(410-xMove+250, 160, 5, 5);
}

void turtle()    //Backwards turtle moving at a slower pace then the other animals
{

  legsT();
  bodyT();
  headT();
  faceT();
}

void bodyT()
{
  fill(#28340A);
  arc(0+(xMove/2), 155, 150, 109, radians(90), radians(190));
  arc(0+(xMove/2), 147, 150, 109, radians(170), radians(270));
  arc(0+(xMove/2), 150, 200, 120, radians(0), radians(90));
  arc(0+(xMove/2), 152, 200, 120, radians(270), radians(360));

  fill(255);
  quad(-50+(xMove/2), 135, 0+(xMove/2), 135, 0+(xMove/2), 165, -50+(xMove/2), 165);    //top
  quad(10+(xMove/2), 135, 60+(xMove/2), 135, 60+(xMove/2), 165, 10+(xMove/2), 165);    //middle



  arc(0+(xMove/2), 125, 100, 50, radians(180), radians(270));    //left top
  arc(0+(xMove/2), 170, 100, 50, radians(90), radians(180));    //left bottom

  arc(10+(xMove/2), 170, 100, 50, radians(0), radians(90));      //niddle bottom
  arc(10+(xMove/2), 125, 100, 50, radians(270), radians(360));    ///middle top

  arc(65+(xMove/2), 150, 50, 60, radians(0), radians(90));    //right patter bottom
  arc(65+(xMove/2), 150, 50, 60, radians(270), radians(360));  //Right patter top

  fill(#28340A);
  triangle(100+(xMove/2), 140, 100+(xMove/2), 160, 115+(xMove/2), 150);    //Tail
}

void legsT()
{
  fill(#28340A);
  arc(80+(xMove/2), 140, 100, 50, radians(270), radians(360));    //xop Foox
  arc(80+(xMove/2), 170, 100, 50, radians(0), radians(90));    //Bottom foot


  fill(#28340A);
  arc(-50+(xMove/2), 175, 100, 50, radians(90), radians(180));
  arc(-50+(xMove/2), 125, 100, 50, radians(180), radians(270));
}

void headT()
{
  fill(#28340A);
  arc(-73+(xMove/2), 150, 100, 50, radians(180), radians(270));
  arc(-73+(xMove/2), 150, 100, 50, radians(90), radians(180));
}

void faceT()
{
  fill(255);

  ellipse(-90+(xMove/2), 140, 15, 15);    //top
  ellipse(-90+(xMove/2), 160, 15, 15);    //bottom

  fill(0);
  ellipse(-90+(xMove/2), 140, 5, 5);
  ellipse(-90+(xMove/2), 160, 5, 5);
}
void whale_3()    //This is Bertha moving at a faster pace in his race against Vinny 
{

  body3();
  face3();
  tail3();
  fins3();
}

void body3()
{
  fill(#244F6B);
  stroke(#244F6B);
  beginShape();
  vertex(900-(xMove*1.4), 375);
  vertex(925-(xMove*1.4), 375);
  vertex(925-(xMove*1.4), 350);
  vertex(1100-(xMove*1.4), 350);
  vertex(1100-(xMove*1.4), 375);
  vertex(1125-(xMove*1.4), 375);
  vertex(1125-(xMove*1.4), 450);
  vertex(925-(xMove*1.4), 450);
  vertex(925-(xMove*1.4), 425);
  vertex(900-(xMove*1.4), 425);
  endShape(CLOSE);

  arc(926-(xMove*1.4), 376, 51, 51, radians(180), radians(270));
  arc(926-(xMove*1.4), 425, 51, 51, radians(90), radians(180));
  arc(1099-(xMove*1.4), 376, 51, 51, radians(270), radians(360));
}

void tail3()
{
  noStroke();
  fill(#244F6B);
  rect(1125-(xMove*1.4), 400, 25, 50);
  arc(1125-(xMove*1.4), 400, 50, 50, radians(270), radians(360));
  quad(1150-(xMove*1.4), 415, 1150-(xMove*1.4), 450, 1200-(xMove*1.4), 450, 1200-(xMove*1.4), 415);

  arc(1249-(xMove*1.4), 430, 100, 100, radians(180), radians(330));
  arc(1249-(xMove*1.4), 430, 100, 100, radians(30), radians(180));
}

void fins3()
{
  fill(#244F6B);
  arc(1013-(xMove*1.4), 450, 50, 50, radians(90), radians(180));
  arc(1025-(xMove*1.4), 450, 50, 50, radians(90), radians(180));
}

void face3()
{
  fill(255);
  ellipse(940-(xMove*1.4), 385, 40, 40);
  fill(0);
  ellipse(940-(xMove*1.4), 385, 20, 20);
  noFill();
  stroke(0);
  bezier(900-(xMove*1.4), 425, 935-(xMove*1.4), 435, 945-(xMove*1.4), 435, 970-(xMove*1.4), 420);
}

void whale_2()      //Bertha moving right to left
{

  body2();
  face2();
  tail2();
  fins2();
}

void body2()
{
  fill(#244F6B);
  stroke(#244F6B);
  beginShape();
  vertex(900-xMove, 375);
  vertex(925-xMove, 375);
  vertex(925-xMove, 350);
  vertex(1100-xMove, 350);
  vertex(1100-xMove, 375);
  vertex(1125-xMove, 375);
  vertex(1125-xMove, 450);
  vertex(925-xMove, 450);
  vertex(925-xMove, 425);
  vertex(900-xMove, 425);
  endShape(CLOSE);

  arc(926-xMove, 376, 51, 51, radians(180), radians(270));
  arc(926-xMove, 425, 51, 51, radians(90), radians(180));
  arc(1099-xMove, 376, 51, 51, radians(270), radians(360));
}

void tail2()
{
  noStroke();
  fill(#244F6B);
  rect(1125-xMove, 400, 25, 50);
  arc(1125-xMove, 400, 50, 50, radians(270), radians(360));
  quad(1150-xMove, 415, 1150-xMove, 450, 1200-xMove, 450, 1200-xMove, 415);

  arc(1249-xMove, 430, 100, 100, radians(180), radians(330));
  arc(1249-xMove, 430, 100, 100, radians(30), radians(180));
}

void fins2()
{
  fill(#244F6B);
  arc(1013-xMove, 450, 50, 50, radians(90), radians(180));
  arc(1025-xMove, 450, 50, 50, radians(90), radians(180));
}

void face2()
{
  fill(255);
  ellipse(940-xMove, 385, 40, 40);
  fill(0);
  ellipse(940-xMove, 385, 20, 20);
  noFill();
  stroke(0);
  bezier(900-xMove, 425, 935-xMove, 435, 945-xMove, 435, 970-xMove, 420);
}

void whale()    //Bertha moving left to right
{
  body();
  face();
  tail();
  fins();
}

void body()
{
  fill(#244F6B);
  stroke(#244F6B);
  beginShape();
  vertex(-300+xMove, 375);
  vertex(-275+xMove, 375);
  vertex(-275+xMove, 350);
  vertex(-50+xMove, 350);
  vertex(-50+xMove, 375);
  vertex(-25+xMove, 375);
  vertex(-25+xMove, 425);
  vertex(-50+xMove, 425);
  vertex(-50+xMove, 450);
  vertex(-300+xMove, 450);
  endShape(CLOSE);
  stroke(#244F6B);
  arc(-274+xMove, 376, 51, 51, radians(180), radians(270));    //Left
  arc(-50+xMove, 376, 51, 51, radians(270), radians(360));    //Top Right
  arc(-50+xMove, 425, 51, 51, radians(0), radians(90));    //Botom right
}

void face()
{

  fill(255);
  ellipse(-65+xMove, 385, 40, 40);
  fill(0);
  ellipse(-65+xMove, 385, 20, 20);
  noFill();
  stroke(0);
  bezier(-26+xMove, 425, -45+xMove, 435, -70+xMove, 435, -100+xMove, 420);
  fill(255);
}

void tail()
{
  fill(#244F6B);
  stroke(#244F6B);
  fill(#244F6B);
  rect(-325+xMove, 400, 25, 50);
  arc(-299+xMove, 401, 51, 51, radians(180), radians(270));

  quad(-325+xMove, 410, -325+xMove, 450, -375+xMove, 450, -375+xMove, 410);

  arc(-425+xMove, 425, 100, 100, radians(0), radians(150));
  arc(-425+xMove, 425, 100, 100, radians(210), radians(360));
}

void fins()
{ 
  fill(#244F6B);
  stroke(#244F6B);
  fill(#244F6B);
  arc(-190+xMove, 440, 75, 75, radians(0), radians(90));
  arc(-212+xMove, 440, 75, 75, radians(0), radians(90));
}
void shark2()
{

  fill(#ACADAE );
  stroke(#C8C8C8);
  rect(1075-xMove+60, 250, 75, 25);
  arc(1000-xMove+60+50, 250, 200, 100, radians(90), radians(180));    //Shark Sketch 
  triangle(1000-xMove+60, 250, 1100-xMove+60, 275, 1000-xMove+60, 300);
  arc(1000-xMove+60, 250, 200, 100, radians(0), radians(180));
  arc(1015-xMove+60, 300, 60, 100, radians(90), radians(180));

  beginShape();
  vertex(1150-xMove+60, 262);
  vertex(1200-xMove+60, 212);
  vertex(1175-xMove+60, 262);
  vertex(1200-xMove+60, 312);
  endShape(CLOSE);

  line(900-xMove+60, 250, 1100-xMove+60, 250);
  arc(1015-xMove+60, 250, 80, 80, radians(180), radians(280));
  noStroke();
  rect(1075-xMove+60, 250, 40, 25);

  stroke(0);
  bezier(918-xMove+60, 278, 930-xMove+60, 286, 935-xMove+60, 286, 948-xMove+60, 270);    //Mouth
  fill(0);
  ellipse(935-xMove+60, 260, 10, 10);
}
void shark3()
{

  fill(#ACADAE );
  stroke(#C8C8C8);

  rect(1075-xMove+200, 250+100, 75, 25);    //The connector between body and tail. 

  arc(1000-xMove+200, 250+100, 200, 100, radians(90), radians(180));    //Shark body

  triangle(1000-xMove+200, 250+100, 1100-xMove+200, 275+100, 1000-xMove+200, 300+100);

  arc(1000-xMove+200, 250+100, 200, 100, radians(0), radians(180));    //The fins
  arc(1015-xMove+200, 300+100, 60, 100, radians(90), radians(180));

  beginShape();    //The shape of the tail 
  vertex(1150-xMove+200, 262+100);
  vertex(1200-xMove+200, 212+100);
  vertex(1175-xMove+200, 262+100);
  vertex(1200-xMove+200, 312+100);
  endShape(CLOSE);

  line(900-xMove+200, 250+100, 1100-xMove+200, 250+100);
  arc(1015-xMove+200, 250+100, 80, 80, radians(180), radians(280));
  noStroke();
  rect(1075-xMove+200, 250+100, 40, 25);

  stroke(0);
  bezier(918-xMove+200, 278+100, 930-xMove+200, 286+100, 935-xMove+200, 286+100, 948-xMove+200, 270+100);    //Mouth
  fill(0);
  ellipse(935-xMove+200, 260+100, 10, 10);    //Eye
}
void shark()
{

  fill(#ACADAE );
  stroke(#C8C8C8);

  rect(1075-xMove, 250, 75, 25);    //The connector between body and tail. 

  arc(1000-xMove, 250, 200, 100, radians(90), radians(180));    //Shark body

  triangle(1000-xMove, 250, 1100-xMove, 275, 1000-xMove, 300);

  arc(1000-xMove, 250, 200, 100, radians(0), radians(180));    //The fins
  arc(1015-xMove, 300, 60, 100, radians(90), radians(180));

  beginShape();    //The shape of the tail 
  vertex(1150-xMove, 262);
  vertex(1200-xMove, 212);
  vertex(1175-xMove, 262);
  vertex(1200-xMove, 312);
  endShape(CLOSE);

  line(900-xMove, 250, 1100-xMove, 250);
  arc(1015-xMove, 250, 80, 80, radians(180), radians(280));
  noStroke();
  rect(1075-xMove, 250, 40, 25);

  stroke(0);
  bezier(918-xMove, 278, 930-xMove, 286, 935-xMove, 286, 948-xMove, 270);    //Mouth
  fill(0);
  ellipse(935-xMove, 260, 10, 10);    //Eye
}
void message_1()
{
  PFont message;
  stroke(255);
  textSize(18);
  noFill();
  rect(200, 100, 275, 100);
  message=createFont("Corbel-16", 16);
  text("Hello, my name is Vinny the Shark.", 200, 125);
  text("I am on an adventure to find my", 200, 150);
  text( "family's buried treasure.", 200, 175);
}
void message_2()
{
  PFont message;
  stroke(255);
  textSize(18);
  noFill();
  rect(500, 177, 250, 51);
  message=createFont("Corbel-16", 16);
  text("Hey Bertha, wanna help me", 500, 200);
  text("find some treasure?", 500, 225);

  rect(300, 275, 50, 30);
  text("Sure!", 300, 300);
}

void message_3()
{
  PFont message;
  stroke(255);
  textSize(18);
  message=createFont("Corbel-16", 16);
  noFill();
  rect(400, 230, 370, 25);
  rect(400, 450, 305, 35);
  text("Hey Chad! Wanna join our treasure hunt?", 400, 250);
  text("Its Vinny's family treasure! Join us!", 400, 475);
}

void message_4()
{
  PFont message;
  stroke(255);
  textSize(18);
  message=createFont("Corbel-16", 16);
  noFill();
  rect(100, 50, 305, 30);
  text("Oh boy, Yes! I''ll invite Skipper,too!", 100, 75);
}

void message_5()
{
  PFont message;
  stroke(255);
  textSize(18);
  noFill();
  rect(100, 50, 375, 30);
  message=createFont("Corbel-16", 16);
  text("You guys go ahead, I will pick up Skipper.", 100, 75);
}

void message_6()
{
  PFont message;
  stroke(255);
  textSize(32);
  noFill();
  message=createFont("Corbel-Bold-16", 16);
  text("Skipper!", 380, 200);
}
void message_7()
{
  PFont message;
  stroke(255);
  textSize(18);
  noFill();
  message=createFont("Corbel-16", 16);
  text("Is that Chad I hear?", 250, 150);
}
void message_8()
{
  PFont message;
  stroke(255);
  textSize(18);
  noFill();
  message=createFont("Corbel-16", 16);
  text("Skipper, catch up! It's treasure hunting time!", 300, 50);

  text("Wait, What? Wait for me!", 100, 400);
}
void message_9()
{
  PFont message;
  stroke(255);
  textSize(40);
  noFill();
  message=createFont("Corbel-16", 16);
  text("Meanwhile with Bertha and Vinny", 100, 250);
}

void message_10()
{
  PFont message;
  stroke(255);
  textSize(18);
  noFill();
  message=createFont("Corbel-16", 16);
  text("Race you to that rock tower Vinny!", 200, 200);
}
void message_11()
{
  PFont message;
  stroke(255);
  textSize(18);
  noFill();
  text("I Win!!", 50, 100);
}
void message_12()
{
  PFont message;
  stroke(255);
  textSize(18);
  noFill();
  text("Hey there's Chad and Skipper.", 200, 200);
  text("Let's meet up with them!", 200, 225);
}
void myBackground3()
{
  middleHill();
  leftStarfish();
}
void middleHill()
{
  stroke(#dbd1b4);
  for (int x =0; x <=225; x +=1) {            //Colouring the Inside of the hills
    strokeWeight(2);
    ellipse(405, 510, 850-x, 225-x);    //Left Most
  }

  stroke( #9f6934);
  noFill();
  strokeWeight(2);      //Giving the hill a darker sand colour border. 
  ellipse(405, 510, 850, 225);
  strokeWeight(1);
}
void leftStarfish()
{

  for (int x=0; x<=30; x+=1)
  {

    stroke(255, 0, 0);
    triangle(171, 395+x, 183, 425, 159, 425); //Top
    triangle(183, 425, 187, 441, 210-x, 425);       //Right Top
    triangle(159, 425, 154, 440, 131+x, 425);     //Left Top
    triangle(154+x, 440, 171, 450, 145, 465); //Left Bottom
    triangle(187-x, 440, 171, 450, 197, 465);     //Right Bottom

    line(159+x, 425, 154+x, 440);    //This line is to colour the pentagon shaped middle of the starfish.
    stroke(0);    //Black
    strokeWeight(4);    //Thick lines for deifining eyes and mouth
    point(165, 430);    //Left Eye
    point(178, 430);//Right Eye
    bezier(165, 437, 168.5, 440, 172, 439, 178, 435);    //The smiler
  }
}
void myBackground2()
{
  backColour();

  leftHill();
  rockTowerLeft();
  airBubbles();
}

void myBackground()    //All the procedures called in void myBackground This is the first one. This will only have the fish. 
{

  backColour();    //The background
  fishRight();
}


void backColour()
{
  float blue = 600;    //The blue colour of the rgb
  float green=280;    //The green colour of the rgb
  for (int x =1; x <=500; x+=1) {    //I created a for loop and use individual lines to create a gradient type background
    stroke(2, green-(x/2), blue-x);    //This decreases the value of the blue by 1 each time and green by 1/2. 
    line(0, 0+x, 800, 0+x);    //The x portion also counts for the y value of the line increasing as it goes down the screen.
  }
}

void fishRight()
{
  int fishSpace=-200;

  stroke(#ffb640);    //Yellow goldfish colour
  for (int x = 0; x <=50; x+=1) {
    strokeWeight(2);
    triangle(575+x, 188, 625, 200, 625, 175); 
    ellipse(575, 188, 50-x, 25-x); 

    triangle(600+x, 150, 650, 162, 650, 138); 
    ellipse(600, 150, 50-x, 25-x); 

    triangle(675+x, 167, 725, 179, 725, 152); 
    ellipse(675, 167, 50-x, 25-x); 

    triangle(575+x, 112, 625, 100, 625, 124); 
    ellipse(575, 112, 50-x, 25-x); 

    triangle(660+x, 112, 710, 100, 710, 124); 
    ellipse(660, 112, 50-x, 25-x); 

    triangle(625+x, 75, 675, 87, 675, 63); 
    ellipse(625, 75, 50-x, 25-x);
  }
  /////////////////////////////////////////These are the fish clsoer to the middle of the screen. I used a variable to make it easier to code and write.
  for (int x = 0; x <=50; x+=1) {

    triangle(575+fishSpace+x, 188, 625+fishSpace, 200, 625+fishSpace, 175); 
    ellipse(575+fishSpace, 188, 50-x, 25-x); 

    triangle(600+fishSpace+x, 150, 650+fishSpace, 162, 650+fishSpace, 138); 
    ellipse(600+fishSpace, 150, 50-x, 25-x); 

    triangle(675+fishSpace+x, 167, 725+fishSpace, 179, 725+fishSpace, 152); 
    ellipse(675+fishSpace, 167, 50-x, 25-x); 

    triangle(575+fishSpace+x, 112, 625+fishSpace, 100, 625+fishSpace, 124); 
    ellipse(575+fishSpace, 112, 50-x, 25-x); 

    triangle(660+fishSpace+x, 112, 710+fishSpace, 100, 710+fishSpace, 124); 
    ellipse(660+fishSpace, 112, 50-x, 25-x); 

    triangle(625+fishSpace+x, 75, 675+fishSpace, 87, 675+fishSpace, 63); 
    ellipse(625+fishSpace, 75, 50-x, 25-x);
  }
}
void leftHill()
{

  stroke(#dbd1b4);    //The light sand colour
  for (int x =0; x <=600; x+=1) {            //Colouring the Inside of the hills
    strokeWeight(2);    //So the lines are thick and it colours properly. This for loop ceates it so that it colours in the sand hills. It deceases the size of the ellipse by one each time
    //and uses the outline , coloured by stroke, of the ellipse to colour the inside of the hill. 
    ellipse(0, 550, 600-x, 300-x);    //Left Most
  }

  stroke( #9f6934);
  noFill();    //No fill so that it does not colour over the light colour of the sand. 
  strokeWeight(2);      //Giving the hill a darker sand colour border. 
  ellipse(0, 550, 600, 300);    //This si the dark brown outline of the hills
  strokeWeight(1);
}
void rockTowerLeft()    //This is the 3 rock tower forming rocks on the left of the sketch. 
{
  stroke(#888c8d );    //The grey colour of the rocks. 

  for (int x=0; x <=150; x+=1) {    //These are individual for loops for each circle. Decreasing the width and height of the individual ellipses and using the outline coloured by stroke to fill in the rocks. 
    ellipse(75, 475, 150-x, 100);    //Bottom
  }
  for (int x = 0; x<=100; x+=1) {
    ellipse(75, 410, 100-x, 75);    //Middle
  }
  for ( int x = 0; x<=50; x+=1) {
    ellipse(75, 360, 50-x, 50);    //Top
  }
}
void airBubbles()
{
  stroke(#b4fcff);    //Light aqua blue colour
  for (int x =0; x<=12; x+=1)
  {
    ellipse(50, 325, 12-x, 12-x); 
    ellipse(140, 250, 12-x, 12-x); 
    ellipse(67, 230, 12-x, 12-x); 
    ellipse(100, 175, 12-x, 12-x); 
    ellipse(125, 100, 12-x, 12-x); 
    ellipse(150, 25, 12-x, 12-x); 
    ellipse(25, 200, 12-x, 12-x); 
    ellipse(75, 175, 12-x, 12-x); 
    ellipse(100, 75, 12-x, 12-x); 
    ellipse(75, 110, 12-x, 12-x); 
    ellipse(60, 25, 12-x, 12-x); 
    ellipse(50, 275, 12-x, 12-x); 
    ellipse(87, 280, 12-x, 12-x); 
    ellipse(550, 25, 12-x, 12-x); 
    ellipse(600, 37, 12-x, 12-x); 
    ellipse(525, 75, 12-x, 12-x);
  }
}
