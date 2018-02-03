<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Generate Bill</title>
<link rel="stylesheet" type="text/css" href="css/appointment.css">
</head>
<body>
<%if(session.getAttribute("errstr")!=null){ %>
<center><h3><%= session.getAttribute("errstr")%></h3></center>    
<% }%>	
<form action="generateBillController" method="POST" name="Save Bill">
<table>
<tr>
<td>Appointment ID:</td>
<td><%=request.getParameter("id")%><input type="hidden" name="id" value = <%=request.getParameter("id")%>></td>
</tr>
<tr>
<td>Service Name:</td>
<td>Consultation</td>
</tr>
<tr>
<td>Amount(without Tax)</td>
<td><input type="text" name="amount" class="appointment-input"></td>
</tr>
<tr>
<td></td>
<td><input type="submit" class="appointment-submit" name="Save Bill" value="Save Bill"></td>
</tr>
</table>
</form>
</body>
</html>