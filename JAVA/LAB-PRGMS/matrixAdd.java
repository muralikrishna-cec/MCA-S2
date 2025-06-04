import java.util.*;

class matrixAdd {

    static int[][] readMatrix(Scanner sc, int rows, int cols) {  // Method to read a matrix
        int[][] mat = new int[rows][cols];
        System.out.println("Enter matrix values (" + rows + "x" + cols + "):");

        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                mat[i][j] = sc.nextInt();
            }
        }
        return mat;
    }

    static int[][] addMatrices(int[][] a, int[][] b, int rows, int cols) { // Method to add two matrices
        int[][] sum = new int[rows][cols];

        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                sum[i][j] = a[i][j] + b[i][j];
            }
        }
        return sum;
    }

    static void printMatrix(int[][] mat, String title) { // Method to print a matrix
        System.out.println(title);
        for (int[] row : mat) {
            for (int val : row) {
                System.out.print(val + "\t");
            }
            System.out.println();
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number of rows: ");
        int rows = sc.nextInt();
        System.out.print("Enter number of columns: ");
        int cols = sc.nextInt();

        int[][] matrix1 = readMatrix(sc, rows, cols);
        int[][] matrix2 = readMatrix(sc, rows, cols);

        int[][] result = addMatrices(matrix1, matrix2, rows, cols);
        printMatrix(matrix1, "\nMatrix 1:");
        printMatrix(matrix2, "\nMatrix 2:");
        printMatrix(result, "\nSum of Matrix 1 and Matrix 2:");
    }
}
