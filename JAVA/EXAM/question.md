## IMPORTANT QUESTIONS - ABSTRACT CLASS BASED PROGRAMS

---

### 1. Abstract Vehicle Example
- Create an abstract class `Vehicle` with abstract methods `start()` and `stop()`.
- Implement subclasses `Car` and `Motorcycle` which implement the abstract methods.
- Create a `Driver` class which contains a list of `Vehicle` objects with methods to start and stop all vehicles.

### 2. Abstract Shape Example
- Create an abstract class `Shape` with abstract methods `getArea()` and `getPerimeter()`.
- Subclasses: `Rectangle` and `Circle` implement the abstract methods.
- `Square` extends `Rectangle` and overrides the necessary methods.

### 3. Abstract BankAccount Example
- Create an abstract class `BankAccount` with abstract methods `deposit()` and `withdraw()`.
- Subclasses: `SavingsAccount` and `CheckingAccount` implement the abstract methods.
- Create a `Customer` class that holds a list of `BankAccount` objects and has methods to display balances, deposit, and withdraw money.

### 4. Account Interest Example
- Create an abstract class `Account` with abstract method `calculateInterest()`.
- Implement `SavingsAccount` and `CurrentAccount` which override `calculateInterest()`.
- Create objects and test interest calculations.

### 5. Abstract Marks Percentage Example
- Create an abstract class `Marks` with abstract method `getPercentage()`.
- Class `A` takes 3 subject marks; class `B` takes 4 subject marks in their constructors.
- Both override `getPercentage()` to compute and print the result.

### 6. Employee Salary Example
- Abstract class `Employee` with abstract methods `calculateSalary()` and `displayEmployeeDetails()`.
- Subclasses: `Manager` and `Worker` implement these methods.
- `SalesPerson` extends `Manager` and overrides required methods.
- Test all class behaviors.

### 7. Worker Weekly Pay Example with Polymorphism
- Abstract class `Worker` with name and salary rate.
- Abstract method `comPay()`.
- `DailyWorker` calculates pay based on hours worked converted to days.
- `SalariedWorker` gets fixed weekly wage.
- Use **dynamic polymorphism** to call the `comPay()` method on different types of workers and compute weekly pay.

---

> These questions are designed to strengthen understanding of **abstract classes**, **inheritance**, **polymorphism**, and **method overriding** in Java.
