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
</head>
<body>
<% session= request.getSession();
	insuranceVO i =(insuranceVO) session.getAttribute("insurance_details");
%>

<div class="userProfile">
<form action="<%=request.getContextPath()%>/insuranceController" method="POST" name="editInsurance">
	<table class="userProfileTable">
		<tbody>
		

			<tr>
       				<td scope="row">Insurance Id</td> 
       				<td><input type="text" name="ins_id" placeholder="Insurance Id" value="<%=i.getIns_id()%>"></td> 
     			</tr> 
			<tr>
       				<td scope="row">Company Name</td> 
       				<td><input type="text" name="company" placeholder="Company Name" value="<%=i.getCompany()%>"></td> 
     			</tr> 
     		
     		<tr>
       				<td scope="row">Phone Number</td> 
       				<td><input type="text" name="phone" placeholder="Phone Number" value="<%=i.getPhone()%>"></td> 
     			</tr> 
     		<tr>
       				<td scope="row">Address</td> 
       				<td><input type="text" name="address" placeholder="Address" value="<%=i.getAddress()%>"></td> 
     			</tr> 
     		<tr>
       				<td scope="row">City</td> 
       				<td><input type="text" name="city" placeholder="Name of the City" value="<%=i.getCity()%>"></td> 
     			</tr> 
     		<tr>
       				<td scope="row">State</td> 
       				<td><input type="text" name="state" placeholder="State" value="<%=i.getState()%>"></td> 
     			</tr> 
     		<tr>
       				<td scope="row">Zipcode</td> 
       				<td><input type="text" name="zipcode" placeholder="Zip Code" value="<%=i.getZipcode()%>"></td> 
     			</tr> 
			<tr>
      				
      				<td><input type="submit" class="userProfile-submit" name="submit" value="Save changes"> </td>
    			</tr>
		
		
		</tbody>	
	</table>
	</form>
	</div>
</body>
</html>