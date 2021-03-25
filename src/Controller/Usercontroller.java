package Controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import com.mysql.cj.protocol.Resultset;

import connection.DbConnection;

public class Usercontroller {
	
	public int saveRequestAQuoteInformation(String name,String email,String phone,String message) {
		
		Connection conn=null;
		PreparedStatement pst=null;
		int i=0;
		
		try {
			conn=DbConnection.getInstance().getConnection();
			pst=conn.prepareStatement("insert into quotes(name,email,phone,message) values ('"+name+"','"+email+"','"+phone+"','"+message+"')");
			i=pst.executeUpdate();
			System.out.println(pst.toString());
			if(i>0) {
				System.out.println("success");
			}else {
				System.out.println("failed");
			}
		} catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}finally {
			try {
				if(conn!=null) {
					conn.close();
				}if(pst!=null) {
					pst.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		
		
		return i;
	}

}
