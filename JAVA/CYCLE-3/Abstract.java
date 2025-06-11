import java.util.*;

abstract class Shape
{
    abstract void findArea();
    
}

class Rectangle extends Shape
{
  int length,breadth;

  Rectangle(int length,int breadth)
  {
    this.length=length;
    this.breadth=breadth;
  }

  void findArea(){
    System.out.println("Area of the Rectangle : "+(length*breadth));
  }
}

class Circle extends Shape
{
    Double r;

    Circle(Double r)
    {
        this.r=r;
    }

    void findArea(){
        System.out.println("Area of the Circle : "+(Math.PI*r*r));
    }
}

class Square extends Shape
{
    int side;

    Square(int side)
    {
        this.side=side;
    }

    void findArea(){
        System.out.println("Area of the Square : "+(side*side));
    }
}

class Abstract
{
    public static void main(String[] ar)
    {
        Scanner sc = new Scanner(System.in);

        System.out.println("****Rectangle******");
        System.out.println("Enter the Length And Breadth : ");
        int l = sc.nextInt();
        int b = sc.nextInt();
        Shape rect = new Rectangle(l,b);
        rect.findArea();

        System.out.println("****Circle*****");
        System.out.println("Enter the Radius : ");
        Double r = sc.nextDouble();
        Circle c = new Circle(r);
        c.findArea();

        System.out.println("****Square*****");
        System.out.println("Enter the side");
        int side = sc.nextInt();
        Shape s = new Square(side);
        s.findArea();
    }
}