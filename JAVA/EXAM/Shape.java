abstract class Shapes
{
    abstract void numberOfSides();
}
class Rectangle extends Shapes
{
    void numberOfSides()
    {
       System.out.println("Rectangle has 4 sides");
    }
   
}
class Triangle extends Shapes
{
     void numberOfSides()
    {
       System.out.println("Triangle has 3 sides");
    }
}
class Hexagon extends Shapes
{
     void numberOfSides()
    {
       System.out.println("Hexagon has 6 sides");
    }
}

class Shape
{
  public static void main(String ar[])
  {
    Shapes obj1=new Rectangle();
    Shapes obj2=new Triangle();
    Shapes obj3=new Hexagon();

    obj1.numberOfSides();
    obj2.numberOfSides();
    obj3.numberOfSides();

  }
}