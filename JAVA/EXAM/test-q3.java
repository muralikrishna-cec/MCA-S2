import java.util.Scanner;

class MatrixA {
    int[][] matrix1;
    int[][] matrix2;
    int rows, cols;

    MatrixA(int rows, int cols) {
        this.rows = rows;
        this.cols = cols;
        matrix1 = new int[rows][cols];
        matrix2 = new int[rows][cols];
    }

    void inputMatrices(Scanner sc) {
        System.out.println("Enter elements of first matrix:");
        for (int i = 0; i < rows; i++)
            for (int j = 0; j < cols; j++)
                matrix1[i][j] = sc.nextInt();

        System.out.println("Enter elements of second matrix:");
        for (int i = 0; i < rows; i++)
            for (int j = 0; j < cols; j++)
                matrix2[i][j] = sc.nextInt();
    }

    // Addition of two matrices
    void Calculation() {
        int[][] sum = new int[rows][cols];
        System.out.println("Sum of matrices:");
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                sum[i][j] = matrix1[i][j] + matrix2[i][j];
                System.out.print(sum[i][j] + " ");
            }
            System.out.println();
        }
    }
}

class MatrixB extends MatrixA {

    int[][] matrix;  // matrix for checking symmetry
    int size;        // for symmetric matrix size (square)

    MatrixB(int size) {
        super(size, size);
        this.size = size;
        matrix = new int[size][size];
    }

    void inputMatrixForSymmetry(Scanner sc) {
        System.out.println("Enter elements of matrix to check symmetry:");
        for (int i = 0; i < size; i++)
            for (int j = 0; j < size; j++)
                matrix[i][j] = sc.nextInt();
    }

    // Check if matrix is symmetric
    void Calculation() {
        boolean symmetric = true;
        for (int i = 0; i < size && symmetric; i++) {
            for (int j = 0; j < size; j++) {
                if (matrix[i][j] != matrix[j][i]) {
                    symmetric = false;
                    break;
                }
            }
        }

        if (symmetric) {
            System.out.println("The matrix is symmetric.");
        } else {
            System.out.println("The matrix is NOT symmetric.");
        }
        System.out.println("Transpose of the matrix:");
        printTranspose();
    }

    void printTranspose() {
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                System.out.print(matrix[j][i] + " ");
            }
            System.out.println();
        }
    }
}

public class MatrixTest {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Input dimensions for addition matrices
        System.out.println("Enter number of rows and columns for addition:");
        int rows = sc.nextInt();
        int cols = sc.nextInt();

        // Create single object of MatrixB which extends MatrixA
        MatrixB obj = new MatrixB(rows);

        // Input matrices for addition (from MatrixA)
        obj.inputMatrices(sc);
        obj.Calculation();  // addition

        // Input matrix for symmetry check (MatrixB)
        obj.inputMatrixForSymmetry(sc);
        obj.Calculation();  // check symmetry + print transpose

        sc.close();
    }
}
