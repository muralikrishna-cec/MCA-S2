import java.util.*;

class sortchar
{
    public static void main(String ar[]){

        Scanner sc= new Scanner(System.in);
        
        System.out.println("Enter a String");
        String in=sc.nextLine();

        char arr[]=in.toCharArray();

        for(int i=0;i<arr.length;i++){
            for(int j=0;j<arr.length-i-1;j++){
                if(arr[j]>arr[j+1]){
                    char temp= arr[j];
                    arr[j]=arr[j+1];
                    arr[j+1]=temp;
                }
            }
        }

        System.out.print("Sorted characters: ");

       /* for(char c:arr){
            System.out.print(c);
        }*/
        
        String out= new String(arr);
        System.out.print(out);

        System.out.println();
    }
}