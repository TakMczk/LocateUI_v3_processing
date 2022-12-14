void setup() {
size(400, 800);
}

void draw() {
background(255);

// (200, 400)の点とマウスカーソルを結ぶ線を描画
stroke(0);
line(200, 400, mouseX, mouseY);

// (200,400)を中心とする半径50の円を描画
noFill();
ellipse(200, 400, 100, 100);

// pを計算
PVector p = new PVector(200, 400);
PVector mouse = new PVector(mouseX, mouseY);
PVector dir = PVector.sub(mouse, p);
dir.setMag(50);
p.add(dir);

// pを中心とする半径100の円を描画
ellipse(p.x, p.y, 200, 200);
}
