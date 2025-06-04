import java.util.*;

class stringSort
{
  public static void main(String ar[])
  {
    Scanner sc = new Scanner(System.in);

    System.out.println("Enter a name...");
    String name=sc.nextLine();

    char arr[]=name.toCharArray();

    for(int i=0;i<arr.length;i++)
    {
        for(int j=0;j<arr.length-i-1;j++)
        {
            if(arr[j]>arr[j+1])
            {
                char temp=arr[j];
                arr[j]=arr[j+1];
                arr[j+1]=temp;
            }
        }
    }

    String out= new String(arr);
    System.out.println(out);
  }

}