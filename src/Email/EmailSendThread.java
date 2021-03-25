package Email;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class EmailSendThread {

	public void SendQuoteEmailToUser(String name,String email,String phone) {
		
		MyRunnable_SendEmail myRunnable = new MyRunnable_SendEmail(name,email,phone);
		Thread t = new Thread(myRunnable);
		t.start();
		
	}

	public void SendQuoteRequestEmailToAdmin(String name,String email,String phone,String msg) {
	
/*	Admin_Runnable_QuickEnquiry myRunnable = new Admin_Runnable_QuickEnquiry(name,email,phone,company,message);
	Thread t = new Thread(myRunnable);
	t.start(); */
	Thread thread=new Thread() {
		@Override
		public void run() {
		    
			String host ="smtp.gmail.com" ; 
			String user = "virginia@parrotinfosoft.com";
			String pass = "Seraph@2018"; 
			String to = "virginia.singh1995@gmail.com"; 
			String from = "virginia@parrotinfosoft.com";
			
			Properties props = new Properties();
		    //props.put("mail.smtp.host", "smtp.mail.yahoo.com");
		    props.put("mail.smtp.host", "smtp.gmail.com");  
		    props.put("mail.smtp.socketFactory.port", "465");
		    props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		    props.put("mail.smtp.auth", "true");
		    props.put("mail.smtp.port", "465");

		    Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
		        protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
		            return new javax.mail.PasswordAuthentication(user, pass);//change accordingly  
		        }
		    });

		    //compose message  
		    try {

		        MimeMessage message = new MimeMessage(session);
		        message.setFrom(new InternetAddress(from));//change accordingly  
		     //   message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		        message.addRecipients(Message.RecipientType.TO, to);
		        message.setSubject("New Quick Enquiry Request");
		        String text="<html>"
		        		+ "<h3>Hi Team! There is a new request.Please find the details below:-</h3><br>"
		        		+ "<label>Name :-</label>"+name+"<br>"
		        		+ "<label>Email :-</label>"+email+"<br>"
		        		+ "<label>Phone :-</label>"+phone+"<br>"
		        		+ "<label>Message :-</label>"+msg+"<br>"
		        		+ "</html>";
		        message.setContent(text, "text/html");
		        //send message  
		        Transport.send(message);
		        System.out.println("message sent to ----" + to);

		    } catch (MessagingException e) {
		        throw new RuntimeException(e);

		    }
		    
		}
	};
	thread.start();
	
}

}
