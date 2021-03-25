package Email;
import java.net.*;
import java.io.*;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.sql.*;


/**
 *
 * @author user
 */


public class send_mail {

    public static void main(String[] args) throws Exception {
		send_mail sd = new send_mail();
   //
   int max_con=Integer.parseInt(args[0]);
   
        try {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH");
	Date date = new Date();
	//System.out.println(dateFormat.format(date)); //2016/11/16 12:08:43
            String s = null;
            // run the Unix "ps -ef" command
                String[] cl_ip={"203.212.70.170","218.248.82.3","59.91.63.147","121.241.242.109","163.172.249.44"};//,"52.10.68.97","122.160.97.195"};//,"124.153.112.234"};
       String[] cl      ={"VF","EB","VNS","Route Mobile","ILDO VR"};//"VR",,"VNS"};//,"SouthForm"};
           for(int i=0;i<5;i++){
                          String[] cmd = {"/bin/sh", "-c", "netstat -tlnap |grep "+cl_ip[i]+" |grep ESTABLISHED  |wc -l"};
						  System.out.println("netstat -tlnap |grep "+cl_ip[i]+" |grep ESTABLISHED  |wc -l");
            Process p = Runtime.getRuntime().exec(cmd);

            BufferedReader stdInput = new BufferedReader(new
                 InputStreamReader(p.getInputStream()));

            BufferedReader stdError = new BufferedReader(new
                 InputStreamReader(p.getErrorStream()));

            // read the output from the command
            System.out.println("Here is the standard output of the command:\n");
            while ((s = stdInput.readLine()) != null) {
				int result = Integer.parseInt(s);	
				System.out.println(cl[i].equalsIgnoreCase("vns") +"::"+result);
               if(s.equalsIgnoreCase("0")){ 
               //down
               	sd.sendmail("alert.smpp@gmail.com","Server 1 Connection Down "+dateFormat.format(date),cl_ip[i]+":"+cl[i]+" is down");
               }else if(cl[i].equalsIgnoreCase("vns") && result<51) {
				  
                     //	sd.sendmail("altmish.azam@gmail.com","VNS Gateway Down Issue "+dateFormat.format(date),cl_ip[i]+":"+cl[i]+" connected with "+result+" sessions");
                        } else{
							//up
						}
            }



        }
        //
		
		String[] cmd1 = {"/bin/sh", "-c", "netstat -tlnap |grep 8585|wc -l"};
            Process p1 = Runtime.getRuntime().exec(cmd1);

            BufferedReader stdInput1 = new BufferedReader(new
                 InputStreamReader(p1.getInputStream()));

            BufferedReader stdError1 = new BufferedReader(new
                 InputStreamReader(p1.getErrorStream()));

            // read the output from the command
			String s1=null;
            System.out.println("Here is the standard output of the command:\n");
            while ((s1 = stdInput1.readLine()) != null) {
				int result1 = Integer.parseInt(s1);	
				if(result1 >max_con){
				//send mail
				sd.sendmail("alert.smpp@gmail.com","Server 1 "+result1+"Connection Fluctuation "+dateFormat.format(date),result1+":connections");
                       
				}
				}
				//
        try{
  Class.forName("com.mysql.jdbc.Driver").newInstance();
                   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3130/itextwebv2smpp", "reports", "");
					Statement stmt= con.createStatement();

}catch(Exception ex12){
try{
sd.sendmail("alert.smpp@gmail.com","Server 1 MySQL is down","MySQL is down");
}catch(Exception erpx){

}
}
        }
        catch (IOException e) {
            System.out.println("exception happened - here's what I know: ");
            e.printStackTrace();
            //System.exit(-1);

           }

   //
   
   
   
	
        
    }

   

    public void sendmail(String to,String subject,String msg) {
    System.out.println(" --------- inside send  mail ----");
       // String to = "";//change accordingly  

        //Get the session object  
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.mail.yahoo.com");
        //props.put("mail.smtp.host", "smtp.gmail.com");  
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");
	System.out.println(" ---------before session send  mail ----");
        Session session = Session.getDefaultInstance(props,new javax.mail.Authenticator() {
                    protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                        return new javax.mail.PasswordAuthentication("altmish.danish@yahoo.com","UZair@1988");//change accordingly  
                    }
                });

        //compose message  
        try {
 	System.out.println(" --------- composing message ----");

            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("altmish.danish@yahoo.com"));//change accordingly  
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(subject);
            message.setText(msg);

            //send message  
            Transport.send(message);
            System.out.println("message sent to ----" + to);
            System.out.println("message sent from ---- ");
            System.out.println("message sent successfully");

        } catch (MessagingException e) {
            throw new RuntimeException(e);

        }

    }
}


