<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Health Care - Doctor Details Page</title>
<link rel="stylesheet" type="text/css" href="css/search.css">
</head>
<body>
<%if(session.getAttribute("username")==null){ %>
<%response.sendRedirect("login.jsp");%>    
<% }%>
		<%@page import="java.util.ArrayList"%>
		<%@page import="java.util.List"%>
		<%@page import="VO.doctorVO"%>
		<%@page import="java.util.Date" %>
    	<% List searchList =(ArrayList)session.getAttribute("searchList");%>
    <form method="POST" action="makeAppointment.jsp" name="make appointment">
    <h1><%= request.getParameter("name")%></h1>
    <table>
    	<%for(int i=0;i<searchList.size();i++){
			 doctorVO doc = (doctorVO)searchList.get(i);
			 if(doc.getDoctorvo_name().equals(request.getParameter("name"))){ session.setAttribute("docusername",doc.getUsername());%>
		<tr>
		<td>Department: </td>
		<td><%= doc.getDoc_dept() %></td>
		</tr> 
		<tr>
		<td>Specialization: </td>
		<td><%= doc.getDoc_spl() %></td>
		</tr>
		<tr>
		<td>Consulting Hospital: </td>
		<td><%= doc.getConsult_hsptl()%></td>
		</tr>
		<tr>
		<td>Hospital Address: </td>
		<td><%= doc.getHsptl_address()%><br><%= doc.getHsptl_city()%><br><%= doc.getHsptl_state()%><br><%= doc.getHsptl_zipcode() %></td>
		</tr>
		<tr>
		<td>Contact Number: </td>
		<td><%= doc.getMobile() %></td>
		</tr>
		<tr>
		<td>Email Id: </td>
		<td><%= doc.getEmail() %></td>
		</tr>
		<tr>  <td><a href="<%=request.getContextPath()%>/reviewController?feedbackname=<%=doc.getUsername()%>">Read Reviews</a></td>
		</tr>
		
		
		<tr>
		<td> <input type="submit" name="appointment" value="Schedule Appointment" class="search search-submit"> </td>
		</tr>
		 <% Date curDate = new Date();session.setAttribute("date", curDate);}} %> 
	</table>
	</form>
</body>
</html>