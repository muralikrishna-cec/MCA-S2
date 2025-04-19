import java.util.*;

class search
{
    static int []matRead(Scanner x,int n){
        int mat[]=new int[n];

        System.out.println("Enter the  values");

        for(int i=0;i<n;i++){
            mat[i]=x.nextInt();
        }
        return mat;
    }

    static boolean find(int arr[],int key){

        for(int i=0;i<arr.length;i++){
            if(arr[i]==key){
                System.out.println("Key founded at index : "+i+" (0 - based indexing)");
                return true;
            }
        }
        return false;
    }

    public static void main(String ar[]){
        Scanner sc=new Scanner(System.in);

        System.out.println("Enter the number of values");
        int n=sc.nextInt();

        int arr[]=matRead(sc,n);

        System.out.println("Enter the key to search");
        int key=sc.nextInt();

        if(!find(arr,key)){
            System.out.println("Key not founded");
        }
    }
}