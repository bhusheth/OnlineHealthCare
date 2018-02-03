<%@page import="VO.symptomsVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/appointment.css">
</head>
<body>
<% List<symptomsVO> list =(List<symptomsVO>)request.getAttribute("list");%>

<table>
<thead>
<tr>
	<th>Common Symptoms</th>
	<th>Medicines</th>
<tr>
</thead>
<%for(int i=0;i<list.size();i++){ 
	symptomsVO svo = list.get(i);%>
<tr>
	<td><%=svo.getSymptoms() %></td>
	<td><%=svo.getMedicine() %></td>
</tr>
<%} %>
</table>
<table>
<tr>
	<td><b><p>Note : Please consult doctor before you use the medication or if you observe anything unusual</p></b></td>
</tr>
</table>
</body>
</html>