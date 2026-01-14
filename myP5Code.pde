//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
var StripeY1 = 100
var StripeY2 = 100
var CloudX = 0
let w = color(255,255,255);

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
    fill(255,255,255);
    stroke(255,255,255)
    rect(110,0,90,400);

    //red
    stroke(255,0,0);
    strokeWeight(40);
    line(100,StripeY1 - 200,200,StripeY2 - 100);
    line(100,StripeY1      ,200,StripeY2 + 100);
    line(100,StripeY1 + 200,200,StripeY2 + 300);
    line(100,StripeY1 + 400,200,StripeY2 + 500);
    line(100,StripeY1 + 600,200,StripeY2 + 700);

    //blue
    stroke(0,0,255);
    strokeWeight(40);
    line(100,StripeY1 - 100,200,StripeY2);
    line(100,StripeY1 + 100,200,StripeY2 + 200);
    line(100,StripeY1 + 300,200,StripeY2 + 400);
    line(100,StripeY1 + 500,200,StripeY2 + 600);
    line(100,StripeY1 + 700,200,StripeY2 + 800);

    StripeY1 -= 1
    StripeY2 -= 1

    if (StripeY1 == -500){
        StripeY1 = 100
    }
    if (StripeY2 == -500){
        StripeY2 = 100
    }


    //clouds?
    stroke(w);
    fill(w);
    ellipse(CloudX + 400,50,140,100);
    ellipse(CloudX + 320,80,80,80);
    ellipse(CloudX + 500,70,60,60);

    CloudX += 0.05

    if (CloudX == 400) {
        CloudX = -70
    }


    //technically bg
    stroke(0,0,0);
    strokeWeight(2);
    fill(125, 50, 36)
    rect(-10,-10,120,500);
    rect(190,-10,100,500);

    stroke(125, 50, 36);
    rect(100,0,100,50);
    rect(100,350,100,50);

    //pole metal aprts
    stroke(0,0,0);
    fill(74, 74, 74);
    rect(105,10,90,40);
    rect(100,40,100,20);

    triangle(150,30,130,50,170,50)

    rect(105,310,90,40);
    rect(100,300,100,20);


  //Show x y values when mousepressed
  if(mousePressed){showXYPositions();}

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
