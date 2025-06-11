import java.util.*;

class sortstring
{
    public static void main(String ar[]){

        Scanner sc= new Scanner(System.in);

        System.out.println("Enter no: of strings:");
        int n= sc.nextInt();

        sc.nextLine(); // consume newline -> otherwise skips one insertion


        String name[]=new String[n];
        System.out.println("Enter the strings:");
        for(int i=0;i<n;i++){
            name[i]=sc.nextLine();
        }

        Arrays.sort(name); 

        System.out.println("Sorted strings:");
        for(String s : name){
            System.out.println(s);
        }


    }
}