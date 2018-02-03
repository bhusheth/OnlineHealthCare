/**
 * 
 */

$(function(){
	$(".doctor-name").click(function(){ 
		$(".iframe-container iframe").attr("src", "/Online_Health_Care/appointmentController?username="+ $(this).find("a").attr("href"));
	});



});