import java.util.*;

class cpu {
    int price;

    cpu(int price) {
        this.price = price;
    }

    class processor {
        int core;
        String manufacturer;

        processor(int core, String manufacturer) {
            this.core = core;
            this.manufacturer = manufacturer;
        }
    }

    static class ram {
        String ram;
        String manufacturer;

        ram(String ram, String manufacturer) {
            this.ram = ram;
            this.manufacturer = manufacturer;
        }
    }

    public static void main(String ar[]) {

        // OuterClass obj = new OuterClass(arguments);
        cpu cp = new cpu(10000);  // Creating an object of outer class 'cpu'

        // OuterClass.InnerClass obj = outerObj.new InnerClass(arguments);
        cpu.processor pro = cp.new processor(10, "INTEL");  // Creating an object of non-static inner class 'processor'

        // OuterClass.StaticNestedClass obj = new OuterClass.StaticNestedClass(arguments);
        cpu.ram r = new cpu.ram("4GB", "ACER");  // Creating an object of static nested class 'ram'


        System.out.println("CPU PRICE : " + cp.price);

        System.out.println("\nProcessor INFO :- ");
        System.out.println("CPU Cores : " + pro.core);
        System.out.println("Processor Manufacturer : " + pro.manufacturer);

        System.out.println("\nRAM INFO :- ");
        System.out.println("RAM Size : " + r.ram);
        System.out.println("RAM Manufacturer : " + r.manufacturer);
    }
}
