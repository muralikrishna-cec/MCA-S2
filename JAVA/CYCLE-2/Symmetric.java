import java.util.*;

class Symmetric
{
    static int[][] matRead(Scanner x, int r, int c){
      int mat [][] = new int[r][c];

      System.out.println("Enter matrix values (" + r + "x" + c + "):");

      for(int i=0;i<r;i++){
        for(int j=0;j<c;j++){
            mat[i][j]=x.nextInt();
        }
      }
      return mat;
    }

    static boolean isSymmetric(int mat[][],int row,int col){
       if(row != col){
        return false;
       }

       for(int i=0;i<row;i++){
        for(int j=0;j<col;j++){
            if(mat[i][j]!=mat[j][i]){
                return false;
            }
        }
       }
       return true;
    }

    public static void main (String ar[]){
        Scanner sc= new Scanner(System.in);

        System.out.println("Enter the rows :-");
        int row=sc.nextInt();

        System.out.println("Enter the cols :-");
        int col=sc.nextInt();

        int mat[][]=matRead(sc,row,col);

        if(isSymmetric(mat,row,col)){
             System.out.println("The matrix is Symmetric.");
        }
        else{
            System.out.println("The matrix is Not Symmetric.");
        }
    }
}