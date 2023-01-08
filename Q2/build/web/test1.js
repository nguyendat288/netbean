class Circle {
    constructor(x, y) {
        this.x = x
        this.y = y;

    }

    drawCircle(pen) {
        pen.beginPath()
        pen.arc(this.x, this.y,10, 0, Math.PI * 2);
        pen.fillStyle = "blue";
        pen.fill();
        pen.closePath();
    }
}

