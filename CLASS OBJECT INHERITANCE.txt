import java.util.*;
public class Circle {
	double area;
	int radious;
	public void init(int r) {
		radious=r;
	}
	void calculateArea() {
		area=3.14*radious*radious;
	}
	
	void DisplayMethod() {
		System.out.println("Area = "+area);
	}
}

class CircleDemo {
	public static void main(String args[]) {
		Circle obj=new Circle();
		Scanner kb=new Scanner(System.in);
		System.out.println("Enter radious");
		int n=kb.nextInt();
		obj.init(n);
		obj.calculateArea();
		obj.DisplayMethod();
	}
}











package assignment_inheritance;
import java.util.*;
public class MathOperation {
	int num1;
	int num2;
	int sum;
	
	 int sum(int a,int b) {
		num1=a;
		num2=b;
		sum=num1+num2;
		return sum;
	}
	 int substract() {
		 return num1-num2;
	 }
	 int product() {
		 return num1*num2;
	 }
	 double pawer() {
		 return Math.pow(num1,num2);
	 }
}
class Demo{
	public static void main(String args[]) {
		MathOperation obj=new MathOperation();
		Scanner kb=new Scanner(System.in);
		System.out.println("Enter 2 number");
		int a=kb.nextInt();
		int b=kb.nextInt();
		System.out.println(obj.sum(a,b));
		System.out.println(obj.substract());
		System.out.println(obj.product());
		System.out.println(obj.pawer());
		
	}
}






package assignment_inheritance;
import java.util.*;
public class MathOperation1 {
	int n1,n2;
	float num1,num2,num3;
	double no1;
	 int multiply(int n1,int n2) {
		 this.n1=n1;
		 this.n2=n2;
		 return n1*n2;
	 }
	 
	 float multiply(float num1,float num2,float num3){
		 this.num1=num1;
		 this.num2=num2;
		 this.num3=num3;
		 return num1*num2*num3;
	 }
	 
	 double multiply(Double no1,int n1) {
		 this.no1=no1;
		 return no1*n1;
	 }
}

class MathOp{
	public static void main(String args[]) {
		MathOperation1 obj=new MathOperation1();
		Scanner kb=new Scanner(System.in);
		System.out.println("Enter 2 int value");
		int a=kb.nextInt();
		int b=kb.nextInt();
		System.out.println("Enter 3 float value");
		float f1=kb.nextFloat();
		float f2=kb.nextFloat();
		float f3=kb.nextFloat();
		System.out.println("Enter double value");
		double d1=kb.nextDouble();
		System.out.println("sum of int = "+obj.multiply(a,b));
		System.out.println("sum of float = "+obj.multiply(f1, f2, f3));
		System.out.println("sum of one double and one int"+obj.multiply(d1,a));
		
	}
}













package assignment_inheritance;

public class Student {
	private int rollno;
	private String name;
	
	public void setData(int r,String n) {
		rollno=r;
		name=n;
	}
	
	public void showData() {
		System.out.println("Name= "+name);
		System.out.println("Roll no="+rollno);
	}
}

class UseStudent{
	static public void main(String args[]) {
		Student obj=new Student();
		obj.setData(129,"vikash");
		obj.showData();
	}
}






class Employee 
{
	int empNo;
	double salary;
	double totalSalary;
	public Employee(double salary) 
	{
		this.salary = salary;
		empNo++;
		totalSalary=12*salary;
	}
	void display()
	{
		System.out.println("EMPLOYEE : "+empNo);
		System.out.println("EMPLOYEE TOTAL SALARY : "+totalSalary);
	}
	
}
class EmployeeDemo
{
	public static void main(String[] args) 
	{
		Scanner sc = new Scanner(System.in);
		Employee[] e = new Employee[5];
		for(int i = 0 ; i < 5 ; i++)
		{
			
			e[i] = new Employee(sc.nextDouble());
			e[i].display();
		}
		sc.close();
	}
}







import java.util.Scanner;
class Product{
	
	int pid;
	double price;
	int quantity;
	
	public Product(int pid, double price, int quantity) {
		this.pid = pid;
		this.price = price;
		this.quantity = quantity;
	}
	
	static void productWithHighestPrice(Product[] p) 
	{
		double max=p[0].price;
		for (int i = 0; i < p.length; i++) 
		{
			if(p[i].price>max)max=p[i].price;
		}
		System.out.println();
		System.out.println("Maximum price is := "+max);
		
		System.out.println();
		for (int i = 0; i < p.length; i++) 
		{
			if(p[i].price==max) 
			{
				System.out.println("The Pid of Highest price is := "+p[i].pid);
			}
		}
		
	}
	
	
	static double[] moneySpentOn(Product[] arr) {
		
		double[] sum =new double[arr.length];
		
		for (int i = 0; i < arr.length; i++) {
			sum[i]=(arr[i].price * arr[i].quantity);
		}
		return sum;
		
	}

	
}
public class ProductDemo{

