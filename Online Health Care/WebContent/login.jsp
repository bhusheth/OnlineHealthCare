<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Health Care - Login Page</title>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/login.css">

<link rel="shortcut icon" type="image/x-icon" href="http://localhost:8080/Online_Health_Care/img/favicon.ico">
<link rel="icon" type="image/x-icon" href="http://localhost:8080/Online_Health_Care/img/favicon.ico">

 <link rel="stylesheet" href="css/bootstrap.min.css">
 <script src="js/jQuery.min.js"></script>
 <script src="js/bootstrap.min.js"></script>
  
  
<script src= "js/validation.js"></script>

</head>
<body>
<div id="main-container">
<header>

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
    <a class="menu-link" href="about.jsp">ABOUT US</a>
    <a class="menu-link" href="contactUs.jsp">CONTACT US</a>
  	<a class="ohc_button ohc_logout" href="register.jsp">REGISTER</a>
</nav>
</header>
<%String str = (String)request.getAttribute("s1");
if( str != null)
	out.println(" "+str);
%>
<div id="content-container">


   <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="img/carousel1.jpg" alt="" width="100%" height="345">
      </div>

      <div class="item">
        <img src="img/carousel2.jpg" alt="" width="100%" height="345">
      </div>
    
      <div class="item">
        <img src="img/carousel3.jpg" alt="" width="100%" height="345">
      </div>

    </div>
    
    </div>
    

   <div class="login-box">
      <h3>Sign In</h3><br>
      <form method="post" action="loginController">
        <input type="text" name="user" placeholder="Username">
        <input type="password" name="pass" placeholder="Password">
        <input type="submit" name="login" class="login login-submit" value="Sign In">
      </form>

      <div class="Reg-ForgotP">
        <a href="register.jsp">New User? Click here to register.</a>
        <br>
        <a href="#">Forgot Password?</a>
      </div>
    </div>

    
    
<div  class="infographic-container">
<div class="inforgraphic-title font_4">Taking Care of your health</div>
<div class="infographic-box">
<div class="inforgraphic-logo-container">
<svg xmlns="http://www.w3.org/2000/svg" viewBox="4.199998378753662 27.799997329711914 192.60000610351562 144.6999969482422" preserveAspectRatio="xMidYMid meet" style="stroke-width: 1px; width:73px; fill: white;">
    <g>
        <path d="M192.6 110.1c-2.5-12-10.2-22-22.3-29-3.5-2-7.8-3.9-12.3-5.5-4.7-17.7-19.8-32.1-40.8-38.9-27.6-8.9-60.1-6.3-82.6 6.8-14.6 8.5-24 20.6-27 35.1-3.4 16.3 1.7 27.8 6.5 34.5 3.2 4.5 6.7 7.5 9.1 9.2l-5.8 31.2L49 137.8c4 1.4 14.5 4.7 27.6 5.9.7.1 1.4.1 2.1.2 2.6 2.9 5.6 5.5 8.9 7.9 16.8 12 35.6 13.2 48.5 12.1 10.4-.9 18.7-3.5 22.2-4.7l26.7 13.3-4.9-26.4c5.2-4.1 16.7-15.6 12.5-36zM80.9 135.5h-.6c-1.1-.1-2.1-.1-3.1-.2-15.5-1.4-26.9-5.9-27-6l-1.8-.7-19.7 9.8 3.8-20.2-2.6-1.5s-4.8-2.8-8.9-8.5c-3.9-5.4-7.9-14.6-5.1-27.9 2.5-12.1 10.5-22.3 23-29.6 12.1-7 27.9-10.9 44.4-10.9 10.7 0 21.6 1.7 31.4 4.8 18.8 6.1 32.1 19 35.6 34.7 0 .2.1.3.1.5.2 1 .4 1.9.5 2.7 1.9 14.6-5.4 29-20.1 39.5-17.2 12.4-36.6 14.2-49.9 13.5zm92.7 21.9l-13.2-6.6-1.7-.8-1.8.7c-.1 0-9.2 3.7-21.6 4.8-11.5 1-28.2 0-42.9-10.5-.5-.3-.9-.7-1.3-1 13.3-.7 29.7-4.3 44.6-15 16.1-11.5 24.6-27.3 23.8-43.7 2.4 1 4.6 2.1 6.6 3.2 9.9 5.7 16.3 13.9 18.2 23.4 4.1 19.6-10.2 28.3-11 28.7l-2.6 1.5 2.9 15.3z"></path>
    </g>
</svg>
</div><br/>
 <h3 style="margin-top: 70px;" >Health Plans We Accept
	</h3><br/>
	<p>We accept each health plans for patients. This is very flexible for every patient.</p>
