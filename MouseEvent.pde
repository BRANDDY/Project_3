void mousePressed() {
    mX = mouseX;
    mY = mouseY;
}
void mouseReleased() {
    if (mouseX > 440 &&  mouseX < 600 &&  mouseY > 60 &&  mouseY < 120) {
        startPage();
        buttonRain = false;
        buttonLight = false;
        distress();
    }
    if (mouseX > 440 &&  mouseX < 600 &&  mouseY > 160 &&  mouseY < 220) {
        startPage();
        buttonRain = false;
        buttonLight = false;
        complementary();
    }
    if (mouseX > 440 &&  mouseX < 520 &&  mouseY > 260 &&  mouseY < 320) {
        startPage();
        buttonRain = false;
        buttonLight = false;
        painting();
    }
    if (mouseX > 520 &&  mouseX < 600 &&  mouseY > 260 &&  mouseY < 320) {
        buttonLight = false;
        startPage();
        buttonRain = true;
    }
    if (mouseX > 40 &&  mouseX < 400 &&  mouseY > 40 &&  mouseY < 440) {
        buttonRain = false;
        buttonLight = false;
        piexlload();
        mPX = mouseX;
        mPY = mouseY;
        zoomIn();
    }
    if (mouseX > 440 &&  mouseX < 520 &&  mouseY > 360 &&  mouseY < 420) {
        startPage();
        buttonRain = false;
        buttonLight = false;
        movie();
    }
    if (mouseX > 520 &&  mouseX < 600 &&  mouseY > 360 &&  mouseY < 420) {
        startPage();
        buttonRain = false;
        buttonLight = true;
        light();
    }
}