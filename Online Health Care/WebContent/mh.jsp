<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@page import="java.util.*" %>
    <%@page import="VO.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Health Care - Edit Patient Profile</title>
<link rel="stylesheet" type="text/css" href="css/profile.css">
<%--<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> --%>
<%-- <link rel="stylesheet" type="text/css" href="css/common.css">--%>
</head>
<body>
<% session= request.getSession();
	mhVO v =(mhVO) session.getAttribute("mhdetails");
%>
<div class="userProfile">
<form action="<%=request.getContextPath()%>/mhController" method="POST" name="mhistory">
	<table class="userProfileTable">
  			<tbody >
  			

    			<tr>
      				<td scope="row">Please list all of your Medical Problems (current & old)</td>
      				<td><input type="text" name="mproblems" placeholder="Medical Problems" value="<%=v.getMproblems()%>"></td>
    			</tr>
                <tr>
      				<td scope="row">Please list of your Previous Surgeries</td>
      				<td><input type="text" name="surgeries" placeholder="Past Surgeries" value="<%=v.getSurgeries()%>"></td>
    			</tr>
    			<tr>
      				<td scope="row">Please list ALL the Medications you are presently taking</td>
      				<td><input type="text" name="medications" placeholder="Present Medications" value="<%=v.getMedications()%>"></td>
    			</tr>
    			<tr>
      				<td scope="row">Are you ALLERGIC to any Medications? (Please List)</td>
      				<td><input type="text" name="allergy"  placeholder="Any Allergies?" value="<%=v.getAllergy()%>"></td>
    			</tr>



      				
      				<td><input type="submit" class="userProfile-submit" name="mhprofiledetails" value="Save changes"> </td>
    			</tr>
    			
  			</tbody>
		</table>
</form>
</div>

</body>
</html>