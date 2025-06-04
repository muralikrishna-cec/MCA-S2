import java.util.*;

// Abstract class
abstract class Employee {
    String name;
    int empId;
    double salary;

    Employee(String name, int empId) {
        this.name = name;
        this.empId = empId;
    }

    abstract void calculateSalary();
    abstract void displayEmployeeDetails();
}

// Subclass Manager
class Manager extends Employee {
    double basicPay;
    double allowance;

    Manager(String name, int empId, double basicPay, double allowance) {
        super(name, empId);
        this.basicPay = basicPay;
        this.allowance = allowance;
    }

    void calculateSalary() {
        salary = basicPay + allowance;
    }

    void displayEmployeeDetails() {
        System.out.println("\nManager Details:");
        System.out.println("Name: " + name);
        System.out.println("ID: " + empId);
        System.out.println("Salary: ₹ " + salary);
    }
}

// Subclass Worker
class Worker extends Employee {
    int hoursWorked;
    double hourlyRate;

    Worker(String name, int empId, int hoursWorked, double hourlyRate) {
        super(name, empId);
        this.hoursWorked = hoursWorked;
        this.hourlyRate = hourlyRate;
    }

    void calculateSalary() {
        salary = hoursWorked * hourlyRate;
    }

    void displayEmployeeDetails() {
        System.out.println("\nWorker Details:");
        System.out.println("Name: " + name);
        System.out.println("ID: " + empId);
        System.out.println("Salary: ₹ " + salary);
    }
}

// Subclass SalesPerson (extends Manager)
class SalesPerson extends Manager {
    double commission;

    SalesPerson(String name, int empId, double basicPay, double allowance, double commission) {
        super(name, empId, basicPay, allowance);
        this.commission = commission;
    }

    @Override
    void calculateSalary() {
        salary = basicPay + allowance + commission;
    }

    @Override
    void displayEmployeeDetails() {
        System.out.println("\nSalesPerson Details:");
        System.out.println("Name: " + name);
        System.out.println("ID: " + empId);
        System.out.println("Salary: ₹ " + salary);
    }
}

// Main class
public class EmployeeTest {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        Employee e1 = new Manager("Anu", 101, 20000, 5000);
        Employee e2 = new Worker("Ravi", 102, 40, 250);
        Employee e3 = new SalesPerson("Meera", 103, 15000, 3000, 4000);

        e1.calculateSalary();
        e2.calculateSalary();
        e3.calculateSalary();

        e1.displayEmployeeDetails();
        e2.displayEmployeeDetails();
        e3.displayEmployeeDetails();
    }
}
