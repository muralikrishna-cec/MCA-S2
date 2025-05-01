import java.util.*;

class NegativeNumberException extends Exception
{
  NegativeNumberException(String msg){
    super(msg);
  }
}

class customexception
{
 public static void main(String ar[])
 {
   Scanner sc=new Scanner(System.in);
   int sum=0,count=0;
 
   System.out.println("Enter a limit");
   int n=sc.nextInt();
   

      for(int i=0;i<n;i++){
         System.out.println("Enter the number");
         int num=sc.nextInt();
      try{
         if(num<0){
            throw new NegativeNumberException(" : Negative number Entered "+num);
         }
         else{
             sum+=num;
             count++;
         }
      }
      catch(NegativeNumberException e){
        System.out.println(" Exception"+e.getMessage());
      } 
   }
   
   
   if(count >0){
     System.out.println("Average : "+(sum/count));
   }
   else{
    System.out.println(" Not a positive valid number");
   }

 }
}
