import java.io.*;
import java.util.Scanner;

class FileReadWrite {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        try {
            // Get input from user
            System.out.println("Enter text to write into the file:");
            String userInput = sc.nextLine();

            // Write to the file
            FileWriter fw = new FileWriter("destination.txt");
            fw.write(userInput);
            fw.close();

            // Read from the file
            FileReader fr = new FileReader("destination.txt");
            int content;
            System.out.println("\nContents of the file:");
            while ((content = fr.read()) != -1) {
                System.out.print((char) content);
            }
            fr.close();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            sc.close(); 
        }
    }
}