	public static void main(String[] args) 
	{
		Scanner sc=new Scanner(System.in);
		Product[] arr=new Product[3];
		
		for (int i = 0; i < arr.length; i++) 
		{
		
			System.out.print("Enter Product Id := ");
			int pid=sc.nextInt();
			System.out.print("Enter the Price := ");
			double price=sc.nextDouble();
			System.out.print("Enter the Quantities :=");
			int quantity=sc.nextInt();
			
			arr[i]=new Product(pid,price,quantity);
		}
		
		Product.productWithHighestPrice(arr);
		double[] spent=Product.moneySpentOn(arr);
		System.out.println();
		for (int i = 0; i < spent.length; i++) 
		{
			System.out.println(arr[i]+"  spent on each item := "+spent[i]);
		}
	}
}











import java.util.*;
class OneBHK 
{
	double roomArea;
	double hallArea;
	double price;
	public OneBHK() 
	{
		
	}
	OneBHK(double roomArea, double hallArea, double price)
	{
		this.roomArea = roomArea;
		this.hallArea = hallArea;
		this.price = price;
	}
	void show()
	{
		System.out.println(roomArea);
		System.out.println(hallArea);
		System.out.println(price);
	}
}
class TwoBHK extends OneBHK
{
	double room2Area;
	TwoBHK()
	{
		
	}
	TwoBHK(double roomArea, double hallArea, double price, double room2Area)
	{
		super(roomArea, hallArea, price);
		this.roomArea = roomArea;
		this.hallArea = hallArea;
		this.price = price;
		this.room2Area = room2Area;
	}
	void show()
	{
		//super.show();
		System.out.println(roomArea);
		System.out.println(hallArea);
		System.out.println(price);
		System.out.println(room2Area);
	}
}
public class FlatDemo
{
	public static void main(String[] args) 
	{
		Scanner sc = new Scanner(System.in);
		TwoBHK[] t = new TwoBHK[3];
		double total=0;
		for(int i=0; i<3; i++)
		{
			
			System.out.println("room area : ");
			double roomArea=sc.nextDouble();
			System.out.println("hall area : ");
			double hallArea=sc.nextDouble();
			System.out.println("price : ");
			double price=sc.nextDouble();
			System.out.println("room 2 area : ");
			double room2Area=sc.nextDouble();
			t[i] = new TwoBHK(roomArea, hallArea, price, room2Area);
			t[i].show();
			total = total+t[i].price;
		}
		System.out.println(total);
		sc.close();
	}
}

















import java.util.*;
class Faculty 
{
	Scanner sc = new Scanner(System.in);
	int facultyid;
	double salary;
	
	void input()
	{
		System.out.println("Faculty id : ");
		facultyid=sc.nextInt();
	}
	
	void anotherFun()
	{
		System.out.println("SALARY IS : "+salary);
	}
	
}
class FullTimeFaculty extends Faculty
{
	double basicSalary;
	double allowance;
	Scanner sc = new Scanner(System.in);
	void input()
	{
		super.input();
		System.out.println("BASIC SALARY IS : ");
		basicSalary = sc.nextDouble();
		System.out.println("ALLOWANCE IS : ");
		allowance = sc.nextDouble();
		salary = basicSalary + allowance; 
		//System.out.println("SALARY OF FULL TIME FACULTY IS : "+salary );
		anotherFun();
	}
}
class PartTimeFaculty extends Faculty
{
	int workingHours;
	int ratePerHour;
	Scanner sc = new Scanner(System.in);
	void input()
	{
		super.input();
		System.out.println("WORKING HOURS IS : ");
		workingHours = sc.nextInt();
		System.out.println("RATE PER HOURS IS : ");
		ratePerHour = sc.nextInt();
		salary = workingHours * ratePerHour;
		//System.out.println("SALARY OF PART TIME FACULTY IS : "+salary );
		anotherFun();
	}
}
class FacultyInfo
{
	public static void main(String[] args) 
	{
		FullTimeFaculty ft = new FullTimeFaculty();
		PartTimeFaculty pt = new PartTimeFaculty();
		ft.input();
		pt.input();
	}
}









import java.util.Scanner;
abstract class Processor 
{
	double data;
	
	void showData()
	{
		System.out.println(data);
	}
	abstract void process();
}
class Factorial extends Processor
{
	Scanner sc = new Scanner(System.in);
	void process()
	{
		int fact=1;
		System.out.println("ENTER NUMBER FOR FACTORIAL : ");
		int num = sc.nextInt();
		for(int i=1;i<=num;i++)
		{
			fact = fact *i; 
		}
		data=fact;
		System.out.println(data);
		
	}
}
class Circle extends Processor 
{
	Scanner sc = new Scanner(System.in);
	void process()
	{
		System.out.println("ENTER RADIUS : ");
		int radius = sc.nextInt();
		double area = 3.14*radius*radius;
		//data=area;
		System.out.println("AREA IS : "+area);
	}
}
class Main
{
	public static void main(String[] args) 
	{
		Scanner sc = new Scanner(System.in);
		System.out.println("ENTER YOUR CHOICE : ");
		System.out.println("1 for factorial, 2 for circle area");
		int choice=sc.nextInt();
		switch(choice)
		{
			case 1:
			{
				Factorial f = new Factorial();
				f.process();
			}
			break;
			case 2:
			{
				Circle c = new Circle();
				c.process();
			}
			break;
			default : 
				System.out.println("wrong choice");
		}
		sc.close();
	}
}
















