package Email;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.URL;
import java.net.UnknownHostException;

public class ipaddress {
	
	public static void main(String args[]) {

InetAddress localhost;
try {
	localhost = InetAddress.getLocalHost();
	String localip=(localhost.getHostAddress()).trim();
	System.out.println("ippp========="+localip);

} catch (UnknownHostException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
} 


// Find public IP address 

String systemipaddress = ""; 

try

{ 

    URL url_name = new URL("http://bot.whatismyipaddress.com"); 

    BufferedReader sc = new BufferedReader(new InputStreamReader(url_name.openStream())); 

    systemipaddress = sc.readLine().trim(); 
  //  ServerLocation location = obj.getLocation("206.190.36.45");
	//System.out.println(location);

} 

catch (Exception e) 

{ 

    systemipaddress = "Cannot Execute Properly"; 

} 

///out.println(localip+systemipaddress);

//String uipddress=(localip+systemipaddress).replace(".", "");


 
	}
}
