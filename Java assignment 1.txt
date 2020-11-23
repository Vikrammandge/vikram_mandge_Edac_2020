1.
class Hello
{
public static void main(string args[])
{
System.out.println(args[0]);
}
}


2.

class RollNo
{
public static void main(string args[])
{
int rollno=100;
System.out.println("Roll number="+rollno);
}
}




4.
class Demo {
 public static void main(String args[]) {
  byte x;
  int a = 270;
  double b = 128.128;
  System.out.println("int converted to byte");
  x = (byte) a;
  System.out.println("a and x " + a + " " + x);
  System.out.println("double converted to int");
  a = (int) b;
  System.out.println("b and a " + b + " " + a);
  System.out.println("\ndouble converted to byte");
  x = (byte)b;
  System.out.println("b and x " + b + " " + x);
 }
}



5.
class UserName
{
public static void main(string args[])
{
System.out.println("Welcome "+args[0]);
}
}


6.
class AreaAndCirc
{
public Static void main(String args[])
{
int r;
double ar,circ;
Scanner kb=new Scanner(System.in);
System.out.println("Enter radious");
ar=3.14*rad*rad;
circ=2*3.14*rad;
System.out.println("area = "+ar);
System.out.println("circumference = "+circ);
}
}

7.
import java.util.Scanner;
class Hello
{
public static void main(String args[])
{
int a,b,c,d,e,f;
double per;
Scanner kb=new Scanner(System.in);
System.out.println("Enter 5 subject marks");
a=kb.nextInt();
b=kb.nextInt();
c=kb.nextInt();
d=kb.nextInt();
e=kb.nextInt();
f=a+b+c+d+e;
System.out.println("percentage = "+(f/5));
}
}



8.
import java.util.Scanner;
class SimpleInterest
{
    public static void main(String args[]) 
    {
        float p, r, t, sinterest;
        Scanner scan = new Scanner(System.in);
        System.out.print("Enter the Principal : ");
        p = scan.nextFloat();
        System.out.print("Enter the Rate of interest : ");
        r = scan.nextFloat();
        System.out.print("Enter the Time period : ");
        t = scan.nextFloat();
        scan.close();
        sinterest = (p * r * t) / 100;
        System.out.print("Simple Interest is: " +sinterest);
    }
}


9.
import java.util.Scanner;
public class Year_Week_Day 
{
    public static void main(String args[])
    {
        int m, year, week, day;
        Scanner s = new Scanner(System.in);
        System.out.print("Enter the number of days:");
        m = s.nextInt();
        year = m / 365;
        m = m % 365;
        System.out.println("No. of years:"+year);
        week = m / 7;
        m = m % 7;
        System.out.println("No. of weeks:"+week);
        day = m;
        System.out.println("No. of days:"+day);
    }
}



10.
import java.util.Scanner;
public class ConvertTemprature{
    public static void main(String[] Strings) {
        Scanner input = new Scanner(System.in);
        System.out.print("Input a degree in Fahrenheit: ");
        double fahrenheit = input.nextDouble();
        double  celsius =(( 5 *(fahrenheit - 32.0)) / 9.0);
        System.out.println(fahrenheit+" degree Fahrenheit is equal to "+ celsius +" in Celsius");
    }
}


11.
class Swap {  
 public static void main(string arg[]) {  
  System.out.println("Before swapping");  
  int x = 10;  
  int y = 20;  
  System.out.println("value of x:" + x);  
  System.out.println("value of y:" + y);  
  system.out.println("After swapping");  
  x = x + y;  
  y = x - y;  
  x = x - y;  
  System.out.println("value of x:" + x);  
  System.out.println("value of y:" + y);  
 }  
}



12.
class Employee
{
public static void main(String args[0])
{
Scanner kb = new Scanner(System.in);
float bs, gs, da, hra;
System.out.println("Enter basic salary");
bs=kb.nextInt();
if(bs<10000)
{
hra=bs*10/100;
da=bs*90/100;
}
else
{
hra=2000;
da=bs*98/100;
}
gs=bs+hra+da;
System.out.println("You Entered Basic Salary"+bs);
System.out.println("HRA ="+hra);
System.out.println("DA ="+da);
System.out.println("Gross salary"+gs);
}
}





13.
import java.util.Scanner;
public class Biggest_Number 
{
    public static void main(String[] args) 
    {
        int x, y, z;
        Scanner s = new Scanner(System.in);
        System.out.print("Enter the first number:");
        x = s.nextInt();
        System.out.print("Enter the second number:");
        y = s.nextInt();
        System.out.print("Enter the third number:");
        z = s.nextInt();
        if(x > y && x > z)
        {
            System.out.println("Largest number is:"+x);
        }
        else if(y > z)
        {
            System.out.println("Largest number is:"+y);
        }
        else
        {
            System.out.println("Largest number is:"+z);
        }
 
    }
}



greater using ternary operator:=

import java.util.Scanner;
public class Largest_Ternary 
{
    public static void main(String[] args) 
    {
        int a, b, c, d;
        Scanner s = new Scanner(System.in);
        System.out.println("Enter all three numbers:");
        a = s.nextInt();
        b = s.nextInt();
        c = s.nextInt();
        d = c > (a > b ? a : b) ? c : ((a > b) ? a : b);
        System.out.println("Largest Number:"+d);
    }
}




14.
 
import java.util.Scanner;
class Leapyear
{
public static void main(String arg[])
{
    int year;
    Scanner sc=new Scanner(System.in);
    System.out.print("enter any calendar year :");
    year=sc.nextInt();     
    if(year!=0)
   {
    if(year%400==0)
    System.out.println(year+" is a leap year");
    else if(year%100!=0)
   {
    if(year%4==0)                    
    System.out.println(year+" is a leap year");
    else           
    System.out.println(year+" is not a leap year");                      
   }
    else
    System.out.println(year+" is not a leap year");                      
    }
    else
    System.out.println("Year zero does not exist ");                      
} 
}   


15.
import java.util.Scanner;
class Marriage
{
public static void main(String args[])
{
int age;
char gender;
Scanner kb=new Scanner(System.in);
System.out.println("enter gender");
gender=kb.next()s.CharAt(0);
System.out.println("enter age");
age=kb.nextInt();
if((gender=='m') || (gender=='M'))
{
if(age>21)
System.out.println("eligible for marriage ");
else
System.out.println("not eligible for marriage ");
}
else if((gender=='f') || (gender=='F'))
{
if(age>18)
System.out.println("eligible for marriage ");
else
System.out.println("not eligible for marriage ");
}
else
System.out.println("not eligible for marriage ");
}
}
