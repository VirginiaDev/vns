<%@page import="manager.UserManager"%>
<%
String fname = request.getParameter("fname1");
String lname = request.getParameter("lname1");
String email = request.getParameter("email1");
String mobile = request.getParameter("mobile_no1");
String subject = request.getParameter("subject1");
String message = request.getParameter("message1");

String fullName = fname+" "+lname;

UserManager manager = new UserManager();
int checkId = manager.validateUser(email, "contact");
if(checkId==0){
	int id = manager.saveUser(fullName, email, mobile, subject, message);
	if(id>0){%>
		<input type="hidden" id="status" value="success"/>
	<%}
} else{%>
	<input type="hidden" id="status" value="Already_exists"/>
<%}%>