import java.util.*;

class Fib implements Runnable
{

 int count;
  
  int a=0;
  int b=1;
  int c;
  
 Fib(int count){
  this.count=count;
 }
 
 public void run(){
   for(int i=1;i<=count;i++){
     System.out.print(" "+a );
     c=a+b;
     a=b;
     b=c;
   }
 }

}


class Even implements Runnable
{
 int s,e;
 
  Even(int start, int end){
   this.s=start;
   this.e=end;
  }
  
  public void run(){
   System.out.println("\n Even no between : " +s + " & "+ e);
   
   for(int i=s;i<=e;i++){
    if(i%2==0){
      System.out.print(" "+i);
    }
   }
  }
} 


class Main
{
 public static void main (String ar[]){
 Scanner sc = new Scanner(System.in);
 
 System.out.println("Enter the limit");
 int lim= sc.nextInt();
 
 System.out.println("Enter the range (start end)");
 int s= sc.nextInt();
 int e= sc.nextInt();
 
 
 Fib f= new Fib(lim);
 Even even= new Even(s,e);
 
 Thread t2 = new Thread(even); 
 Thread t1= new Thread(f);
 
 
 t1.start();
 t2.start();

}
}
