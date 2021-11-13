void mousePressed() {
    mX = mouseX;
    mY = mouseY;
}
void mouseReleased() {
    if (mouseX > 440 &&  mouseX < 600 &&  mouseY > 60 &&  mouseY < 120) {
        startPage();
        buttonRain = false;
        buttonLight = false;
        distress();///////////////////button1: make like a broken picture
    }
    if (mouseX > 440 &&  mouseX < 600 &&  mouseY > 160 &&  mouseY < 220) {
        startPage();
        buttonRain = false;
        buttonLight = false;
        complementary();///////////////button2: complementary color
    }
    if (mouseX > 440 &&  mouseX < 520 &&  mouseY > 260 &&  mouseY < 320) {
        startPage();
        buttonRain = false;
        buttonLight = false;
        painting();///////////////////button3L: make like painting
    }
    if (mouseX > 520 &&  mouseX < 600 &&  mouseY > 260 &&  mouseY < 320) {
        buttonLight = false;
        startPage();
        buttonRain = true;////////////button3R: make painting move, like rainning 
    }
    if (mouseX > 440 &&  mouseX < 520 &&  mouseY > 360 &&  mouseY < 420) {
        startPage();
        buttonRain = false;
        buttonLight = false;
        movie();/////////////////////button4L: black and white
    }
    if (mouseX > 520 &&  mouseX < 600 &&  mouseY > 360 &&  mouseY < 420) {
        startPage();
        buttonRain = false;
        buttonLight = true;
        light();/////////////////////button4R: like using electric torch (control by mouse)
    }
    if (mouseX > 40 &&  mouseX < 400 &&  mouseY > 40 &&  mouseY < 440) {
        buttonRain = false;
        buttonLight = false;
        piexlload();
        mPX = mouseX;
        mPY = mouseY;
        zoomIn();///////////////////make the selected area bigger(box select by mouse)
    }
}