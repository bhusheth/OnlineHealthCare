<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table border="1px">
  <thead>
	<tr>
	  <th>Appointment ID</th>	
      <th>Patient Name</th>
      <th>Appointment Date</th>
      <th>Appointment Time</th>
    </tr>    
  </thead>
  <tbody>
    <c:forEach var="appointment" items="${session_doctorappointment_list}">
                                                <tr>
                                                	<td align="center">${appointment.appointmentvo_id}</td>
                                                    <td align="center"><a href="">${appointment.appointmentvo_patientname}</a></td>
                                                    <td align="center">${appointment.appointmentvo_appointmentdate}</td>
                                                    <td align="center">${appointment.appointmentvo_appointmenttime}</td>
                                                    
                                                    
                                                </tr>
                                                </c:forEach>
                                            </tbody>
</table>
</body>
</html>