abstract class Vehicle {
    abstract void start();
    abstract void stop();
}

class Car extends Vehicle {
    String name;

    Car(String name) {
        this.name = name;
    }

    void start() {
        System.out.println(name + " Car is starting.");
    }

    void stop() {
        System.out.println(name + " Car is stopping.");
    }
}

class Motorcycle extends Vehicle {
    String name;

    Motorcycle(String name) {
        this.name = name;
    }

    void start() {
        System.out.println(name + " Motorcycle is starting.");
    }

    void stop() {
        System.out.println(name + " Motorcycle is stopping.");
    }
}

class Driver {
    Vehicle[] vehicles;

    Driver(Vehicle[] vehicles) {
        this.vehicles = vehicles;
    }

    void startAllVehicles() {
        for (Vehicle v : vehicles) {
            v.start();
        }
    }

    void stopAllVehicles() {
        for (Vehicle v : vehicles) {
            v.stop();
        }
    }
}

public class TestVehicle {
    public static void main(String[] args) {
        Vehicle car1 = new Car("Toyota");
        Vehicle moto1 = new Motorcycle("Honda");

        Vehicle[] myVehicles = {car1, moto1};

        Driver driver = new Driver(myVehicles);

        System.out.println("Starting all vehicles:");
        driver.startAllVehicles();

        System.out.println("\nStopping all vehicles:");
        driver.stopAllVehicles();
    }
}
