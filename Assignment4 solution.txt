

1)WAP to define a class Student with attributes rollno, name , 
	marks accept data for 2 objects and display them.


class Assignment4 {
	
	/*
	int rollNo;
	String name;
	int marks;
	Assignment4(int r,String s,int m){
		rollNo=r;
		name=s;
		marks=m;
	}
	public void showData(){
		System.out.println("RollNo= "+rollNo+"  Name="+name+" Marks="+marks);
	}

}
 class Student{
	public static void main(String args[]) {
		Assignment4 as=new Assignment4(14,"vijay",54);
		Assignment4 as1=new Assignment4(16,"vinod",65);
		as.showData();
		as1.showData();
	}
	*/
	






	
5)WAP to define Class Simpleinterest with attributes principalamount, 
	 rate of interest static ,number of years calculate SI and display it.
	/*
	public static void main(String args[]) {

		Scanner kb=new Scanner(System.in);
		System.out.println("Enter principle,rate and year");
		int i=kb.nextInt();
		int r=kb.nextInt();
		int y=kb.nextInt();
		int si=(i*r*y)/100;
		System.out.println("Simple interest="+si);
		
	}
	*/






6)Write a program Complex number to add the real and imaginary part for 2 complex numbers

	
	   /*
		int real,imaginary;
		Assignment4(){}
		Assignment4(int Real, int Imaginary) 
	    { 
	        this.real = Real; 
	        this.imaginary = Imaginary; 
	    }
		Assignment4 addComp(Assignment4 C1, Assignment4 C2) 
	    { 
			Assignment4 temp = new Assignment4();	  
	        temp.real = C1.real + C2.real; 	      
	        temp.imaginary = C1.imaginary + C2.imaginary;	         
	        return temp; 
	    } 
	
		public static void main(String[] args) 
	    {        
			Assignment4 C1 = new Assignment4(3, 2); 
	        System.out.println("Complex number 1 : " + C1.real + " + i" + C1.imaginary); 
	          
	        Assignment4 C2 = new Assignment4(9, 5);	        
	        System.out.println("Complex number 2 : " + C2.real + " + i" + C2.imaginary); 	        
	        Assignment4 C3 = new Assignment4();         
	        C3 = C3.addComp(C1, C2); 	         
	        System.out.println("Sum of complex number : " + C3.real + " + i" + C3.imaginary); 
	    } 
	*/

}








/*
import java.util.*;
public class Banking {
	static int min_balance=500;

    void balance_enquiry()
    {
        int Balance= min_balance;
        System.out.println("Your account balance is "+Balance);
    }

    void withdraw(int amount)
    {
        if (min_balance-amount>=500)
        {
            min_balance = min_balance-amount;

            System.out.println("Your account balance is "+ min_balance);
        }else
        {
            System.out.println("Your account balance too low "+ min_balance);

        }
    }

    void Credit(int amount)
    {
        min_balance= min_balance+amount;

        System.out.println("Your account balance is "+ min_balance);

    }


}
class Account
{
    public static void main(String[] args)
    {

        Banking M1=new Banking();
        Scanner input = new Scanner(System.in);

        String ch;
        int option;


        char y;
        do {
            System.out.println("Choose operation you want to perform...enter 0 to exit");
            System.out.println("1.balance enquiry");
            System.out.println("2.withdraw");
            System.out.println("3.credit");
            option = input.nextInt();


        if(1<=option && option<=3)
        {
            switch( option)

            {
                case 1:
                    M1.balance_enquiry();
                    break;

                case 2:
                    System.out.println("Enter withdraw amount.");
                    int amount = input.nextInt();
                    M1.withdraw(amount);
                    break;

                case 3:
                    System.out.println("Enter Credit amount.");
                    int amount1 =input.nextInt();
                    M1.Credit(amount1);
                    break;
            }
        }else
        {
            System.out.println("Please enter valid input");
        }


        System.out.println("you want to continue ");
        System.out.println("press Yes for yes or any key for No ");

        ch=input.next();
        


        }while(ch.equals("Y") );

                                                                       

    }
}
*/



4)WAP to define a class Employee with attributes id, name ,designation  accept data for 
	5 objects and display employee details whose designation is Manager.


import java.util.Scanner;
class Employee 
{
	
	int id;
	String name;
	String designation;

	Employee()
	{
	}
	
	Employee(int id, String name, String designation)
	{
		this.id = id;
		this.name = name;
		this.designation = designation;
	}


	void display()
	{
		System.out.println("Id:"+this.id);
		System.out.println("Name:"+this.name);
		System.out.println("Designation:"+this.designation);
	}

	Employee search(Employee[] emp, String person)
	{
		 for(int i=0;i<emp.length;i++)
		{
			String comp=emp[i].designation;
			if(comp.equals(person)){
			return emp[i];
		}

	}
	return null;

}
	
}
public class EmployeeDemo
{
 
	public static void main(String args[])
	{
		Employee emp1 = new Employee();
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter number of employees");
		int n = sc.nextInt();
		Employee[] emp = new Employee[n];
		for(int i = 0;i<n;i++)
		{
			System.out.println("Enter"+(i+1)+"Employee Id:");
			int id = sc.nextInt();
			System.out.println("Enter"+(i+1)+"Employee Name:");
			sc.nextLine();
			String name = sc.nextLine();
			System.out.println("Enter"+(i+1)+"Employee Designation");
			//sc.nextLine();
			String designation = sc.next();
			emp[i]= new Employee(id,name,designation);
		}
		for(int i=0;i<emp.length;i++)
		{
 			System.out.println("Id:= "+emp[i].id);
 			System.out.println("Name := "+emp[i].name);
 			System.out.println("Designation := "+emp[i].designation);
		}

		
		System.out.println("Search for employee whose designation is manager");
		sc.nextLine();
		String person=sc.nextLine();
		Employee empDetails=emp1.search(emp,person);
		System.out.println("\n\n\n");
 		System.out.println("details ID := "+empDetails.id);
 		System.out.println("details NAME := "+empDetails.name);
 		System.out.println("details Designation := "+empDetails.designation);
	}  
}






2)WAP to define a class Book with attributes id, name , 
	price accept data for 5 objects display book with highest price.*/





import java.util.Scanner;

class Book{
    Scanner input = new Scanner(System.in);
    int bookid,price;
    String name;
        void getdata()
        {
            System.out.println("Enter the Name of book");
            name=input.nextLine();
            System.out.println("Enter the Book Id");
            bookid=input.nextInt();
            System.out.println("Enter the Price");
            price=input.nextInt();
        }

}
public class BookDemo{

    void compare(Book b1,Book b2,Book b3)
    {
        if (b1.price>b2.price && b1.price>b3.price)
        {
            System.out.println("Book with highest price: "+b1.name);

        }else if(b2.price>b3.price)
        {
            System.out.println("Book with highest price: "+b2.name);
        }else
        {
            System.out.println("Book with highest price: "+b3.name);
        }

    }

    public static void main(String[] args) {
        Book b1= new Book();
        b1.getdata();
        Book b2=new Book();
        b2.getdata();
        Book b3 = new Book();
        b3.getdata();

        BookDemo demo=new BookDemo();

        demo.compare(b1,b2,b3);

    }

}







