import java.util.*;

abstract class method
{
    abstract void sorts(Scanner sc);
}
class stringSort extends method
{
  void sorts(Scanner sc)
  {
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
    String out=new String(arr);
    System.out.println(out);
     System.out.println("-----------");
  }

}

class stringArraySort extends method
{
  void sorts(Scanner sc)
  {
     System.out.println("Enter the no of name...");
     int n = sc.nextInt();
    sc.nextLine(); // Consume leftover newline

     String arry[]=new String[n];

     for(int i=0;i<n;i++)
     {
       arry[i]=sc.nextLine();
     }

     Arrays.sort(arry);

     for(String s:arry)
     {
        System.out.println(s);
     }
   
  }

}

class main
{
  public static void main(String ar[])
  {
    Scanner sc = new Scanner(System.in);

    stringSort ss=new stringSort();
    stringArraySort sas=new stringArraySort();

    ss.sorts(sc);
    sas.sorts(sc);
  }
}