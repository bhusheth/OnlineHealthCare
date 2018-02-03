<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Prescription</title>
<link rel="stylesheet" type="text/css" href="css/appointment.css">
</head>
<body>
<%if(session.getAttribute("username")==null){ %>
<%response.sendRedirect("login.jsp");%>    
<% }%>
<%@page import="VO.appointmentVO" %>
		<%@page import="VO.doctorVO" %>
		<%@page import="java.util.HashMap"%>
		
		<% 	HashMap<String,Object> group = (HashMap<String,Object>)session.getAttribute("apmntdetails");
    		appointmentVO apmnt = (appointmentVO)group.get("appointment");
    		doctorVO doctor = (doctorVO)group.get("doctor");%>
    	<table>
			<tr>
				<td>Appointment Number : </td>
				<td><%=group.get("id")%></td>
			</tr>
			<tr>
				<td>Consulting Doctor : </td>
				<td><%=doctor.getDoctorvo_name()%> </td>
			</tr>
			<tr>
				<td>Appointment Date : </td>
				<td><%= apmnt.getApmntDate() %></td>
			</tr>
			<tr>
				<td>Appointment Time : </td>
				<td><%= apmnt.getApmntTime() %></td>
			</tr>
			<tr>
				<td>Diagnosis : </td>
				<td><%= apmnt.getDiagnosis() %></td>
			</tr>
			<tr>
				<td>Prescription</td>
				<td><%= apmnt.getPrescription()%></td>
			</tr>
			</table>
</body>
</html>