import java.util.*;

class Mul extends Thread {
  int n;
  
  Mul(int n) {
   this.n =n;
  }
  
  public void run() {
    System.out.println("Multiplication Table of "+ n);
    for(int i=1;i<=10;i++) {
      System.out.println(i + "*"+ n +"="+i*n);
    }
  }
}


class Prime extends Thread {
 int n;
  Prime(int n) {
   this.n = n;
  }
  
  int count =0,num=2;
  
  public void run(){
     
   while(count != n) {
     if(isPrime(num)){
        System.out.println(num);
        count++;
     }
     num++;
   }
   
  }
  
   boolean isPrime(int n) {
      
          for(int i=2;i * i <= n;i++) {
             if(n%i==0){
                return false;
              }
           
          } 
          return true;
     }
}



class Main {
  public static void main(String ar[]){
  
  Scanner sc = new Scanner(System.in);
  
   System.out.println("Enter a no :");
   int n= sc.nextInt();
   
   System.out.println("Enter the Limit :");
   int lim= sc.nextInt();
   
   Mul m = new Mul(n);
   Prime p =new Prime(lim);
   
   p.start();
  
   m.start();
  }
}
