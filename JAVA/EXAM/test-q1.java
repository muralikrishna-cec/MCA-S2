class Addition {

    // Method to add two integers (basic arithmetic addition)
    int add(int a, int b) {
        return a + b;
    }

    // Method to add two complex numbers (represented by real and imaginary parts)
    Complex add(Complex c1, Complex c2) {
        int real = c1.real + c2.real;
        int imag = c1.imag + c2.imag;
        return new Complex(real, imag);
    }
}

class Complex {
    int real, imag;

    Complex(int real, int imag) {
        this.real = real;
        this.imag = imag;
    }

    void display() {
        System.out.println(real + " + " + imag + "i");
    }
}

public class TestAddition {
    public static void main(String[] args) {
        Addition addition = new Addition();

        // Basic arithmetic addition
        int sum = addition.add(10, 20);
        System.out.println("Sum of integers: " + sum);

        // Complex number addition
        Complex c1 = new Complex(3, 4);
        Complex c2 = new Complex(5, 7);
        Complex result = addition.add(c1, c2);
        System.out.print("Sum of complex numbers: ");
        result.display();
    }
}
