import java.util.*;

class Area
{
    // Area of Rectangle: length * breadth
    float area(float l, float b){
        return l*b;
    }

    // Area of Circle: π * radius^2
    Double area(Double r){
        return 3.14*r*r;
    }

    // Area of Square: side * side
    int area(int s){
        return s*s;
    }
   
   public static void main(String ar[])
   {
    Scanner sc = new Scanner(System.in);
    Area a = new Area();

    System.out.println("*** RECTANGLE *** \n Enter the length and Breadth of Rectangle : ");
    float length=sc.nextFloat();
    float breadth=sc.nextFloat();
    System.out.println(a.area(length,breadth));

    System.out.println("*** Circle *** \n Enter the radius of Circle :");
    Double radius=sc.nextDouble();
    System.out.println(a.area(radius));

    System.out.println("*** Square *** \n Enter the side of Square :");
    int side=sc.nextInt();
    System.out.println(a.area(side));

   }
}