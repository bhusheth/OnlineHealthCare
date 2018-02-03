<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="VO.*" %>
      <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Health Care - Manage Appointment</title>

<link rel="stylesheet" type="text/css" href="css/appointment.css">

</head>
<body>
<%@page import="java.util.ArrayList"%>
		<%@page import="java.util.List"%>
		<%@page import="VO.appointmentVO"%>
    	<% ArrayList<appointmentVO> searchList =(ArrayList<appointmentVO>)session.getAttribute("session_appointment_list");%>

<table border="1px">
  <thead>
	<tr>
      <th>Appointment Id</th>
      <th>Date</th>
      <th>Time</th>
      <th>Appointment Status</th>
      <th>Billing Status</th>
    </tr>    
  </thead>
  <tbody>
  	<%for(int i=0;i<searchList.size();i++){
  		appointmentVO avo = searchList.get(i);%>
     	<tr>
     		<td><%= avo.getApmntid() %></td>
            <td><%= avo.getApmntTime() %></td>
            <td><%= avo.getApmntDate() %></td>
            <td> <%= avo.getStatus() %> </td>
            <td> <%if(avo.getStatus().equalsIgnoreCase("CLOSE") && avo.getBill()==null){ %>
    				<button type="button" class="appointment-submit">
                     <a href="/Online_Health_Care/generateBill.jsp?id=<%=avo.getApmntid()%>">Generate Bill</a>
		 			</button>
		 			<%}else if (avo.getStatus().equalsIgnoreCase("CLOSE") && avo.getBill()!=null) {%>
        				Bill Generated
        			<%}else{ %>
        				Yet to be Closed
        			<%} %>
			</td>
		 </tr>
	<%} %>
  </tbody>
</table>
</body>
</html>