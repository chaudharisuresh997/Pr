class A1
{
public void callMe()
{
System.out.println("A");	
}
public void bark()
{
	System.out.println("aArk");
	}
}
class B extends A1
{
public void callMe()
{
System.out.println("B");	
}

}
public class DynamicDemo1 {

	public static void main(String[] args) {
		A1 a=new A1();
		a.callMe();
		A1 a1= new B();
		
		//b.callMe();

	}

}
