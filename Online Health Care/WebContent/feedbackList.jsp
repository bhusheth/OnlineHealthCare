<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View the user's feedbacks</title>
<link rel="stylesheet" type="text/css" href="css/list.css"/>

<style>
td{
border: 1px solid black;
}
</style>

</head>
<body>
<%if(session.getAttribute("username")==null){ %>
<%response.sendRedirect("login.jsp");%>    
<% }%>
		<%@page import="java.util.ArrayList"%>
		<%@page import="java.util.List"%>
		<%@page import="VO.appointmentVO"%>
    	<% ArrayList<appointmentVO> feedback_list =(ArrayList<appointmentVO>)session.getAttribute("feedback_list");%>
    	<%if (feedback_list.size()==0){ %>
    	<p>Not Reviewed yet.</p>
    	<%} else { %>
    <table>
     <tr>
     	<th>Patient Name</th>
     	<th>Feedback</th>
     	<th>Reviewed On</th>
     </tr>
     
    	<%for(int i=0;i<feedback_list.size();i++){
    		appointmentVO doc = (appointmentVO)feedback_list.get(i);
    		if (doc.getFeedback()!=null){%>
		<tr>
		<td><%=doc.getPatUsername() %></td>
		<td><%=doc.getFeedback() %></td>
		<td><%=doc.getApmntDate() %></td>
		</tr>
		
		 <% }}} %> 
	</table>
</body>
</html>