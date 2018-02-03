<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Make Appointment</title>
<link rel="stylesheet" type="text/css" href="css/appointment.css">
</head>
<body>
<%if(session.getAttribute("username")==null){ %>
<%response.sendRedirect("login.jsp");%>    
<% }%>
		<%@page import="java.util.ArrayList"%>
		<%@page import="java.util.List"%>
<%if(session.getAttribute("str")!=null){ %>
<center><h3><%= session.getAttribute("str")%></h3></center>    
<% }%>		
		
<form action="appointmentCheckController" method="POST" name="checkAvailability">
<table>
<tr>
<td>Select a Date</td>
<td><input type="date" name="apmntDate" value=<%=session.getAttribute("date") %>></td>
<td><input type="submit" name="checkAvailabilityDate" value="Check Availability" class="appointment-submit" ></td>
</tr>
</table>
</form>
<form action="appointmentCheckController" method="POST" name="confirmAppointment">
<table>
<%if(session.getAttribute("timeSlots")!=null){ %> 
<% ArrayList<String> slotList =(ArrayList<String>)session.getAttribute("timeSlots");%>
<%for(int i=0;i<slotList.size();i++){
			 String strTime = slotList.get(i);%>
		<tr>
		  <td><input type="radio" value=<%= strTime %> id="strTime" name="slot" checked/>
          <label for="slotList" class="radio"><%= strTime %></label></td>
         </tr>
        <% } %>
 </table>
 <table>
 <tr>
 <td>Please Provide the reason for appointment : </td>
 <td><textarea rows="5" cols="35" name="appointmentReason"></textarea></td>
 </tr>
 <tr>
 <td><input type="submit" name="confirmAppointment" value="Confirm Appointment" class="appointment-submit" ></td>
 </tr>
<% }%>
</form>
</body>
</html>