</div>

<div class="infographic-box">
<div class="inforgraphic-logo-container">
<svg xmlns="http://www.w3.org/2000/svg" viewBox="37.5 14.500003814697266 125 170.89999389648438" preserveAspectRatio="xMidYMid meet" style="stroke-width: 1px; width:53px; fill: white;">
    <g>
        <path d="M148 98.8c-7.6-6.4-17.8-10.6-30.4-12.5 12-6.4 20.2-19.1 20.2-33.7 0-21-17-38.1-37.8-38.1S62.2 31.6 62.2 52.6c0 14.7 8.3 27.4 20.4 33.8-12.5 2.1-22.9 6.5-30.7 13.2-9.2 7.9-14.4 18.8-14.4 30.1V170c0 1.7 1 6 9.8 9.5 9.9 3.9 27.2 5.9 51.2 5.9 25.3 0 43.4-2 53.8-5.9 8.9-3.3 10.2-7.4 10.2-9.6v-39.6c0-8.8-2.5-21.5-14.5-31.5zM70.4 52.6c0-16.4 13.3-29.8 29.6-29.8s29.6 13.4 29.6 29.8-13.3 29.8-29.6 29.8S70.4 69 70.4 52.6zm83.9 116.5c-1.4 1.4-10.5 8.1-55.8 8.1-43 0-51.5-6.7-52.7-8v-39.6c0-18.1 16.8-36.3 54.3-36.3 19 0 33.4 4 42.8 11.8 9.5 8 11.5 18.2 11.5 25.3v38.7z"></path>
    </g>
</svg>
</div>
<br/>
      <h3 style="margin-top: 70px;" >Number 1 Online Health Care in the Area
	</h3>
	<br/>
	<p>We got the best online health care system in New York City. We are focusing on our improvement and serving better service to our patient.</p>
</div>

<div class="infographic-box">
	<div class="inforgraphic-logo-container">

		<svg xmlns="http://www.w3.org/2000/svg" viewBox="43.28199768066406 12.198999404907227 113.03999328613281 173.59999084472656" preserveAspectRatio="xMidYMid meet" style="stroke-width: 1px; width:53px; fill: white;">
    	<g>
        <path d="M153.17 53.077c0-5.047-4.037-9.084-9.084-9.084s-9.084 4.037-9.084 9.084 4.037 9.084 9.084 9.084c1.135 0 2.145-.252 3.154-.505.757 2.271.631 5.425-1.009 9.084-14.004 29.648-50.591 30.784-68.254 29.522-1.135-4.542-5.047-7.948-9.715-8.327-12.616-47.69-.126-61.315 14.13-68.254 4.037-1.892 7.191-2.271 9.588-2.019.252 4.794 4.163 8.705 9.084 8.705 5.047 0 9.084-4.037 9.084-9.084s-4.037-9.084-9.084-9.084c-2.397 0-4.542.883-6.182 2.397-3.911-.757-9.336-.757-15.897 2.397-23.465 11.356-29.142 35.453-18.04 77.213-2.649 2.019-4.416 5.173-4.416 8.831 0 1.514.252 2.902.883 4.163l-.252-.252c-.631.883-13.878 22.709-4.794 42.643 6.056 13.373 20.438 22.331 42.769 26.62.883 5.425 5.551 9.588 11.228 9.588 6.182 0 11.355-5.047 11.355-11.355 0-6.182-5.047-11.355-11.355-11.355-4.163 0-7.822 2.271-9.715 5.551-19.808-3.911-32.298-11.355-37.344-22.331-6.056-13.373.757-28.765 3.406-33.812 1.514.757 3.154 1.135 4.92 1.135 4.163 0 7.822-2.397 9.588-5.803 3.028.252 6.687.505 10.598.505 20.943 0 51.727-5.299 65.226-34.442 3.28-7.065 2.523-13.626-.252-18.041.254-.882.38-1.891.38-2.774zm-47.059 116.196a5.062 5.062 0 0 1 5.047 5.047 5.062 5.062 0 0 1-5.047 5.047 5.062 5.062 0 0 1-5.047-5.047c.001-2.776 2.272-5.047 5.047-5.047z"></path>
    	</g>
	 	</svg>
	</div><br/>
	 <h3 style="margin-top: 70px;" >Specialist Doctors
	</h3><br/>
	<p>We have very skilled and specialist doctor all over the United States of America. Currently, there are 8000 specialist are in this system which makes our system more efficient.</p>
</div>

</div>    
    
      


<footer>
    <div>
    <a href="about.jsp">About us</a> |
    <a href="mailto:aitiwari@albany.edu">24x7 Customer Service</a>
    </div>
</footer>

</div>

</body>
</html>