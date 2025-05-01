import java.util.*;

class exception
{
  public static void main (String [] ar)
  {
    Scanner sc= new Scanner(System.in);
    
    //Arithmetic exception
    try{
        System.out.println("Enter numerator");
        int num=sc.nextInt();
        
        System.out.println("Enter denominator");
        int den=sc.nextInt();
        
        int res=num/den;
        
        System.out.println("Result = "+res); 
    }
    catch(ArithmeticException e){
       System.out.println("Arithmetic Exception Caugth"+e.getMessage()); 
    }
    
    try{
        int arr[]={1,2,3,4};
        
        System.out.println("Enter index");
        int index=sc.nextInt();
        
        System.out.println("Element : "+arr[index]);   
    }
    catch(ArrayIndexOutOfBoundsException e){
        System.out.println("Index out of bound Exception Caugth"+e.getMessage()); 
        
    }
  }
}  
