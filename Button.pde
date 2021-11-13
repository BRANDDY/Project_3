void zoomIn() {
    strokeWeight(1);//show the seclect area
    noFill();
    rect(mX,mY,mPX - mX,mPY - mY);

    img.loadPixels();
    PImage bigger = createImage(mPX - mX, mPY - mY,RGB);
    bigger.loadPixels();
    //load org img on the "img plate"
    //copy the piexl of select area to top left
    for (int x = 0; x < mPX - mX; x++) {
        for (int y = 0; y < mPY - mY; y++) {
            bigger.pixels[x + y * (mPX - mX)] = pixels[x + mX + (y + mY) * width];
        }
    }
    bigger.updatePixels();
    image(bigger,40,40,(mPX - mX) * 2,(mPY - mY) * 2);
}

void distress() {
    img.loadPixels();
    image(img, 35, 35);
    for (int i = 0;i < (img.width * img.height / 7); i ++) {
        int loc = int(random(img.width * img.height));
        img.pixels[loc] = color(100);
    }
    img.updatePixels();
}

void complementary() {
    image(img, 35, 35);
    img.loadPixels();
    for (int i = 0;i < img.width * img.height;i++) {
        img.pixels[i] = 255 - img.pixels[i];
    }
    img.updatePixels();
}

void painting() {
    for (int i = 0;i < 90000;i++) {
        float x = random(0,360);
        float y = random(0,400);
        color c = img.get(int(x),int(y));
        fill(c);
        noStroke();
        ellipse(x + 40, y + 40, 6, 6);
    }
}

void movie() {
    img.loadPixels();
    loadPixels();
    for (int x = 0; x < img.width; x++) {
        for (int y = 0; y < img.height; y++) {
            int loc = x + y * img.width;
            float r = red(img.pixels[loc]);
            float maxdist = 100;
            float d = dist(x, y, 202, 222);
            float brightness = 100 * (maxdist - d) / maxdist;
            r += brightness;
            r = constrain(r, 0, 200);
            pixels[x + 35 + (y + 35) * width] = color(r);
        }
    }
    updatePixels();
}

void light() {
    img.loadPixels();
    loadPixels();
    for (int x = 0; x < img.width; x++) {
        for (int y = 0; y < img.height; y++) {
            int loc = x + y * img.width;
            float r,g,b;
            r = red(img.pixels[loc]);
            b = blue(img.pixels[loc]);
            g = green(img.pixels[loc]);
            float maxdist = 60;
            float d = dist(x, y, mouseX, mouseY);
            float brightness = 240 * (maxdist - d) / maxdist;
            pixels[x + 35 + (y + 35) * width] = color(r+brightness,g+brightness,b+brightness);
        }
    }
    updatePixels();
}