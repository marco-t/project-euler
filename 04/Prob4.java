/**
 * A palindromic number reads the same both ways. 
 * The largest palindrome made from the product of 
 * two 2-digit numbers is 9009 = 91 ? 99.
 * 
 * Find the largest palindrome made from the product 
 * of two 3-digit numbers.
 */

public class Prob4
{
    private int num;
    private int pal;
    private String str;
    
    public Prob4(int n)
    {
        num = n; 
        System.out.println("num = " + num);
        
        str = Integer.toString(num);
    }
    
    public int findPalindrome()
    {
        while (!isPalindrome())
        {
            num--;
            str = Integer.toString(num);
        }
        
        System.out.println(num);
        return num;
    }
    
    public void getFactors()
    {
        for (int i = 100; i < 1000; i++)
        {
            if (num % i == 0)
            {
                int j = num / i;
                System.out.println(i + " " + j);
                return;
            }
        }
        
        num--;
    }

    private boolean isPalindrome()
    {
        return ((str.charAt(0) == str.charAt(5)) && 
                (str.charAt(1) == str.charAt(4)) && 
                (str.charAt(2) == str.charAt(3)));
    }
    
    public static void main(String[] args)
    {
        int n = 999*999;
        Prob4 p = new Prob4(n);
        for (int i = 0; i < 100; i++)
        {
            System.out.println(n);
            if (p.isPalindrome())
            {
                p.getFactors();
            }
            n--;
        }
        
        
        
    }
    
}