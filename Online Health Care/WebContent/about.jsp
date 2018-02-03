<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About Us</title>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="shortcut icon" type="image/x-icon" href="http://localhost:8080/Online_Health_Care/img/favicon.ico">
<link rel="icon" type="image/x-icon" href="http://localhost:8080/Online_Health_Care/img/favicon.ico">


 <link rel="stylesheet" href="css/bootstrap.min.css">
 <script src="js/jQuery.min.js"></script>
 <script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("input[name='user']").click(function(){
			if($("#doctor").is(":checked")){
				$("#ExtraField").show();
			}
			else{
				$("#ExtraField").hide();
			}
		});
	});
</script>

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
    <a class="menu-link" href="#">CONTACT US</a>
</nav>
</header>
<div id="content-container" style="padding-left: 37px;">



<h1>About Us</h1>	  
<p>At Online Healthcare, we are committed to improving the health care system. online Healthcare is an operating division of UnitedHealth Group, the largest single health carrier in the United States.
</p><p>As a recognized leader in the health and well-being industry, we strive to:</p>

	<p>* Improve the quality and effectiveness of health care for all Americans</p>
	<p>* Enhance access to health benefits</p>
	<p>* Create products and services that make health care more affordable
	<p>* Use technology to make the health care system easier to navigate
	<p>Our family of companies delivers innovative products and services to approximately 70 million Americans. UnitedHealthcare's nationwide network includes 595,000 physicians and other health care professionals, 80,000 dentists and 4,965 hospitals. Our pharmaceutical management programs provide more affordable access to drugs for 13 million people.

<p>We're committed to the delivery of quality care and its continual improvement. In fact, UnitedHealth Group made significant investments in research and development, technology and business process improvements - nearly $3 billion in the past five years. These investments led to changes that are improving the way care is delivered and administered across the entire industry.

<p>To view information on alliances and an abridged list of affiliates, select from the links below.
</div>    


</div> <!-- main div ends here -->
</body>
</html>