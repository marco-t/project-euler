public class Euler1 {
    private int[] N;
    
    public Euler1(int n) {
        N = new int[n];
        for (int i = 0; i < n; i++) {
            N[i] = i;
            
                
        }
    }
    
    public int sumMultiples(int x, int y) {
        int sum = 0;
        for (int i = 1; i < N.length; i++) {
            if ((N[i] % x == 0) || (N[i] % y == 0)) {
                sum = sum + N[i];
            }
        }
        return sum;
    }
    
    public static void main(String[] args) {
        Euler1 mark = new Euler1(1000);
        System.out.println(mark.sumMultiples(3, 5));
    }
}