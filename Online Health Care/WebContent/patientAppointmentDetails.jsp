<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Appointment Details</title>
<link rel="stylesheet" type="text/css" href="css/appointment.css">
</head>
<body>
<%if(session.getAttribute("username")==null){ %>
<%response.sendRedirect("login.jsp");%>    
<% }%>
<%if(session.getAttribute("fstr")!=null){ %>
<center><h3><%= session.getAttribute("fstr")%></h3></center>    
<% }%>	
		<%@page import="VO.appointmentVO" %>
		<%@page import="VO.doctorVO" %>
		<%@page import="java.util.HashMap"%>
		<%@page import="java.util.Date"%>
		
		<% 	HashMap<String,Object> group = (HashMap<String,Object>)session.getAttribute("apmntdetails");
    		appointmentVO apmnt = (appointmentVO)group.get("appointment");
    		doctorVO doctor = (doctorVO)group.get("doctor");
    		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
    		Date apmntdate = (Date)formatter.parse(apmnt.getApmntDate());
    		Date curdate = new Date();%>
    	<table>
			<tr>
				<td>Appointment Number : </td>
				<td><%=group.get("id")%></td>
				<td></td>
			</tr>
			<tr>
				<td>Consulting Doctor : </td>
				<td><%=doctor.getDoctorvo_name()%> </td>
				<td></td>
			</tr>
			<tr>
				<td>Appointment Date : </td>
				<td><%= apmnt.getApmntDate() %></td>
				<td></td>
			</tr>
			<tr>
				<td>Appointment Time : </td>
				<td><%= apmnt.getApmntTime() %></td>
				<td></td>
			</tr>
			<tr>
				<td>Hospital Address : </td>
				<td><%= doctor.getHsptl_address()%><br><%= doctor.getHsptl_city()%><br><%= doctor.getHsptl_state()%><br><%= doctor.getHsptl_zipcode() %></td>
				<td></td>
			</tr>
			<tr>
				<td>Contact Number: </td>
				<td><%= doctor.getMobile() %></td>
				<td></td>
			</tr>
			<tr>
				<td>Email Id: </td>
				<td><%= doctor.getEmail() %></td>
				<td></td>
			</tr>
			<tr>
			<form action="feedback.jsp" method="POST" name="Feedback Form">
			<% if(curdate.compareTo(apmntdate)>0 && apmnt.getFeedback()==null){ %>
				<td><input type="submit" name="Give Feedback" value="Give Feedback" class="appointment-submit"></td>
			<%}%>
			</form>
			<form action="viewPrescription.jsp" method="POST" name="Prescription Form">
			<% if(apmnt.getStatus().equalsIgnoreCase("close")){%>
				<td><input type="submit" name="View Prescription" value="View Prescription" class="appointment-submit"></td>
			<%}%>
    		</form>
    		<form action="viewBill.jsp" method="POST" name="View Bill Form">
    		<% if(apmnt.getStatus().equalsIgnoreCase("close") && apmnt.getBill()!=null){%>
    			<td><input type="submit" name="View Bill" value="View Bill" class="appointment-submit"></td>
    		<%}%>
    		</form>
    		</tr>
    	</table>

</body>
</html>