import java.io.*;

class readFile
{
 public static void main(String ar[]) {
  
  try{
    FileReader fr= new FileReader("destination.txt");
    
    int content;
    while((content=fr.read()) != -1){
         System.out.print((char)content);
    }
   }
   catch(IOException e){
       e.printStackTrace();
   }
  
 } 

}

