
public class ThreadDemo implements Runnable{
public void run()
{
	for(int i=0;i<7;i++)
	{
		System.out.println(Thread.currentThread().getId()+" "+i);
	}
	
}
	public static void main(String[] args) {
Thread t1=new Thread(new ThreadDemo());
t1.start();

Thread t11=new Thread(new ThreadDemo());
t11.start();
synchronized (t11) {
try{
	t1.wait();	
} catch (InterruptedException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
}


	}

}
