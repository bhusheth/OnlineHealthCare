<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href="css/list.css">
<!-- Latest compiled and minified CSS -->
 <link rel="stylesheet" href="css/bootstrap.min.css">
         <script src="js/jQuery.min.js"></script>
         <script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/patientList.js"></script>

<title>Insert title here</title>
</head>
<body>                                        
<%@page import="java.util.ArrayList"%>
		<%@page import="java.util.List"%>
		<%@page import="VO.patientProfileVO"%>
    	<% ArrayList<patientProfileVO> searchList =(ArrayList<patientProfileVO>)session.getAttribute("session_patient_list");%>	
<table border="1px">
  <thead>
	<tr>
      <th>Patient ID</th>
      <th>Patient Name</th>
    </tr>    
  </thead>
  <tbody>
    <c:forEach var="patient" items="${session_patient_list}">
                                                <tr>
                                                    <td>${patient.patientProfileVO_id}</td>
                                             <%--        <td>${patient.}</td> --%>
                                                  <td>
                                                  <button type="button" class="btn btn-info btn-lg patient-name" data-toggle="modal" data-target="#myModal">
                                        <a href=${patient.patientProfileVO_username} style="display:none;"></a>
				${patient.patientProfileVO_firstName}
                                                  
                                                  </button>
		</td>
		 </tr>
 </c:forEach>
      </tbody>
</table>



<!-- Trigger the modal with a button -->
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Patient Details</h4>
      </div>
      <div class="modal-body">
           <div class="iframe-container">
          <iframe src= ""></iframe>
           </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>                                        

</body>
</html>