<%@page import="manager.UserManager"%>
<%
String email = request.getParameter("email1");
String type = request.getParameter("type1");
String mobile = request.getParameter("mobile_no1");

UserManager manager = new UserManager();
int checkId = manager.validateUser(email, "contact_section");
if(checkId==0){
	int id = manager.saveContactSection(email, type, mobile);
	if(id>0){%>
		<input type="hidden" id="status" value="success"/>
	<%}
} else{%>
	<input type="hidden" id="status" value="Already_exists"/>
<%}%>
