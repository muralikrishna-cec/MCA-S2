abstract class Shape {
    abstract double getArea();
    abstract double getPerimeter();
}

// Rectangle subclass
class Rectangle extends Shape {
    double length, breadth;

    Rectangle(double length, double breadth) {
        this.length = length;
        this.breadth = breadth;
    }

    double getArea() {
        return length * breadth;
    }

    double getPerimeter() {
        return 2 * (length + breadth);
    }
}

// Circle subclass
class Circle extends Shape {
    double radius;

    Circle(double radius) {
        this.radius = radius;
    }

    double getArea() {
        return Math.PI * radius * radius;
    }

    double getPerimeter() {
        return 2 * Math.PI * radius;
    }
}

// Square subclass extending Rectangle
class Square extends Rectangle {

    Square(double side) {
        super(side, side);
    }

    // Optional override (not necessary if Rectangle methods suffice)
    @Override
    double getArea() {
        return length * length;
    }

    @Override
    double getPerimeter() {
        return 4 * length;
    }
}

// Test class
public class ShapeTest {
    public static void main(String[] args) {
        Shape r = new Rectangle(5, 3);
        Shape c = new Circle(4);
        Shape s = new Square(6);

        System.out.println("Rectangle Area: " + r.getArea());
        System.out.println("Rectangle Perimeter: " + r.getPerimeter());

        System.out.println("Circle Area: " + c.getArea());
        System.out.println("Circle Perimeter: " + c.getPerimeter());

        System.out.println("Square Area: " + s.getArea());
        System.out.println("Square Perimeter: " + s.getPerimeter());
    }
}
