<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@page import="java.util.*" %>
    <%@page import="VO.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Health Care - Edit Doctor Profile</title>
<link rel="stylesheet" type="text/css" href="css/profile.css">
</head>
<body>
<% session= request.getSession();
	doctorProfileVO doctor =(doctorProfileVO) session.getAttribute("session_doctor_details");
%>
<div class="userProfile">
<form action="<%=request.getContextPath()%>/doctorProfileController" method="POST" name="editDoctorProfile">
	<table class=userProfileTable>
  			<tbody >
    			<tr>
      				<td scope="row">Change Password</td>
      				<td><input type="password" name="editProfileDoctorPassword" placeholder="New Password" value="<%= doctor.getDoctorProfileVO_password()%>"> </td>
    			</tr>
    			<tr>
      				<td scope="row">First name</td>
      				<td><input type="text" name="editProfileDoctorFirstName" placeholder="First Name" value="<%= doctor.getDoctorProfileVO_firstName()%>"></td>
    			</tr>
                <tr>
      				<td scope="row">Middle name</td>
      				<td><input type="text" name="editProfileDoctorMiddleName" placeholder="Middle Name" value="<%= doctor.getDoctorProfileVO_middleName()%>"></td>
    			</tr>
    			<tr>
      				<td scope="row">Last name</td>
      				<td><input type="text" name="editProfileDoctorLastName" placeholder="Last Name" value="<%= doctor.getDoctorProfileVO_lastName()%>"></td>
    			</tr>
                <tr>
                	<td scope="row">Gender</td>
      				<td><input type="radio" name="editProfileDoctorGender" value="M" checked="<%if(doctor.getDoctorProfileVO_gender().equals("M")){System.out.println("checked");}%>"> Male<br>
  						<input type="radio" name="editProfileDoctorGender" value="F" checked="<%if(doctor.getDoctorProfileVO_gender().equals("F")){System.out.println("checked");}%>"> Female<br><br>
                    </td>
                </tr>
    			<tr>
      				<td scope="row">Phone Number</td>
      				<td><input type="text" name="editProfileDoctorPhoneNumber"  placeholder="Phone Number" value="<%= doctor.getDoctorProfileVO_mobile()%>"></td>
    			</tr>
    			<tr>
      				<td scope="row">Email Id</td>
      				<td><input type="email" name="editProfileDoctorEmailId" placeholder="Email Id" value="<%= doctor.getDoctorProfileVO_emailId()%>"></td>
    			</tr>
                <tr>
      				<td scope="row">Consulting Hospital</td>
      				<td><input type="text" name="editProfileDoctorConsultingHospital" placeholder="Consulting Hospital" value="<%= doctor.getDoctorProfileVO_consultHsptl()%>"></td>
    			</tr>
    			<tr>
      				<td scope="row">Hospital Address</td>
      				<td><input type="text" name="editProfileDoctorHospitalAddress" rows="6" cols="20" placeholder="Hospital Address" value="<%= doctor.getDoctorProfileVO_hsptlAddress()%>"> </td>
    			</tr>
                <tr>
      				<td scope="row">Hospital City</td>
      				<td><input type="text" name="editProfileDoctorHospitalCity" placeholder="Hospital City" value="<%= doctor.getDoctorProfileVO_hsptlCity()%>"> </td>
    			</tr>
                <tr>
      				<td scope="row">Hospital State</td>
      				<td><input type="text" name="editProfileDoctorHospitalState" placeholder="Hospital State" value="<%= doctor.getDoctorProfileVO_hsptlState()%>"> </td>
    			</tr>
                <tr>
      				<td scope="row">Hospital Zip Code</td>
      				<td><input type="text" name="editProfileDoctorHospitalZipCode" placeholder="Zip Code" value="<%= doctor.getDoctorProfileVO_hsptlZipCode()%>"> </td>
    			</tr>
                <tr>
      				<td scope="row">Doctor Department</td>
      				<td><input type="text" name="editProfileDoctorDepartment" placeholder="Doctor Department" value="<%= doctor.getDoctorProfileVO_docDept()%>"> </td>
    			</tr>
                <tr>
      				<td scope="row">Doctor Specialization</td>
      				<td><input type="text" name="editProfileDoctorSpecialization" placeholder="Specialization" value="<%= doctor.getDoctorProfileVO_docSpecialization()%>"> </td>
    			</tr>
                <tr>
      				<td scope="row">Practice Start Year</td>
      				<td><input type="text" name="editProfileDoctorPracStartYear" placeholder="Start Year" value="<%= doctor.getDoctorProfileVO_pracStartYear()%>"> </td>
    			</tr>
                <tr>
      				
      				<td><input type="submit" class="userProfile-submit" name="editProfileDoctorSubmit" value="Save Changes"> </td>
    			</tr>
  			</tbody>
		</table>
</form>
</div>

</body>
</html>