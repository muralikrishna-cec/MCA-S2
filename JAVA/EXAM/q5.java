// Abstract class
abstract class Marks {
    // Abstract method
    abstract double getPercentage();
}

// Class A: 3 subjects
class A extends Marks {
    int mark1, mark2, mark3;

    // Constructor
    A(int m1, int m2, int m3) {
        mark1 = m1;
        mark2 = m2;
        mark3 = m3;
    }

    // Implement getPercentage
    double getPercentage() {
        int total = mark1 + mark2 + mark3;
        return (total / 300.0) * 100;
    }
}

// Class B: 4 subjects
class B extends Marks {
    int mark1, mark2, mark3, mark4;

    // Constructor
    B(int m1, int m2, int m3, int m4) {
        mark1 = m1;
        mark2 = m2;
        mark3 = m3;
        mark4 = m4;
    }

    // Implement getPercentage
    double getPercentage() {
        int total = mark1 + mark2 + mark3 + mark4;
        return (total / 400.0) * 100;
    }
}

// Test class
public class StudentPercentageTest {
    public static void main(String[] args) {
        // Creating objects of A and B
        Marks studentA = new A(80, 90, 85);
        Marks studentB = new B(70, 75, 80, 90);

        // Displaying percentages
        System.out.println("Student A Percentage: " + studentA.getPercentage() + "%");
        System.out.println("Student B Percentage: " + studentB.getPercentage() + "%");
    }
}
