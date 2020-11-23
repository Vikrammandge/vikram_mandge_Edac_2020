/*
class MergeArray
{
public static void main(String args[])
{
int arr1[]={23,60,94,3,102};
int n1=arr1.length;

int arr2[]={42,16,74};
int n2=arr2.length;

int arr3[]=new int[n1+n2];

mergeArray(arr1,arr2,n1,n2,arr3);
System.out.println("Array after merging");
for(int i=0;i<n1+n2;i++)
System.out.print(arr3[i]+" ");
}

public static void mergeArray(int arr1[],int arr2[],int n1,int n2,int arr3[])
{
int i=0,j=0,k=0;
while(i<n1 && j<n2)
{
if(arr1[i]<arr2[j])
  arr3[k++]=arr1[i++];
else
  arr3[k++]=arr2[j++];
}
while(i<n1)
  arr3[k++]=arr1[i++];
while(j<n2)
  arr3[k++]=arr2[j++];
}

}
*/



Assignment3 {

	public static void main(String[] args) {
		Scanner kb=new Scanner(System.in);
		System.out.println("Enter array size");
		int n=kb.nextInt();
		int sum=0,avg=0;
		int arr[]=new int[n];
		System.out.println("Enter array value");
		for(int i=0;i<n;i++) {
			arr[i]=kb.nextInt();
		}
		for(int i=0;i<n;i++) {
			if(i<3) {
				sum=arr[i]+arr[i+1]+arr[i+2];
				avg=sum/3;
				System.out.println("Average = "+avg);
			}
		}
	}

}








/*
class Ascending 
{
public static void main(String args[])
{
int arr[]={140,35,14,89,5};
int temp=0;
System.out.println("Elements of originally array:");
for(int i=0;i<arr.length;i++)
{
  System.out.print(arr[i]+" ");
}
for(int i=0;i<arr.length;i++)
{
  for(int j=i+1;j<arr.length;j++)
   {
      if(arr[i]>arr[j])
	{
	  temp=arr[i];
	  arr[i]=arr[j];
	  arr[j]=temp;
	}
    }
}
System.out.println();
System.out.println("Elements of array in ascending order:");  
        for (int i=0;i<arr.length;i++)   
	{
            System.out.print(arr[i] + " ");  
	}
}
}

*/












/*
class Descending 
{
public static void main(String args[])
{
int arr[]={140,35,14,89,5};
int temp=0;
System.out.println("Elements of originally array:");
for(int i=0;i<arr.length;i++)
{
  System.out.print(arr[i]+" ");
}
for(int i=0;i<arr.length;i++)
{
  for(int j=i+1;j<arr.length;j++)
   {
      if(arr[i]<arr[j])
	{
	  temp=arr[i];
	  arr[i]=arr[j];
	  arr[j]=temp;
	}
    }
}
System.out.println();
System.out.println("Elements of array in desscending order:");  
        for (int i=0;i<arr.length;i++)   
	{
            System.out.print(arr[i] + " ");  
	}
}
}

*/








/*

class ThirdLargest
{
public static int getThirdLargest(int[] a, int total){  
int temp;  
for (int i = 0; i < total; i++)   
        {  
            for (int j = i + 1; j < total; j++)   
            {  
                if (a[i] > a[j])   
                {  
                    temp = a[i];  
                    a[i] = a[j];  
                    a[j] = temp;  
                }  
            }  
        }  
       return a[total-3];  
}  
public static void main(String args[]){  
int b[]={24,54,31,16,82,45,67};    
System.out.println("Third Largest: "+getThirdLargest(b,7));  
}}
*/




/*
import java.util.Scanner;
class Series
{
public static void main(String[] args) 
	
{
Scanner input = new Scanner(System.in);

System.out.println("Please enter limit up to you want series");
int num =input.nextInt();
        	
int arr[]=new int[num];
		
int c=1;

for(int i=0;i<num;i++)
        	
{


if(c%2==0)
            		
{
                		
arr[i]=c*c;
				
c++;

    		
}

else 
			
{
                		
arr[i] = c*c*c;
			
c++;
            		
}

        	
}
for(int i:arr)
        	
{
            		
System.out.print(i+" ");
        	
}
                
	
}

}
*/  





/*
class DigitAfterDecimal
{
public static void main(String[] args) 
	
{
Scanner sc=new Scanner(System.in);
		
System.out.println("Enter the any floting number");
		
double x =sc.nextDouble(); 
		
//sc.close();
        	
int count=0;
        	
do
    		
{
    	    		
x =x*10;
    			
count++ ;
    		
} 
    		
while(x != (int)(x));
		
System.out.println("digit after decimal is:"+count);
		               
	
}

}
*/