import java.util.*;

class leap
{
    public static void main(String ar[])
    {
      Scanner sc=new Scanner(System.in);

      System.out.println("Enter the starting Range");
      int start=sc.nextInt();

      System.out.println("Enter the Ending Range");
      int end=sc.nextInt();

      System.out.println("Leap years between " + start + " and " + end + " are:");

      for(int i=start;i<=end;i++){
        if(i%400==0 || (i%4==0 && i%100!=0)){
            System.out.println(i);
        }
      }


    }
}