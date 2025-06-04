class Employee {
    String name;
    int age;
    String phoneNumber;
    String address;
    double salary;

    void printSalary() {
        System.out.println("Salary: ₹ " + salary);
    }
}

class Officer extends Employee {
    String specialization;

    void printOfficerDetails() {
        System.out.println("Officer Details:");
        System.out.println("Name: " + name);
        System.out.println("Age: " + age);
        System.out.println("Phone Number: " + phoneNumber);
        System.out.println("Address: " + address);
        System.out.println("Specialization: " + specialization);
        printSalary();
        System.out.println();
    }
}

class Manager extends Employee {
    String department;

    void printManagerDetails() {
        System.out.println("Manager Details:");
        System.out.println("Name: " + name);
        System.out.println("Age: " + age);
        System.out.println("Phone Number: " + phoneNumber);
        System.out.println("Address: " + address);
        System.out.println("Department: " + department);
        printSalary();
        System.out.println();
    }
}

public class TestEmployee {
    public static void main(String[] args) {
        Officer officer = new Officer();
        officer.name = "Rahul Sharma";
        officer.age = 35;
        officer.phoneNumber = "9876543210";
        officer.address = "123, Elm Street";
        officer.salary = 50000;
        officer.specialization = "Software Development";

        Manager manager = new Manager();
        manager.name = "Anita Singh";
        manager.age = 42;
        manager.phoneNumber = "9123456780";
        manager.address = "456, Oak Avenue";
        manager.salary = 75000;
        manager.department = "Human Resources";

        officer.printOfficerDetails();
        manager.printManagerDetails();
    }
}
