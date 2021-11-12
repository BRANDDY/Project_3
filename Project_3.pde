PImage img;
boolean buttonRain = false;
boolean buttonLight = false;
int mX,mY,mPX,mPY;

void setup() {
    size(640,480,P2D);
    startPage();
}

void draw() {
    img = loadImage("forest.jpg");
    img.resize(370,410);
    img.loadPixels();
    if (buttonRain) {
        painting();
    }
    if (buttonLight){
        light();
    }
    img.updatePixels();
}

void startPage() {
    background(203,213,220);
    PImage imgList;
    
    fill(227,197,180);
    stroke(190,146,96);
    strokeWeight(3);
    rect(440,60,160,60,28);//button 1 
    rect(440,160,160,60,28);//button 2 
    rect(440,260,160,60,28);//button 3
    rect(440,360,160,60,28);//button 4
    strokeWeight(2);
    line(520, 260, 520, 320);//button 3 L&R
    line(520, 360, 520, 420);//button 4 L&R

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
    
    stroke(195,168,119);
    noFill();
    rect(30,30,380,420,10);//imgLocation
}

void piexlload() {
    startPage();
    loadPixels();
    for (int x = 0;x < img.width;x++) {
        for (int y = 0;y < img.height;y++) {
            int loc = x + 35 + (y + 35) * width;
            pixels[loc] = color(img.get(int(x),int(y)));
        }
    }
    updatePixels();
}


