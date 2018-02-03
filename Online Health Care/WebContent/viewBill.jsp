<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Bill</title>
<link rel="stylesheet" type="text/css" href="css/appointment.css">
</head>
<body>
	<%@page import="VO.appointmentVO" %>
	<%@page import="VO.doctorVO" %>
	<%@page import="java.util.HashMap"%>
		
	<% 	HashMap<String,Object> group = (HashMap<String,Object>)session.getAttribute("apmntdetails");
    	appointmentVO apmnt = (appointmentVO)group.get("appointment");
    	doctorVO doctor = (doctorVO)group.get("doctor");%>
    	
     <button onClick=window.print() class="appointment-submit" style="width: 60px; height: 33px;padding: 0; margin-bottom: 5px;" > Print </button>
     
    <table>
		<tr>
			<td><%=doctor.getDoctorvo_name()%> </td>
			<td><%= doctor.getConsult_hsptl() %></td>
			<td><%= doctor.getHsptl_address()%><br><%= doctor.getHsptl_city()%><br><%= doctor.getHsptl_state()%><br><%= doctor.getHsptl_zipcode() %></td>
		</tr>
	</table>
	<table>
		<tr>
			<td><b><u>Date of Service</u></b> </td>
			<td><b><u>Time of Service</u></b> </td>
			<td><b><u>Description of Service</u></b> </td>
			<td><b><u>Amount Billed</u></b> </td>
		</tr>
		<tr>
			<td><%= apmnt.getApmntDate() %></td>
			<td><%= apmnt.getApmntTime() %></td>
			<td><b>General Consultation</b></td>
			<td><%= apmnt.getBill() %></td>
		</tr>
		<tr>
			<td><b>Total Amount:</b> </td>
			<td></td>
			<td></td>
			<td><b><%= apmnt.getBill() %></b></td>
		</tr>
		</table>
		<table>
		<tr>
			<td><p><b><u>NOTE:</u> The bill is sent to your insurance provider for further processing. You will receive processed bill in 3-5 business days</b></p></td>
		</tr>
	</table>
</body>
</html>