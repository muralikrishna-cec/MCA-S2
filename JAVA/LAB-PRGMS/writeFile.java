import java.io.*;

class writeFile
{
 public static void main(String ar[]){
    String source="samp.txt";
    String destination="destination.txt";
    
    //copying file
    try(FileReader r = new FileReader(source); FileWriter w = new FileWriter(destination)){
           
           int content;
           while((content = r.read()) != -1){
              w.write(content);
           }
           System.out.println("File copied sucessfully");

    }
    catch(IOException e){
       e.printStackTrace();
    }
    
    //Read after copying
    try(FileReader r =new FileReader("destination.txt")){
       
       int content;
       while((content=r.read()) != -1){
          System.out.print((char)content);
       }
    }
    catch(IOException e){
        e.printStackTrace();
    }
 }
}
