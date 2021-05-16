<%@page import="manager.UserManager"%>
<%
String email = request.getParameter("email1");

UserManager manager = new UserManager();
int checkId = manager.validateUser(email, "news_letter");
if(checkId==0){
	int id = manager.saveNewsLetter(email);
	if(id>0){%>
		<input type="hidden" id="status" value="success"/>
	<%}
} else{%>
	<input type="hidden" id="status" value="Already_exists"/>
<%}%>