package Email;


public class MyRunnable_SendEmail  implements Runnable {


	String email;String name;String phone;

	    public MyRunnable_SendEmail(String name,String email,String phone) {
	        this.email = email;
	  
	        this.name=name;
	        this.phone=phone;
	        
	       
	    }

	    public void run() {
	         new SendEmail(name,email,phone);
	        // code in the other thread, can reference "var" variable
	    }
}
