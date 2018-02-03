<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Prescription</title>
<link rel="stylesheet" type="text/css" href="css/list.css">
</head>
<body>
<form action="prescriptionanddiagnosisController" method="POST">
<div>		
 	<table border="1px">
 		<thead>
 			<tr>
 				<th colspan="3">Patient Name: <%=request.getParameter("flag")%></th>
 			</tr>
 			<tr>
 				<th>No</th>
 				<th>Medicine</th>
 				<th>Number Of Days</th>
 			</tr>
 		</thead>
 		<tbody>
 			<tr>
 				<td>1</td>
 				<td><input type="text" placeholder="med1" name="med1"></td>
 				<td><input type="text" placeholder="number of days" name="qty1"></td>
 			</tr>
 			<tr>
 				<td>2</td>
 				<td><input type="text" placeholder="med2" name="med2"></td>
 				<td><input type="text" placeholder="number of days" name="qty2"></td>
 			</tr>
 			<tr>
 				<td>3</td>
 				<td><input type="text" placeholder="med3" name="med3"></td>
 				<td><input type="text" placeholder="number of days" name="qty3"></td>
 			</tr>
 			<tr>
 				<td>4</td>
 				<td><input type="text" placeholder="med4" name="med4"></td>
 				<td><input type="text" placeholder="number of days" name="qty4"></td>
 			</tr>
 			<tr>
 				<td>5</td>
 				<td><input type="text" placeholder="med5" name="med5"></td>
 				<td><input type="text" placeholder="number of days" name="qty5"></td>
 			</tr>
 			<tr>
 				<th colspan="3">
 					Diagnosis of <%=request.getParameter("flag")%>
 				</th>
 			</tr>
 			<tr>
 				<td colspan="3"><textarea name="diagnosis"  rows="4" cols="50"   placeholder="enter diagnosis here"></textarea></td>
 			</tr>
 			<tr>
 			<input type="hidden" name=flag value=<%=request.getParameter("id")%>>
 				<td colspan="3" align="center">
 				<input type="hidden" name=flow value=addData>
 				<input type="submit" value="Generate Prescription and Diagnosis">
 				</td>
 			</tr>
 		</tbody>
 		
 	</table>
</div>
</form>
</body>
</html>