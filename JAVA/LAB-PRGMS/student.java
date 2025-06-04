import java.util.*;

class student
{
   public static void main(String arg[]){
 
   Scanner sc= new Scanner(System.in);
   float total=0;

    System.out.println("Enter the no: of Subjects");
    int n=sc.nextInt();

    int marks[]=new int[n];

    System.out.println("Enter the marks");

    for(int i=0;i<n;i++){
        marks[i]=sc.nextInt();
        total+=marks[i];
    }

    float maxMark=n*100; 
    // float percentage=(total/(n*100))*100;
    float percentage=(total/maxMark)*100;

    System.out.println("Total marks = "+total);
    System.out.println("Percentage = "+percentage);

   }  
}