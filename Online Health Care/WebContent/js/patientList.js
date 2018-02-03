/**
 * 
 */

$(function(){
	$(".patient-name").click(function(){ 
		$(".iframe-container iframe").attr("src", "/Online_Health_Care/patientProfileController?username="+ $(this).find("a").attr("href"));
	});



});