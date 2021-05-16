package manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import Email.EmailSendThread;
import connection.DbConnection;

public class UserManager {

	public int validateUser(String email, String tableName) {
		int id = 0;
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			//Class.forName("com.mysql.jdbc.Driver");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "root@#123"); 
			con=DbConnection.getInstance().getConnection();
			st = con.createStatement();
			String query = "SELECT * FROM "+tableName+" WHERE email='"+email+"' ";
			rs = st.executeQuery(query);
			while(rs.next()) {
				id = rs.getInt("id");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}  finally {
			try {
				if(con!=null) {
					con.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		} 
		return id;
	}
	
	public int saveUser(String name, String email, String mobile, String subject, String message) {
		int id = 0;
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		Calendar cal = Calendar.getInstance();
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
	    String submission_time = String.valueOf(sdf.format(cal.getTime()));
	    System.out.println("submission_time=>>"+submission_time);
	    try {
	    	conn = DbConnection.getInstance().getConnection();
	    
	    	pst = conn.prepareStatement("insert into contact(name, email, mobile, subject, message, submission_date) values (?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
	    	pst.setString(1, name);
	    	pst.setString(2, email);
	    	pst.setString(3, mobile);
	    	pst.setString(4, subject);
	    	pst.setString(5, message);
	    	pst.setString(6, submission_time);
	    	
	    	int i = pst.executeUpdate();
	      	if(i>0) {
	    		ResultSet gen = pst.getGeneratedKeys();
	    		if(gen.next()) {
	    			id = gen.getInt(1);
	    		}
	    		System.out.println("successfull===="+pst.toString());
				//send email to user!!!!
				EmailSendThread emailSendThread=new EmailSendThread();
				System.out.println("email>>>>>>>>>>>>>>>>>"+email);
				System.out.println("Id..........."+id);
				emailSendThread.SendQuoteEmailToUser("Dear "+name, email, mobile); 
				
				ArrayList<String> adminEmails=new ArrayList<>();
				for(int ae=0;ae<adminEmails.size();ae++) {
					emailSendThread.SendQuoteRequestEmailToAdmin(name, adminEmails.get(ae), mobile, "Hi Team! There is a new discover more request from Dear User. Contact Details are :- email ('"+email+"')");
				} 
				
	    	} else {
				System.out.println("failed=="+pst.toString());
			}
	    } catch(Exception e) {
	    	e.printStackTrace();
	    }   finally {
			try {
				if(conn!=null) {
					conn.close();
				}if(pst!=null) {
					pst.close();
				}if(rs!=null) {
					rs.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
			return id;
		}
	}
	
	public int saveContactSection(String email, String type, String mobile) {
		int id = 0;
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		Calendar cal = Calendar.getInstance();
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
	    String submission_time = String.valueOf(sdf.format(cal.getTime()));
	    System.out.println("submission_time=>>"+submission_time);
	    try {
	    	conn = DbConnection.getInstance().getConnection();
	    
	    	pst = conn.prepareStatement("insert into contact_section(email, type,  mobile, submission_date) values (?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
	    	pst.setString(1, email);
	    	pst.setString(2, type);
	    	pst.setString(3, mobile);
	    	pst.setString(4, submission_time);
	    	
	    	int i = pst.executeUpdate();
	      	if(i>0) {
	    		ResultSet gen = pst.getGeneratedKeys();
	    		if(gen.next()) {
	    			id = gen.getInt(1);
	    		}
	    		System.out.println("successfull===="+pst.toString());
				//send email to user!!!!
				EmailSendThread emailSendThread=new EmailSendThread();
				System.out.println("email>>>>>>>>>>>>>>>>>"+email);
				System.out.println("Id..........."+id);
				emailSendThread.SendQuoteEmailToUser("Dear User", email, mobile); 
				
				ArrayList<String> adminEmails=new ArrayList<>();
				for(int ae=0;ae<adminEmails.size();ae++) {
					emailSendThread.SendQuoteRequestEmailToAdmin(email, adminEmails.get(ae), mobile, "Hi Team! There is a new discover more request from Dear User. Contact Details are :- email ('"+email+"')");
				} 
				
	    	} else {
				System.out.println("failed=="+pst.toString());
			}
	    } catch(Exception e) {
	    	e.printStackTrace();
	    }   finally {
			try {
				if(conn!=null) {
					conn.close();
				}if(pst!=null) {
					pst.close();
				}if(rs!=null) {
					rs.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
			return id;
		}
	}
	
	public int saveNewsLetter(String email) {
		int id = 0;
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		Calendar cal = Calendar.getInstance();
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
	    String submission_time = String.valueOf(sdf.format(cal.getTime()));
	    System.out.println("submission_time=>>"+submission_time);
	    try {
	    	conn = DbConnection.getInstance().getConnection();
	    
	    	pst = conn.prepareStatement("insert into news_letter(email, submission_date) values (?,?)",Statement.RETURN_GENERATED_KEYS);
	    	pst.setString(1, email);
	    	pst.setString(2, submission_time);
	    	
	    	int i = pst.executeUpdate();
	      	if(i>0) {
	    		ResultSet gen = pst.getGeneratedKeys();
	    		if(gen.next()) {
	    			id = gen.getInt(1);
	    		}
	    		System.out.println("successfull===="+pst.toString());
				//send email to user!!!!
				EmailSendThread emailSendThread=new EmailSendThread();
				System.out.println("email>>>>>>>>>>>>>>>>>"+email);
				System.out.println("Id..........."+id);
				emailSendThread.SendQuoteEmailToUser("Dear User", email, ""); 
				
				ArrayList<String> adminEmails=new ArrayList<>();
				for(int ae=0;ae<adminEmails.size();ae++) {
					emailSendThread.SendQuoteRequestEmailToAdmin(email, adminEmails.get(ae), "", "Hi Team! There is a new discover more request from Dear User. Contact Details are :- email ('"+email+"')");
				} 
				
	    	} else {
				System.out.println("failed=="+pst.toString());
			}
	    } catch(Exception e) {
	    	e.printStackTrace();
	    }   finally {
			try {
				if(conn!=null) {
					conn.close();
				}if(pst!=null) {
					pst.close();
				}if(rs!=null) {
					rs.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
			return id;
		}
	}
	
}
