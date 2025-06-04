import java.util.*;

abstract class Worker
{
   abstract void comPay();
}

class dailyWrkr extends Worker
{
   String name;
   Double salaryrate;
   int hours;
 
    dailyWrkr(String name,Double salaryrate,int hours)
    {
        this.name=name;
        this.salaryrate=salaryrate;
        this.hours=hours;
    }

   void comPay() {
     System.out.println("Daily Worker: " + name);
     System.out.println("Weekly Pay: ₹ " +(salaryrate*(hours/8)));
   }

}

class SalariedWrkr extends Worker
{
    String name;
    Double salaryrate;

     SalariedWrkr(String name,Double salaryrate)
     {
        this.name=name;
        this.salaryrate=salaryrate;
     }

   void comPay() {
     System.out.println("Salaried Worker: " + name);
     System.out.println("Weekly Pay: ₹ " +(salaryrate*7));
   }

}

class DailyWorker
{
    public static void main(String ar[])
    {
        Scanner sc = new Scanner(System.in);

        Worker obj1=new dailyWrkr("Murali",450.0,48);  //name , salaryrate, hour (daily worker)
        Worker obj2=new SalariedWrkr("sam",750.0);  //name , salaryrate (salaried worker)

        obj1.comPay();
        obj2.comPay();

    }
}    