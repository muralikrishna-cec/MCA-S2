import java.util.*;

class Student
{
  int rollno;
  String name;
  int mark[]=new int[5];

  void read(Scanner sc)
  {
    System.out.println("Enter a name...");
    name=sc.nextLine();

    System.out.println("Enter a Roll No...");
    rollno=sc.nextInt();

    System.out.println("Enter Marks Of 5 ...");
    for(int i=0;i<mark.length;i++)
    {
        mark[i]=sc.nextInt();
    }
    sc.nextLine();
  }

   void display()
   {
    System.out.println();
    System.out.println("Name : "+name);
   
    System.out.println("Roll No : "+rollno);
    
    System.out.print("Marks: ");
    for(int i :mark)
    {
        System.out.print(i +" ");
    }
    System.out.println();
   }



  public static void main(String ar[])
  {
    Scanner sc = new Scanner(System.in);
    Student students[]=new Student[2];

    for(int i=0;i<2;i++)
    {
        students[i]=new Student();
        students[i].read(sc);
    }

    for(Student s :students)
    {
        s.display();
    }
  }
}  