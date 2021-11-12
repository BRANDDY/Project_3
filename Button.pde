void zoomIn() {
    PImage bigger = createImage(mPX - mX, mPY - mY,RGB);
    bigger.loadPixels();
    strokeWeight(1);
    noFill();
    rect(mX,mY,mPX - mX,mPY - mY);
    for (int x = 0; x < mPX - mX; x++) {
        for (int y = 0; y < mPY - mY; y++) {
            bigger.pixels[x + y * (mPX - mX)] = pixels[x + mX + (y + mY) * width];
        }
    }
    bigger.updatePixels();
    image(bigger,40,40,(mPX - mX) * 2,(mPY - mY) * 2);
}

void distress() {
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
    loadPixels();
    for (int x = 0; x < img.width; x++) {
        for (int y = 0; y < img.height; y++) {
            int loc = x + y * img.width;
            float r;
            r = red(img.pixels[loc]);
            float maxdist = 100;
            float d = dist(x, y, 202, 222);
            float adjustbrightness = 100 * (maxdist - d) / maxdist;
            r += adjustbrightness;
            r = constrain(r, 0, 200);
            color c = color(r);
            pixels[x + 35 + (y + 35) * width] = c;
        }
    }
    updatePixels();
}

void light() {
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