PImage logo;
ArrayList<Dot> dots = new ArrayList<Dot>();

void loadDot() {
    logo.loadPixels();
    for (int w = 0;w < logo.width;w += 5) {
        for (int h = 0;h < logo.height;h += 5) {
            int loc = w + h * logo.width;
            color c = logo.pixels[loc];
            if (c == 0 &&  w % 10 ==  0 &&  h % 10 ==  0) {//////logo background(move available)
                Dot dot = new Dot(w,h,c);
                dots.add(dot);
            } else if (c!= 0) {//////////logo text
                fill(c);
                strokeWeight(0.8);
                circle(w + 35, h + 35, random(3,6));
            }
        }
    }
}

class Dot{
    PVector location, target,position;
    color dotColor;
    float speed,dotSize;
    Dot(int w,int h, color c) {
        setdotBegin(w,h, c);
        creatDot();
    }
    void setdotBegin(int w, int h, color c) {
        dotSize = random(0.5,3);
        speed = 0.5;
        location = new PVector(w,h);
        position = location;
        dotColor = c;
    }
    void creatDot() {
        fill(100);
        strokeWeight(0.8);
        circle(position.x + 35, position.y + 35, dotSize);
    }
    void update() {
        PVector mousePos = new PVector(mouseX,mouseY);
        target = new PVector(position.x + int(random( -1,1)),position.y + int(random( -1,1)));
        if (PVector.dist(position,mousePos)<10) {
            println("aaa");
            PVector dir = PVector.sub(target,position);
            dir.normalize(); 
            dir.mult(1);
            position.add(dir);
        } else if (PVector.dist(position,location)>0.01) {
            PVector dir = PVector.sub(position,location);
            dir.normalize(); 
            dir.mult(1);
            position.add(dir);
        }
        //startPage();
        //creatDot(); 
    }
}
