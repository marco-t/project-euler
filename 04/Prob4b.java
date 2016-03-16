public class Prob4b
{
    private int num;
    private int i;
    private String str;
    private Stack<Integer> stack;
    
    public Prob4b(int n)
    {
        num = n;
        i = 100000;
        str = Integer.toString(i);
        stack = new Stack<Integer>();
    }
    
    public void stackPals()
    {
        
        while (i < num)
        {
            if (isPalindrome())
            {
                stack.push(i);
            }
            i++;
            str = Integer.toString(i);
        }
    }
    
    public void getFactors()
    {
        int temp = stack.pop();
        for (int i = 100; i <= 999; i++)
        {
            if (temp % i == 0)
            {
                int j = temp / i;
                if (j < 999)
                {
                    System.out.println(temp + " " + i + "x" + j);
                }
            }
        }
        
    }
    
    private void stackPop()
    {
        System.out.println(stack.pop());
    }
    
    private boolean isPalindrome()
    {
        return ((str.charAt(0) == str.charAt(5)) && 
                (str.charAt(1) == str.charAt(4)) && 
                (str.charAt(2) == str.charAt(3)));
    }
    
    public static void main(String[] args)
    {
        int n = 999 * 999;
        Prob4b p = new Prob4b(n);
        for (int i = 0; i < 105; i++)
        {
            p.stackPals();
            p.getFactors();
        }

    }
}