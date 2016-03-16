/** 
 
 * The prime factors of 13195 are 5, 7, 13 and 29.
 * What is the largest prime factor of the number 600851475143 ?

*/

// This program freezes. Possibly runs out of memory
public class LargestPrimeFactor
{
    private long largestPrimeFactor = 0;
    private long N;
    
    public LargestPrimeFactor(long n)
    {
        N = n;
    }
    
    public void findPrimeFactors()
    {
        for (long i = 1; i <= N; i++)
        {
            if (N % i == 0 && isPrime(i))
            {
                largestPrimeFactor = i;
                System.out.println("Pushing " + i);
            }
        }
    }
    
    private boolean isPrime(long x)
    {
        long numOfFactors = 0;
        // if numOfFactors == 2 it is prime
        for (long i = 1; i <= x; i++)
        {
            if (x % i == 0)
                numOfFactors++;
        }
        
        if (numOfFactors == 2)
            return true;
        else 
            return false;
    }
    
    public long getLargestFactor()
    {
        return largestPrimeFactor;
    }
}