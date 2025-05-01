import java.util.*;

interface Shape
{
   void area();
   void perimeter();
}

class Circle implements Shape
{
  Double r;

  Circle(Double r)
  {
    this.r=r;
  }

  public void area(){
    System.out.println("Area of the Circle : "+(Math.PI*r*r));
  }

  public void perimeter(){
    System.out.println("Perimeter of the Circle : "+(2*Math.PI*r));
  }
}

class Rectangle implements Shape
{
    int length,breadth;

    Rectangle(int l, int b)
    {
        this.length=l;
        this.breadth=b;
    }

  public void area(){
    System.out.println("Area of the Rectangle : "+(length*breadth));
  }

  public void perimeter(){
    System.out.println("Perimeter of the Rectangle : "+(2*(length*breadth)));
  }

}

class InterfaceShapeMenu
{
    public static void main (String[] ar)
    {
        Scanner sc = new Scanner(System.in);
        int choice;

        do{
        System.out.println("******MENU********");
        System.out.println(" 1 -> Circle \n 2 -> Rectangle \n 3 -> Exit");

        System.out.println("Enter the choice");
        choice = sc.nextInt();

        switch(choice)
        {
            case 1 : System.out.println("****Circle****\nEnter the radius");
                     Double radius= sc.nextDouble();
                     Circle c= new Circle(radius);
                     c.area();
                     c.perimeter();
                     break;

            case 2 : System.out.println("****Rectangle****\nEnter the length & breadth");
                     int length= sc.nextInt();
                     int breadth= sc.nextInt();
                     Rectangle r= new Rectangle(length,breadth);
                     r.area();
                     r.perimeter();
                     break;

            case 3 : System.out.println("exiting.........");   
                     break;       

            default : System.out.println("Invalid choice. Try again.");               
        }
            
        }while(choice!=3);

    }
}