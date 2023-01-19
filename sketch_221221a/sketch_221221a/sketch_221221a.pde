<<<<<<< HEAD
=======
<<<<<<< HEAD
//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float picWidthAdjusted1=0.0, picHeightAdjusted1=0.0;
float picWidthAdjusted2=0.0, picHeightAdjusted2=0.0;
float picWidthAdjusted3=0.0, picHeightAdjusted3=0.0;
float topHalfX, topHalfY, topHalfWidth, topHalfHeight;
float bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight;
PImage pic, pic2, pic3;
Boolean nightMode=false;
int tintDayMode=255, tintDayModeOpacity=50;
int tintRed=64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85;
//
//library:use sketch/Import Librar/Add library/Minim
=======
//Library: use sketch / Import Library / Add Library / Minim
>>>>>>> a83e8baffddb27c053372375d62d6b54d3953dbf
>>>>>>> 2619e10a72c330f0e4d45ec8ce461ac9293ff534
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
<<<<<<< HEAD
=======
//Global Variables
float appWidth, appHeight;
float textX, textY;
float forwardX, forwardY, forwardWidth, forwardHeight;
float backwardsX, backwardsY, backwardsWidth, backwardsHeight;
float loopX, loopY, loopWidth, loopHeight;
float infiniteLoopX, infiniteLoopY, infiniteLoopWidth, infiniteLoopHeight;
float muteX, muteY, muteWidth, muteHeight;
float playX, playY, playWidth, playHeight;
float stopX, stopY, stopWidth, stopHeight;
float playFireX, playFireY, playFireWidth, playFireHeight;
float stopFireX, stopFireY, stopFireWidth, stopFireHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
PImage fastForward, backwards, loop, infiniteLoop, mute, play, stop, background;
boolean nightMode=false;
color orange = #FF5F1F, nightModeOrange = #FF5F00;
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "play list" variable holding extenstions WAV, AIFF, AU, SND, and MP3
AudioPlayer song2;
//
<<<<<<< HEAD
void setup () {
  size(800, 600); //Remind you of Display Geometry
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("Newsroom.mp3");//able to pass absolute path, file name & extension, and URL
  //
   //
    appWidth = width;
  appHeight = height;
  //Population
  pic = loadImage("pexels-pixabay-326212.jpg");
  pic2 = loadImage("pexels-pixabay-462162.jpg");
 pic3 = loadImage("pexels-sevenstorm-juhaszimrus-381739.jpg");
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-0;
  backgroundImageHeight = appHeight-0;
  topHalfX = appWidth * 1/2;
  topHalfY = appHeight * 1/15;
  topHalfWidth = appWidth * 1/2;
  topHalfHeight = appHeight * 13/20;
  bottomHalfX = appWidth *1/2;
  bottomHalfY = appHeight * 3/4;
  bottomHalfWidth = appWidth * 1/4;
  bottomHalfHeight = appHeight * 4/20;
  //
  
  int picWidth1 = 800; //aspect ratio
  int picHeight1 = 600;
  int picWidth2 = 860; 
  int picHeight2 = 529;
  int picWidth3 = 860;
  int picHeight3 = 529;
  //
  //
  float smallerDimension1, smallerDimension2, smallerDimension3;
  float largerDimension1, largerDimension2, largerDimension3;
  float imageWidthRatio1=0.0, imageHeightRatio1=0.0;
  float imageWidthRatio2=0.0, imageHeightRatio2=0.0;
  float imageWidthRatio3=0.0, imageHeightRatio3=0.0;
  if ( picWidth1 >= picHeight1 ) { //True if Landscape or Square
    largerDimension1 = picWidth1;
    smallerDimension1 = picHeight1;
    //
    picWidthAdjusted1 = backgroundImageWidth; //from rect() layout
    imageHeightRatio1 = smallerDimension1 / largerDimension1;
    picHeightAdjusted1 = picWidthAdjusted1 * imageHeightRatio1;
  } else { //False if Portrait
    largerDimension1 = picHeight1;
    smallerDimension1 = picWidth1;
    //
    picHeightAdjusted1 = backgroundImageHeight; //from rect() layout
    imageWidthRatio1 = smallerDimension1 / largerDimension1;
    picWidthAdjusted1 = picHeightAdjusted1 * imageWidthRatio1;
  }
  if ( picWidth2 >= picHeight2 ) { //True if Landscape or Square
    largerDimension2 = picWidth2;
    smallerDimension2 = picHeight2;
    //
    picWidthAdjusted2 = topHalfWidth; //from rect() layout
    imageHeightRatio2 = smallerDimension2 / largerDimension2;
    picHeightAdjusted2 = picWidthAdjusted2 * imageHeightRatio2;
  } else { //False if Portrait
    largerDimension2 = picHeight2;
    smallerDimension2 = picWidth2;
    //
    picHeightAdjusted2 = topHalfHeight; //from rect() layout
    imageWidthRatio2 = smallerDimension2 * largerDimension2;
    picWidthAdjusted2 = picHeightAdjusted2 / imageWidthRatio2;
  }
  if ( picWidth3 >= picHeight3 ) { //True if Landscape or Square
    largerDimension3 = picWidth3;
    smallerDimension3 = picHeight3;
    //
    picWidthAdjusted3 = bottomHalfWidth; //from rect() layout
    imageHeightRatio3 = smallerDimension3 / largerDimension3;
    picHeightAdjusted3 = picWidthAdjusted3 * imageHeightRatio3;
  } else { //False if Portrait
    largerDimension3 = picHeight3;
    smallerDimension3 = picWidth3;
    //
    picHeightAdjusted3 = bottomHalfHeight; //from rect() layout
    imageWidthRatio3 = smallerDimension3 / largerDimension3;
    picWidthAdjusted3 = picHeightAdjusted3 * imageWidthRatio3;
  }
  //
  //Rectangular Layout and Image Drawing to CANVAS
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( topHalfX, topHalfY, topHalfWidth, topHalfHeight ); //Top Half
  rect( bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight ); //Bottom half
  //
  //Background Image must be single executed code
  if ( nightMode == false ) tint(tintDayMode, tintDayModeOpacity); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
  if ( nightMode == true ) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //RGB: Night Mode
  //image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
  //
}//End setup
//
void draw() {
   image( pic2, topHalfX, topHalfY, picWidthAdjusted2, picHeightAdjusted2 );
  image( pic3, bottomHalfX, bottomHalfY, picWidthAdjusted3, picHeightAdjusted3);
}//End draw
//
void keyPressed() {
  //if ( key=='P' || key=='p' ) song1.play(); //Parameter is milli-seconds from start of audio file to start playing (illustrate with examples)
  if ( key=='P' || key=='p' ) {//Play Pause Stop Button
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length()-song1.length()*1/5 ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }//End Play Pause STop Button
  int loopNum = 2; //Local Variable plays once and loops twice
  if ( key=='L' || key=='l' ) song1.loop(loopNum-1); //Parameter is Parameter is number of repeats
  if ( key=='I' || key=='i' ) song1.loop(-1); //Parameter is for infinite loops
  if ( key=='F' || key=='f' ) song1.skip(1000); //skip forward 1 second (1000 milliseconds)
  if ( key=='R' || key=='r' ) song1.skip(-1000); //skip backwards 1 second, notice negative, (1000 milliseconds)
  if ( key=='M' || key=='m' ) {//MUTE Button
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End MUTE Button
  if ( key=='S' || key=='s' ) {//STOP Button
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind(); //Cue SONG to play from beginning
    } else {
      song1.rewind(); //Not playing means song is paused or song position is at the end of the file
    }
  }//End STOP Button
  
}//End keyPressed
//
void mouseClicked() {
 //Mouse Pressed will control background image
  if (mouseButton == LEFT) {
    nightMode = false;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(tintDayMode, tintDayModeOpacity); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
    image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
    //
  }
  if (mouseButton == RIGHT) {
    nightMode = true;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //RGB: Night Mode
    image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
=======
void setup() {
  size(1200, 900);
  appWidth = width;
  appHeight = height;
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("Newsroom"); //able to pass absolute path, file name & extension, and URL
  song2 = minim.loadFile("Little Samba - Quincas Moreira");
  //population
  textX = appWidth * 7/20;
  textY = appHeight * 2/20;
  forwardX = appWidth * 8.5/20;
  forwardY = appHeight * 4/20;
  forwardWidth = appWidth * 3/20;
  forwardHeight = appHeight * 2/20;
  fastForward = loadImage ("../22wednesday-review-mediumSquareAt3X/fastforward.png");
  backwardsX = appWidth * 8.5/20;
  backwardsY = appHeight * 7/20;
  backwardsWidth = appWidth * 3/20;
  backwardsHeight = appHeight * 2/20;
  backwards = loadImage ("../22wednesday-review-mediumSquareAt3X/rewind.png");
  loopX = appWidth * 8.5/20;
  loopY = appHeight * 10/20;
  loopWidth = appWidth * 3/20;
  loopHeight = appHeight * 2/20;
  loop = loadImage ("../22wednesday-review-mediumSquareAt3X/loop.jpg");
  infiniteLoopX = appWidth * 8.5/20;
  infiniteLoopY = appHeight * 13/20;
  infiniteLoopWidth = appWidth * 3/20;
  infiniteLoopHeight = appHeight * 2/20;
  infiniteLoop = loadImage ("../22wednesday-review-mediumSquareAt3X/infiniteLoop.png");
  muteX = appWidth * 8.5/20;
  muteY = appHeight * 16/20;
  muteWidth = appWidth * 3/20;
  muteHeight = appHeight * 2/20;
  mute = loadImage ("../22wednesday-review-mediumSquareAt3X/muteUnmute.png");
  playX = appWidth * 4.5/20;
  playY = appHeight * 4/20;
  playWidth = appWidth * 3/20;
  playHeight = appHeight * 2/20;
  play = loadImage ("../22wednesday-review-mediumSquareAt3X/play.png");
  stopX = appWidth * 12.5/20;
  stopY = appHeight * 4/20;
  stopWidth = appWidth * 3/20;
  stopHeight = appHeight * 2/20;
  stop = loadImage ("..//stop.png");
  playFireX = appWidth * 4.5/20;
  playFireY = appHeight * 7/20;
  playFireWidth = appWidth * 3/20;
  playFireHeight = appHeight * 2/20;
  stopFireX = appWidth * 4.5/20;
  stopFireY = appHeight * 10/20;
  stopFireWidth = appWidth * 3/20;
  stopFireHeight = appHeight * 2/20;
}//End setup
//
void draw() {
  //background(orange);
  if (nightMode==true) {
    background(nightModeOrange);
  } else {
    background(orange);
  }
  fill(0);
  textSize(60);
  text("Music Player", textX, textY);
  rect(forwardX, forwardY, forwardWidth, forwardHeight);
  image(fastForward, forwardX, forwardY, forwardWidth, forwardHeight);
  rect(backwardsX, backwardsY, backwardsWidth, backwardsHeight);
  image(backwards, backwardsX, backwardsY, backwardsWidth, backwardsHeight);
  rect(loopX, loopY, loopWidth, loopHeight);
  image(loop, loopX, loopY, loopWidth, loopHeight);
  rect(infiniteLoopX, infiniteLoopY, infiniteLoopWidth, infiniteLoopHeight);
  image(infiniteLoop, infiniteLoopX, infiniteLoopY, infiniteLoopWidth, infiniteLoopHeight);
  rect(muteX, muteY, muteWidth, muteHeight);
  image(mute, muteX, muteY, muteWidth, muteHeight);
  rect(playX, playY, playWidth, playHeight);
  image(play, playX, playY, playWidth, playHeight);
  rect(stopX, stopY, stopWidth, stopHeight);
  image(stop, stopX, stopY, stopWidth, stopHeight);
  fill(0, 255, 0);
  rect(playFireX, playFireY, playFireWidth, playFireHeight);
  fill(0);
  textSize(40);
  text("Play Fire", playFireX, playFireY, playFireWidth, playFireHeight);
  fill(255, 0, 0);
  rect(stopFireX, stopFireY, stopFireWidth, stopFireHeight);
  fill(0);
  textSize(40);
  text("Stop Fire", stopFireX, stopFireY, stopFireWidth, stopFireHeight);
}//End draw
//
void keyPressed() {
  if (key == 'N' || key == 'n') {
    if (nightMode==false) {
      nightMode=true;
    } else {
      nightMode=false;
    }
  }
}//End keyPressed
//
void mousePressed() {
  int loopNum = 2; //local variable plays once loops twice
  if ( mouseX > forwardX && mouseX < forwardX+forwardWidth && mouseY > forwardY && mouseY < forwardY+forwardHeight ) song1.skip(1000); //skip forward 1 second (1000 milliseconds)
  if ( mouseX > backwardsX && mouseX < backwardsX+backwardsWidth && mouseY > backwardsY && mouseY < backwardsY+backwardsHeight ) song1.skip(-1000); //skip backwards 1 second, notice negative, (1000 milliseconds)
  if ( mouseX > loopX && mouseX < loopX+loopWidth && mouseY > loopY && mouseY < loopY+loopHeight ) song1.loop(loopNum);
  if ( mouseX > infiniteLoopX && mouseX < infiniteLoopX+infiniteLoopWidth && mouseY > infiniteLoopY && mouseY < infiniteLoopY+infiniteLoopHeight ) song1.loop(-1); // parameter is for infinite loops
  if ( mouseX > muteX && mouseX < muteX+muteWidth && mouseY > muteY && mouseY < muteY+muteHeight ) {
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }
  if ( mouseX > playX && mouseX < playX+playWidth && mouseY > playY && mouseY < playY+playHeight ) {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length()-song1.length()*1/5 ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
  if ( mouseX > stopX && mouseX < stopX+stopWidth && mouseY > stopY && mouseY < stopY+stopHeight ) {
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind(); // Cue SONG to play from beginning
    } else {
      song1.rewind(); //Not playing means song is paused or song posistion is at the end
    }
  }
  if ( mouseX > playFireX && mouseX < playFireX+playFireWidth && mouseY > playFireY && mouseY < playFireY+playFireHeight ) {
    if ( song2.isPlaying() ) {
      song2.pause();
    } else if ( song2.position() >= song2.length()-song2.length()*1/5 ) {
      song2.rewind();
      song2.play();
    } else {
      song2.play();
    }
  }
  if ( mouseX > stopFireX && mouseX < stopFireX+stopFireWidth && mouseY > stopFireY && mouseY < stopFireY+stopFireHeight ) {
    if ( song2.isPlaying() ) {
      song2.pause();
      song2.rewind(); // Cue SONG to play from beginning
    } else {
      song2.rewind(); //Not playing means song is paused or song posistion is at the end
    }
>>>>>>> a83e8baffddb27c053372375d62d6b54d3953dbf
  }
}//End mousePressed
//
//End main program
>>>>>>> 2619e10a72c330f0e4d45ec8ce461ac9293ff534
