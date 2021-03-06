PImage img;
boolean buttonRain = false;
boolean buttonLight = false;
boolean dotMove = true;
int mX,mY,mPX,mPY;//mouse position

void setup() {
    size(640,480,P2D);
    startPage();
    logo = loadImage("logo.png");
    loadDot();
}

void draw() {
    img = loadImage("forest.jpg");
    img.resize(370,410);
    if (buttonRain) {
        painting();//rain 
    }
    if (buttonLight) {
        light();
    }
    /*if (dotMove) {
        for (int i=0;i<dots.size();i++) {
            dots.get(i).update();
        }
    }*/
}

void startPage() {
    background(203,213,220);
    PImage imgList;
    //button plates
    fill(227,197,180);
    stroke(190,146,96);
    strokeWeight(3);
    rect(440,60,160,60,28);//Distress 
    rect(440,160,160,60,28);//Complementary 
    rect(440,260,160,60,28);//button 3
    rect(440,360,160,60,28);//button 4
    strokeWeight(2);
    line(520, 260, 520, 320);//Paint & Rain
    line(520, 360, 520, 420);//Movie & Light
    //button name
    PFont font;
    font = loadFont("BernardMT-Condensed-48.vlw");
    fill(135,115,105);
    textFont(font,23);
    text("Distress", 485, 98);
    text("Complementary", 455, 198);
    text("Paint", 460, 298);
    text("Rain", 540, 298);
    text("Movie", 460, 398);
    text("Light", 540, 398);
    textSize(15);
    text("Box Select to Zoom In",150,28);
    //img plate
    stroke(195,168,119);
    noFill();
    rect(30,30,380,420,10);
}

//load img on the "img plate" 
void piexlload() {
    startPage();
    img.loadPixels();
    loadPixels();
    for (int x = 0;x < img.width;x++) {
        for (int y = 0;y < img.height;y++) {
            int loc = x + 35 + (y + 35) * width;
            pixels[loc] = color(img.get(int(x),int(y)));
        }
    }
    updatePixels();
}


