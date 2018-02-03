<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Appointment History</title>
<link rel="stylesheet" type="text/css" href="css/appointment.css">
</head>
<body>
<%if(session.getAttribute("username")==null){ %>
<%response.sendRedirect("login.jsp");%>    
<% }%>
		<%@page import="java.util.ArrayList"%>
		<%@page import="java.util.List"%>
		<%@page import="VO.appointmentVO" %>
		<%@page import="VO.doctorVO" %>
		<%@page import="java.util.Map"%>
		<%@page import="java.util.HashMap"%>
		<% ArrayList<Object> apmntList =(ArrayList<Object>)session.getAttribute("apmnt_list");%>
		
		<form method="POST" action="docSearchController">
		<%ArrayList<String> docList =(ArrayList<String>)session.getAttribute("docList");%>
		<table>
		<tr>
		<td><select name="Doctors" class="appointment-input">
    	<option value="Doctor Names">Select Doctor</option>
  		<% for(int j=0;j<docList.size();j++){ %>
  		<option value=<%= docList.get(j) %>><%= docList.get(j) %></option>
  		<% } %>
	</select></td>
		<td></td>
		<td><input type="submit" value="Search Appointments" class="appointment-submit"></td>
		<td></td>
		<td></td>
		</tr>
		
		<form method="POST" action="patientAppointmentDetailsController">
		<tr>
		<td>Appointment Number</td>
		<td>Consulting Doctor</td>
		<td>Appointment Date</td>
		<td>Appointment Time</td>
		<td></td>
		</tr>
		<%for(int i=0;i<apmntList.size();i++){
    		Map<String,Object> group = new HashMap<String, Object>();
    		group = (HashMap<String,Object>)apmntList.get(i);
    		appointmentVO apmnt = (appointmentVO)group.get("appointment");
    		doctorVO doctor = (doctorVO)group.get("doctor");
    		String id = (String)group.get("id");
    		Boolean check = false;
    		if(session.getAttribute("docname")!=null)
    			check = doctor.getDoctorvo_name().contains((String)session.getAttribute("docname"));
    		if(session.getAttribute("docname")==null || check){%>
		<tr>
		<td>
			 <%=id%>
		</td>
		<td>
			 <%= doctor.getDoctorvo_name()%>
		</td>
		<td>
			 <%= apmnt.getApmntDate()%>
		</td>
		<td>
			 <%= apmnt.getApmntTime()%>
		</td>
		<td>
		 <button type="button" class="appointment-submit" data-toggle="modal" data-target="">
                     <a href="/Online_Health_Care/patientAppointmentDetailsController?id=<%=id%>">View Details</a>
		
		 </button>
		</tr> 
		 <%}} %> 
	</table>
	</form>
	<% session.removeAttribute("docname"); %>
</body>
</html>