import java.util.*;

class Shape
{
    void area()
    {
        System.out.println("*****ABSTRACT****");
    }
}

class Rectangle extends Shape
{
  int length,breadth;

  Rectangle(int length,int breadth)
  {
    this.length=length;
    this.breadth=breadth;
  }

  void area(){
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

    void area(){
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

    void area(){
        System.out.println("Area of the Square : "+(side*side));
    }
}

class overRide
{
    public static void main(String[] ar)
    {
        Scanner sc = new Scanner(System.in);

        System.out.println("****Rectangle******");
        System.out.println("Enter the Length And Breadth : ");
        int l = sc.nextInt();
        int b = sc.nextInt();
        Rectangle rect = new Rectangle(l,b);
        rect.area();

        System.out.println("****Circle*****");
        System.out.println("Enter the Radius : ");
        Double r = sc.nextDouble();
        Circle c = new Circle(r);
        c.area();

        System.out.println("****Square*****");
        System.out.println("Enter the side");
        int side = sc.nextInt();
        Square s = new Square(side);
        s.area();
    }
}