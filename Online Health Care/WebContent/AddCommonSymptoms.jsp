<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Common Symptoms</title>
<link rel="stylesheet" type="text/css" href="css/search.css">
</head>
<body>
<%if(request.getAttribute("msg")!=null){ %>
<center><h3><%= request.getAttribute("msg")%></h3></center>    
<% }%>
<form action="addSymptomController" method="POST">
	<table>
	<tr>
		<td><textarea name="symptom" rows="5" cols="35" placeholder= "Write the symtom description..."></textarea></td>
		<td><input type="text" name="medicine" placeholder="Enter Medicine"></td>
	</tr>
	<tr>
		<td><input type="submit" class="search search-submit" name="SaveDetails" value="Save Details"></td>
		<td></td>
	</tr>
	</table>
</form>
</body>
</html>