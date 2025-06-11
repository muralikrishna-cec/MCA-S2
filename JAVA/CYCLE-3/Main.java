import java.util.*;

class Person 
{
    String Name,Address,Gender;
    int age;

    Person(String name,String address,String gender,int age)
    {
        this.Name=name;
        this.Address=address;
        this.Gender=gender;
        this.age=age;
    }
}

class Employee extends Person
{
    int Empid,salary;
    String cmpName,qualification;

    Employee(String name,String address,String gender,int age,int empid,int salary,String cmpName,String qualification)
    {
       super(name,address,gender,age);
       this.Empid=empid;
       this.salary=salary;
       this.cmpName=cmpName;
       this.qualification=qualification;
    }
}

class Teacher extends Employee
{
    String department,subject;
    int teacherId;

    Teacher(String name,String address,String gender,int age,int empid,int salary,String cmpName,String qualification,String depatment,String subject,int teacherId)
    {
      super(name,address,gender,age,empid,salary,cmpName,qualification);
      this.department=depatment;
      this.subject=subject;
      this.teacherId=teacherId;
    }

    void display()
    {
        System.out.println("============ TEACHER DETAILLS ================");
        System.out.println("******* Person ******");
        System.out.println("Name : "+Name);
        System.out.println("Address : "+Address);
        System.out.println("Gender : "+Gender);
        System.out.println("AGE : "+age);

        System.out.println("******* Employee ******");
        System.out.println("EMPLOYEE ID : "+Empid);
        System.out.println("QUALIFICATION : "+qualification);
        System.out.println("COMPANY NAME : "+cmpName);
        System.out.println("SALARY : "+salary);

        System.out.println("******* Teacher ******");
        System.out.println("TEACHER ID : "+teacherId);
        System.out.println("SUBJECT : "+subject);
        System.out.println("DEPARTMENT : "+department);

    }
}

class Main
{
   public static void main (String[] ar)
    {
        Scanner sc = new Scanner(System.in);
         
        System.out.println("Enter the no: of Teachers");
        int n = sc.nextInt();
        sc.nextLine();

        Teacher[] teachers = new Teacher[n];

        for(int i=0;i<n;i++)
        {
            System.out.println("******* Enter Teacher Details : ****** ");

            System.out.println("Enter the Name : ");
            String name= sc.nextLine();

            System.out.println("Enter the Address : ");
            String address = sc.nextLine();

            System.out.println("Enter the Gender : ");
            String gender=sc.nextLine();

            System.out.println("Enter the Age : ");
            int age = sc.nextInt();

            System.out.println("Enter the Employee ID : ");
            int empid= sc.nextInt();
            sc.nextLine();

            System.out.println("Enter the Qualification : ");
            String qualification=sc.nextLine();

            System.out.println("Enter the Company Name : ");
            String cmpName=sc.nextLine();

            System.out.println("Enter the Salary : ");
            int salary=sc.nextInt();

            System.out.println("Enter the Teacher ID : ");
            int teacherId=sc.nextInt();
            sc.nextLine();

            System.out.println("Enter the Subject taught : ");
            String subject=sc.nextLine();

            System.out.println("Enter the Department : ");
            String depatment=sc.nextLine();

            teachers[i]=new Teacher(name,address,gender,age,empid,salary,cmpName,qualification,depatment,subject,teacherId);
        }

        for( Teacher t : teachers)
        {
            t.display();
        }
    }
}