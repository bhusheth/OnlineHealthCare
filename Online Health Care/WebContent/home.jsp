<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Online Health Care</title>
		<link rel="stylesheet" type="text/css" href="css/common.css">
		<link rel="shortcut icon" type="image/x-icon" href="http://localhost:8080/Online_Health_Care/img/favicon.ico">
		<link rel="icon" type="image/x-icon" href="http://localhost:8080/Online_Health_Care/img/favicon.ico">
		 <link rel="stylesheet" href="css/bootstrap.min.css">
         <script src="js/jQuery.min.js"></script>
         <script src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/common.js"></script>
        
	</head>
	
<body>
<%if(session.getAttribute("username")==null){ %>
<%response.sendRedirect("login.jsp");%>    
<% }%>
   <div id="main-container">

    <header class="ohc_shadow">

			<!-- <h1>Online Health Care</h1> -->
			<div>
			<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 82.59000396728516 500.7769775390625 340.7220153808594" preserveAspectRatio="xMidYMid meet" style="stroke-width: 0px;fill: #9155A7;width: 55px;float: left;margin: 41px 2px 0 54px">
    		<g>
        	<path d="M489.842 270.768H403.99L373.785 167.95a10.941 10.941 0 0 0-10.622-6.529 10.932 10.932 0 0 0-9.833 7.666L290 362 223.096 91.286a10.934 10.934 0 0 0-10.443-8.601c-5.048-.095-9.519 3.25-11.811 8.135l-73.81 180.948H10.934C4.897 271.768 0 276.664 0 282.703v2.689c0 6.038 4.897 10.935 10.934 10.935h127.438c5.144 0 9.592-3.586 10.685-8.611l61.645-156.771 68.797 282.199c.808 5.931 4.854 9.688 9.832 10.126.323.028.645.042.964.042 4.604 0 8.763-2.902 10.312-8.313L364.3 208.404l20.81 79.815a10.935 10.935 0 0 0 10.242 7.107h93.714c6.038 0 10.935-4.896 10.935-10.935l.776-2.689c-.001-6.038-4.897-10.934-10.935-10.934z"></path>
    		</g>
			</svg>
			</div>

			<h1 style="line-height:1em; color: #9155A7;">Online&nbsp;<span style="color:#0DB26B">Health Care</span>
			<h6>Exams & Diagnostics </h6>

</h1>
<nav>
    <a  class="menu-link"  href="home.jsp">HOME</a>
    <a class="menu-link" href="about.jsp">ABOUT US</a>
    <a class="menu-link" href="contactUs.jsp">CONTACT US</a>
  	
  	<a class="ohc_button ohc_logout"  href="<%=request.getContextPath()%>/logoutController">LOGOUT</a>
</nav>
</header>

	<div id="content-container">
      <div class="sidebar ohc_shadow">
          <table>
             
             <tr class="profile-picture-container"> 
               <td class="profile-picture default"> <img src="img/patient-icon.png" alt ="Default Image for Patient" /></td>
             </tr>
             
            <!--  <tr class="profile-picture-container"> 
               <td class="profile-picture patient-Image"><img src="" alt= "Image of Patient" /></td>
             </tr> -->
             
              <tr>
               	   <td data-toggle="modal" data-target="#myModal" class="ohc_button">Update Profile Picture</td>
              </tr>
              
              
              <tr>
               	   <td class="ohc_button sidebar-link active"  goTo="searchdoctor.jsp">Make an Appointment <i class="arrow right"></i></td>
              </tr>
              <tr>
                   <td class="ohc_button sidebar-link"  goTo="<%=request.getContextPath()%>/patientProfileController">Edit Profile <i class="arrow right"></i></td>
              </tr>   
              <tr>
                   <td class="ohc_button sidebar-link"  goTo="<%=request.getContextPath()%>/HistoryAppointmentController">View Appointment History <i class="arrow right"></i></td>
              </tr> 
                <tr>
                   <td class="ohc_button sidebar-link"  goTo="<%=request.getContextPath()%>/insuranceController">Insurance Details</td>
              </tr>   
                <tr>
                   <td class="ohc_button sidebar-link"  goTo="<%=request.getContextPath()%>/mhController">Medical History Form</td>
              </tr>          
              <tr>
               	   <td class="ohc_button sidebar-link"  goTo="<%=request.getContextPath()%>/getSymptomsController">View Common Symptoms</td>
              </tr>
          </table>     
      </div>
      <div class="iframe-container">
          <iframe src= "searchdoctor.jsp">
                
          </iframe>
      </div>

	</div>

<!-- Trigger the modal with a button -->
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Upload Profile Picture</h4>
      </div>
      <div class="modal-body">
           <div class="">
           
       <form action="imageUploadController" method="post" enctype="multipart/form-data">
  			<table class="userProfileTable">
  			    <tbody>
			   <tr>
       				<td>Upload your Picture : </td> 
       				<td> <input type="file" name="image" id="imgInp" accept="image/*" capture="camera"></td> 
                       
     			</tr> 
     			<tr>
     			 <td> <img id="blah"  style="width: 154px;height: 154px;margin: 20px;" src="#" alt="your image" /></td>
     			</tr>
     			<tr>
      				<td style="padding-top: 10px;"><input type="submit" class="btn btn-primary" name="submit" value="Upload"> </td>
    			</tr>
    			
  			</table>
         </form>        
 				
          
           </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
     
    </div>

  </div>
</div>






	<footer>
    	<div>
    			<a href="#">About us</a> |
    			<a href="mailto:aitiwari@albany.edu">24x7 Customer Service</a>
    	</div>
	</footer>
	</div>
</body>
</html>