abstract class Account {
    double balance;

    // Constructor to initialize balance
    Account(double balance) {
        this.balance = balance;
    }

    // Abstract method to be implemented by subclasses
    abstract void calculateInterest();
}

// SavingsAccount: earns 4% interest
class SavingsAccount extends Account {
    SavingsAccount(double balance) {
        super(balance);
    }

    void calculateInterest() {
        double interest = balance * 0.04;
        System.out.println("Savings Account Interest: ₹" + interest);
    }
}

// CurrentAccount: earns 1% interest (for demo)
class CurrentAccount extends Account {
    CurrentAccount(double balance) {
        super(balance);
    }

    void calculateInterest() {
        double interest = balance * 0.01;
        System.out.println("Current Account Interest: ₹" + interest);
    }
}

// Test class
public class AccountTest {
    public static void main(String[] args) {
        // Create objects using dynamic polymorphism
        Account savings = new SavingsAccount(10000);
        Account current = new CurrentAccount(10000);

        savings.calculateInterest();
        current.calculateInterest();
    }
}
