// Jackson Payne | 25 Sept 2023 | Conversion App

void setup() {
  size(500, 500);
}

void draw () {
  background(200);
  //Title and Description
  fill(0);
  textAlign(CENTER);
  textSize(30);
  text("Conversion App | by Jackson Payne", width/2, 40);

  //User Instructions

  //Reference Line and Labels
  line(100, 100, 100, height);
  line(300, 100, 300, height);
  textSize(20);
  text("Euro to USD", 90, 80);
  text("USD to Euro", 290, 80);

  //Tic marks with Numbers
  for (int i = 100; i<height; i+=20) {
    line(95, i, 105, i);
    line(295, i, 305, i);
    textSize(13);
    text(height-i, 85, i+4);
    text(height-i, 285, i+4);
  }

  //Dynamic value altered by mouseX or mouseY
  if (mouseX<260 && mouseY>100 && mouseY<499) {
    fill(255, 75, 75);
    rect(110, mouseY, 30, height-mouseY);
    textSize(10);
    text(euroToUsd(height-mouseY), 126, mouseY-3);
    fill(255);
    text("USD", 126, mouseY+20);
  } else if (mouseX>250 && mouseY>100 && mouseY<499) {
    fill(178, 255, 244);
    rect(310, mouseY, 30, height-mouseY);
    textSize(10);
    text(usdToEuro(height-mouseY), 326, mouseY-3);
    fill(0);
    text("Euro", 326, mouseY+20);
  }

  println("Euro:" + mouseX + " USD:" + euroToUsd(mouseX));
  println("USD:" + mouseX + " Euro:" + usdToEuro(mouseX));
}

float euroToUsd(float val) {
  val = (val * 1.0563);
  return val;
}

float usdToEuro(float val) {
  val = (val * 0.942541);
  return val;
}
