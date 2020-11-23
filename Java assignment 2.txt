
1.
import java.util.Scanner;
public class Multiplication_Table 
{
    public static void main(String[] args) 
    {
        Scanner s = new Scanner(System.in);
	System.out.print("Enter number:");        
	int n=s.nextInt();
        for(int i=1; i <= 10; i++)
        {
            System.out.println(n+" * "+i+" = "+n*i);
        }
    }
}



2.
class ReverseNumber {
    public static void main(String[] args) {
        int num = 1234, reversed = 0;
        while(num != 0) {
            int digit = num % 10;
            reversed = reversed * 10 + digit;
            num /= 10;
        }
      System.out.println("Reversed Number: " + reversed);
    }
}



3.
 import java.Util.Scanner;
 class Prime {
    public static void main(String[] args) {
        Scanner kb=new Scanner(System.in);
        System.out.println("Enter num);
        int num=kn.nextInt();
        boolean flag = false;
        for(int i=2;i<=num/2;++i)
        {
            if(num%i==0)
            {
                flag=true;
                break;
            }
        }
        if (!flag)
            System.out.println(num + " is a prime number.");
        else
           System.out.println(num + " is not a prime number.");
    }
}




5.//Print all prime numbers between two given numbers

import java.Util.Scanner;
class PrimeNOBetween {
public static void main(String[] args) {
int i;
Scanner kb=new Scanner(System.in);
System.out.println("Enter num");
int l=kb.nextInt();
int u=kb.nextInt();
for(int x=l+1;x<=u-1;x++)
{
for(i=2;i<x;i++)
if(x%i==0)
break;
if(i==x)
System.out.println(x);
}
}
}




6.
import java.util.Scanner;
public class Sum_Average
{
    public static void main(String[] args) 
    {
        int n, sum = 0;
        float average;
        Scanner s = new Scanner(System.in);
        System.out.print("Enter no. of elements you want in array:");
        n = s.nextInt();
        int a[] = new int[n];
        System.out.println("Enter all the elements:");
        for(int i = 0; i < n ; i++)
        {
            a[i] = s.nextInt();
            sum = sum + a[i];
        }
        System.out.println("Sum:"+sum);
        average = (float)sum / n;
        System.out.println("Average:"+average);
    }
}



7.
import java.util.Scanner; 
class Descending_Order
{
    public static void main(String[] args) 
    {
        int n, temp;
        Scanner s = new Scanner(System.in);
        System.out.print("Enter no. of elements you want in array:");
        n = s.nextInt();
        int a[] = new int[n];
        System.out.println("Enter all the elements:");
        for (int i = 0; i < n; i++) 
        {
            a[i] = s.nextInt();
        }
        for (int i = 0; i < n; i++) 
        {
            for (int j = i + 1; j < n; j++) 
            {
                if (a[i] < a[j]) 
                {
                    temp = a[i];
                    a[i] = a[j];
                    a[j] = temp;
                }
            }
        }
        System.out.print("Descending Order:");
        for (int i = 0; i < n - 1; i++) 
        {
            System.out.print(a[i] + ",");
        }
        System.out.print(a[n - 1]);
    }



8.
class ArrayRotate
{
public static void main(String args[])
{
int x,y=0,r;
Scanner kb=new Scanner(System.in);
System.out.println("Enter num");
x=kb.nextInt();
while(x!=0)
{
    r=x%10;
    y=y*10+r;
    x=x/10;
}
    System.out.println("reverse = "+y);
}
}







9.
import java.util.Scanner;
class Search_Element
{
    public static void main(String[] args) 
    {
        int n, x, flag = 0, i = 0;
        Scanner s = new Scanner(System.in);
        System.out.print("Enter no. of elements you want in array:");
        n = s.nextInt();
        int a[] = new int[n];
        System.out.println("Enter all the elements:");
        for(i = 0; i < n; i++)
        {
            a[i] = s.nextInt();
        }
        System.out.print("Enter the element you want to find:");
        x = s.nextInt();
        for(i = 0; i < n; i++)
        {
            if(a[i] == x)
            {
                flag = 1;
                break;
            }
            else
            {
                flag = 0;
            }
        }
        if(flag == 1)
        {
            System.out.println("Element found at position:"+(i + 1));
        }
        else
        {
            System.out.println("Element not found");
        }
    }
}



10.
import java.util.Scanner;
class Sum_Odd_Even 
{
    public static void main(String[] args) 
    {
        int n, sumE = 0, sumO = 0;
        Scanner s = new Scanner(System.in);
        System.out.print("Enter the number of elements in array:");
        n = s.nextInt();
        int[] a = new int[n];
        System.out.println("Enter the elements of the array:");
        for(int i = 0; i < n; i++)
        {
            a[i] = s.nextInt();
        }
        for(int i = 0; i < n; i++)
        {
            if(a[i] % 2 == 0)
            {
                sumE = sumE + a[i];
            }
            else
            {
                sumO = sumO + a[i];
            }
        }
        System.out.println("Sum of Even Numbers:"+sumE);
        System.out.println("Sum of Odd Numbers:"+sumO);
    }
}