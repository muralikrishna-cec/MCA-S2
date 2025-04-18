import java.util.*;

class complex
{
    public static void main(String ar[])
    {
    Scanner sc = new Scanner(System.in);

    System.out.println("Enter the first complex no:");

    System.out.println("Enter the Real part:");
    int real1=sc.nextInt();

    System.out.println("Enter the  Imaginary part");
    int img1=sc.nextInt();

    System.out.println("Enter the second complex no:");

    System.out.println("Enter the Real part:");
    int real2=sc.nextInt();

    System.out.println("Enter the  Imaginary part");
    int img2=sc.nextInt();

    System.out.println("Sum of two comlex no " + (real1+real2) + "+" + (img1+img2) + "i");
    }
}