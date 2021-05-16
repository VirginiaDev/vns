package Email;

import java.util.Properties;


import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.log4j.Logger;



public class SendEmail {
	
	public static void main(String args[]) {
		new SendEmail("mantosh", "smantosh06@gmail.com", "7009073863");
	}

//	public static Logger log = Logger.getLogger(SendEmail.class);
	public  SendEmail(String username,String email,String phone)
	{
	//	log.info("in send email>>>>>>>>>>>>>>>>>>>>>>>>>");
		String host ="smtp.gmail.com" ; 
		String user = "singhsukhmander965@gmail.com";
		String pass = "9855829454"; 
		String to = email; 
		String from = "singhsukhmander965@gmail.com";
		String subject="";
		String txt_msg="";
	
	
		
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
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
           
             message.setSubject("Confirmation Email For VNS.DMM");
            message.setText(txt_msg);
          
            message.setContent(" <html lang=\"en\">\r\n" + 
            		"      <head>\r\n" + 
            		"        <meta charset=\"UTF-8\">\r\n" + 
            		"        <title>\r\n" + 
            		"        </title>\r\n" + 
            		"        <style>\r\n" + 
            		"          h1, h4 {\r\n" + 
            		"            color: #ff4500;\r\n" + 
            		"          }\r\n" + 
            		"          .header {\r\n" + 
            		"            border-bottom: 2px solid #ff4500;\r\n" + 
            		"            background-color: #fff;\r\n" + 
            		"            text-align: center;\r\n" + 
            		"          }\r\n" + 
            		"          .footer {\r\n" + 
            		"            border-top: 2px solid #1b6d85;\r\n" + 
            		"          }\r\n" + 
            		"          .footer > a {\r\n" + 
            		"            color: #ff4500;\r\n" + 
            		"          }\r\n" + 
            		"        </style>\r\n" + 
            		"      </head>\r\n" + 
            		"      <body>\r\n" + 
            		"        <table width=\"100%\">\r\n" + 
            		"          <tr>\r\n" + 
            		"            <td align=\"center\">\r\n" + 
            		"              <table width=\"600\">\r\n" + 
            		"                <tr>\r\n" + 
            		"                  <td class=\"header\">\r\n" + 
            		"                    <h1>Virtuosonetsoft\r\n" + 
            		"                    </h1>\r\n" + 
            		"                  </td>\r\n" + 
            		"                </tr>\r\n" + 
            		"                <tr>\r\n" + 
            		"                  <td>\r\n" + 
            		"                    <br>Hello "+username+", \r\n" + 
            		"                    <br>\r\n" + 
            		"                    <br>\r\n" + 
            		"                  </td>    \r\n" + 
            		"                </tr> \r\n" + 
            		"                <tr>\r\n" + 
            		"                  <td>\r\n" + 
            		"\r\n" + 
            		"                    <p>Thank you for contacting. We will get back to you. Our representative shall call you.\r\n" + 
            		"                      <br>\r\n" + 
            		"                      <br>\r\n" + 
            		"                     \r\n" + 
            		"                      Please ignore this email if you have not made the request.    \r\n" + 
            		"                      <br/> \r\n" + 
            		"                    </p>\r\n" + 
            		"                  </td>\r\n" + 
            		"                </tr>\r\n" + 
            		"                <tr>\r\n" + 
            		"                  <td>\r\n" + 
            		"                    <br/>\r\n" + 
            		"                    Thanks,\r\n" + 
            		"                    <br/>\r\n" + 
            		"                    Virtuosonetsoft Support Team\r\n" + 
            		"                  </td>\r\n" + 
            		"                </tr>\r\n" + 
            		"              </table>\r\n" + 
            		"            </td>\r\n" + 
            		"          </tr>\r\n" + 
            		"        </table>\r\n" + 
            		"      </body>\r\n" + 
            		"    </html>","text/html" );  

            
             
           
            //send message  
            Transport.send(message);
            System.out.println("message sent to ----" + to);
           
        } catch (MessagingException e) {
            throw new RuntimeException(e);

        }

	

    

	}
}
