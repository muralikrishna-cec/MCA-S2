import java.util.*;

class Employe {
    int Empid;
    String Name;
    float Salary;
    String Address;

    Employe(int Empid, String Name, float Salary, String Address) {
        this.Empid = Empid;
        this.Name = Name;
        this.Salary = Salary;
        this.Address = Address;
    }
}

class Teacher extends Employe {
    String department;
    String Subject;

    Teacher(int Empid, String Name, float Salary, String Address, String department, String Subject) {
        super(Empid, Name, Salary, Address); 
        this.department = department;
        this.Subject = Subject;
    }

    void display() {
        System.out.println("\n--- Teacher Details ---");
        System.out.println("ID       : " + Empid);
        System.out.println("Name     : " + Name);
        System.out.println("Salary   : " + Salary);
        System.out.println("Address  : " + Address);
        System.out.println("Department: " + department);
        System.out.println("Subject  : " + Subject);
    }

    public static void main(String ar[]) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number of Teachers: ");
        int n = sc.nextInt();
        sc.nextLine(); 

        Teacher teachers[] = new Teacher[n];

        for (int i = 0; i < n; i++) {
            System.out.println("\nEnter details for Teacher " + (i + 1));

            System.out.print("Emp ID: ");
            int empId = sc.nextInt();
            sc.nextLine(); // Consume newline

            System.out.print("Name: ");
            String name = sc.nextLine();

            System.out.print("Salary: ");
            float salary = sc.nextFloat();
            sc.nextLine(); // Consume newline

            System.out.print("Address: ");
            String address = sc.nextLine();

            System.out.print("Subject: ");
            String subject = sc.nextLine();

            System.out.print("Department: ");
            String dept = sc.nextLine();

            teachers[i] = new Teacher(empId, name, salary, address, dept, subject);
        }

        System.out.println("\n\n=== Teacher Information ===");
        for (Teacher teacher : teachers) {
            teacher.display();
        }

    }
}
