<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Health Care - Display Doctors</title>
<link rel="stylesheet" type="text/css" href="css/search.css">  
</head>
<body>
<%if(session.getAttribute("username")==null){ %>
<%response.sendRedirect("login.jsp");%>    
<% }%>
		<%@page import="java.util.ArrayList"%>
		<%@page import="java.util.List"%>
		<%@page import="VO.doctorVO"%>
    	<% ArrayList<doctorVO> searchList =(ArrayList<doctorVO>)session.getAttribute("searchList");%>
    <table>
    	<%for(int i=0;i<searchList.size();i++){
			 doctorVO doc = (doctorVO)searchList.get(i);%>
		<tr>
		<td>
		<a href="<%=request.getContextPath()%>/doctorDetails.jsp?name=<%=doc.getDoctorvo_name()%>">		
				 <%= doc.getDoctorvo_name()%></a>
		<p>Consulting Hospital: <%= doc.getConsult_hsptl()%><p>
		</td>
		</tr> 
		 <% } %> 
	</table>
</body>
</html>