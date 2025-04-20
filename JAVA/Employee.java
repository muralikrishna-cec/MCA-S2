import java.util.*;

class Employee
{
  int eNo;
  String eName;
  int Salary;

  void readDetails(Scanner x){
    System.out.println("Enter the Employees eNo : ");
    eNo=x.nextInt();

    x.nextLine(); // Consume newline

    System.out.println("Enter the  Employees eName : ");
    eName=x.next();
    System.out.println("Enter the  Employees Salary : ");
    Salary=x.nextInt();

  }

  void display(){
    System.out.println(" eNo : " +eNo);
    System.out.println(" eName : " +eName);
    System.out.println(" Salary : " +Salary);
  }


  public static void main(String ar[])
  {
    Scanner sc = new Scanner(System.in);

    System.out.println("Enter the number of Employees");
    int n = sc.nextInt();

    Employee [] obj=new Employee[n];

    for(int i=0;i<n;i++){
        System.out.println("\nEnter details for Employee " + i );
        obj[i]=new Employee();
        obj[i].readDetails(sc);
    }

    System.out.println("Enter the eNo of Employee to search..");
    int key = sc.nextInt();

    boolean flag=false;

    for(int i=0;i<n;i++){
        if(obj[i].eNo==key){
            obj[i].display();
            flag=true;
            break;
        }
    }
    if(!flag){
         System.out.println("Employee not found");
    }


  }
}