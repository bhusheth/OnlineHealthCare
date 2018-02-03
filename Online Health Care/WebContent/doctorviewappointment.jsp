<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/list.css">
<title>Insert title here</title>
<style>
table{
   background-color: white;
    width: 695px;
}
</style>
</head>
<body>
<h3>Select Appointment Date</h3>
<form name="appointment" method="POST" action="doctordateappointmentController">
<input type="date" name="appointmentDate"><input type="submit" name="VIEW" value="go">
</form>	
<p>Today's appointment</p>
<table border="1px">
  <thead>
  	<tr>
  	<th colspan="5">Appointment</th>
  	</tr>
	<tr>
	  <th>Appointment ID</th>	
      <th>Patient Name</th>
      <th>Appointment Date</th>
      <th>Appointment Time</th>
      <th>Reason</th>
    </tr>    
  </thead>
  <tbody>
    <c:forEach var="appointment" items="${session_doctorappointment_list}">
                                                <tr>
                                                	<td align="center">${appointment.appointmentvo_id}</td>
                                                    <td align="center"><a href="prescriptionanddiagnosisController?flag=${appointment.appointmentvo_patientname}&flow=ProfileControl&patUserName=${appointment.appointmentvo_patUserName}">${appointment.appointmentvo_patientname}</a></td>
                                                    <td align="center">${appointment.appointmentvo_appointmentdate}</td>
                                                    <td align="center">${appointment.appointmentvo_appointmenttime}</td>
                                                    <td align="center">${appointment.appointmentvo_appointmentreason}</td>
                                                    
                                                    
                                                </tr>
                                                </c:forEach>
                                            </tbody>
</table>


<p>Past data</p>
<table border="1px">
  <thead>
  	<tr>
  	<th colspan="6">Past Appointments</th>
  	</tr>
	<tr>
	  <th>Appointment ID</th>	
      <th>Patient Name</th>
      <th>Appointment Date</th>
      <th>Appointment Time</th>
      <th>Status</th>
      <th>Reason</th>
    </tr>    
  </thead>
  <tbody>
    <c:forEach var="appointment" items="${session_doctorappointment_list_past}">
                                                <tr>
                                                	<td align="center">${appointment.appointmentvo_id}</td>
                                                    <td align="center"><a href="prescriptionanddiagnosisController?flag=${appointment.appointmentvo_patientname}&flow=ProfileControl&patUserName=${appointment.appointmentvo_patUserName}"">${appointment.appointmentvo_patientname}</a></td>
                                                    <td align="center">${appointment.appointmentvo_appointmentdate}</td>
                                                    <td align="center">${appointment.appointmentvo_appointmenttime}</td>
                                                    
                                                    
                                                    <td align="center">
                                                    <a href="addPriscription.jsp?flag=${appointment.appointmentvo_patientname}&id=${appointment.appointmentvo_id}&flow=addData">${appointment.appointmentvo_appointmentstatus}</a>
                                                    
                                                    </td>
                                                    <td align="center">${appointment.appointmentvo_appointmentreason}</td>
                                                    
                                                </tr>
                                                </c:forEach>
                                            </tbody>
</table>

</body>
</html>