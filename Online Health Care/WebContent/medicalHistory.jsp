<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/list.css">
</head>
<body>
<table border="1px" style="width: 30%;background-color: white;">
  <thead>
  	<tr>
  	<th colspan="5">Past Diagnosis</th>
  	</tr>
	
  </thead>
  <tbody>
  
    <c:forEach var="diagnosis" items="${diagnosis}">
                                                <tr>
                                                	<td align="center">${diagnosis}</td>
                                                    
                                                </tr>
                                                </c:forEach>
                                            </tbody>
</table>

<table border="1px" style="width: 80%;background-color: white;">
  <thead>
  	<tr>
  	<th colspan="5">Medical History</th>
  	</tr>
  </thead>
  <tbody>
  <tr>
      	<td align="center">Past Medical Problems</td>  <td align="center">${medicalHistory.mproblems}</td>                              
      </tr>
     <tr>
      	<td align="center">Previous Surgeries</td>  <td align="center">${medicalHistory.surgeries}</td>                              
      </tr>
       <tr>
      	<td align="center">Current Medications of the Patient</td>  <td align="center">${medicalHistory.medications}</td>                              
      </tr>
      <tr>
      	<td align="center">Allergies (If Any)</td>  <td align="center">${medicalHistory.allergy}</td>                              
      </tr>
   </tbody>
</table>

</body>
</html>