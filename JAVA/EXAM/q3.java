// Abstract class BankAccount
abstract class BankAccount {
    protected double balance;

    BankAccount(double balance) {
        this.balance = balance;
    }

    abstract void deposit(double amount);
    abstract void withdraw(double amount);
    double getBalance() {
        return balance;
    }
}

// SavingsAccount class
class SavingsAccount extends BankAccount {
    SavingsAccount(double balance) {
        super(balance);
    }

    void deposit(double amount) {
        balance += amount;
        System.out.println("Deposited ₹" + amount + " to Savings Account");
    }

    void withdraw(double amount) {
        if (balance >= amount) {
            balance -= amount;
            System.out.println("Withdrew ₹" + amount + " from Savings Account");
        } else {
            System.out.println("Insufficient funds in Savings Account!");
        }
    }
}

// CheckingAccount class
class CheckingAccount extends BankAccount {
    CheckingAccount(double balance) {
        super(balance);
    }

    void deposit(double amount) {
        balance += amount;
        System.out.println("Deposited ₹" + amount + " to Checking Account");
    }

    void withdraw(double amount) {
        if (balance >= amount) {
            balance -= amount;
            System.out.println("Withdrew ₹" + amount + " from Checking Account");
        } else {
            System.out.println("Insufficient funds in Checking Account!");
        }
    }
}

// Customer class
class Customer {
    String name;
    BankAccount account;

    Customer(String name, BankAccount account) {
        this.name = name;
        this.account = account;
    }

    void showBalance() {
        System.out.println(name + "'s Account Balance: ₹" + account.getBalance());
    }

    void depositMoney(double amount) {
        account.deposit(amount);
    }

    void withdrawMoney(double amount) {
        account.withdraw(amount);
    }
}

// Test class
public class BankApp {
    public static void main(String[] args) {
        // Create a customer with a savings account
        Customer c1 = new Customer("Anjali", new SavingsAccount(5000));
        c1.showBalance();
        c1.depositMoney(2000);
        c1.withdrawMoney(3000);
        c1.showBalance();

        System.out.println("-----------------------------");

        // Create another customer with a checking account
        Customer c2 = new Customer("Rahul", new CheckingAccount(3000));
        c2.showBalance();
        c2.depositMoney(1000);
        c2.withdrawMoney(4000);
        c2.showBalance();
    }
}
