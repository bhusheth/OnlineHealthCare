$(document).ready(function(){
	var comparePasswordAndConsfirmPassword = function comparePasswordAndConsfirmPassword(){
		var valueOfPassword = $(".password").val(), confirmPasswordField = $(".confirmPassword").val();
		if((valueOfPassword != "") && (valueOfPassword !== confirmPasswordField)){
			$("#compare-notify-password").addClass("errorPassword").html("Password and Confirm Password are not same.");
			return;
		}else{
			$("#compare-notify-password").removeClass("errorPassword").html("");
		}
	}
	
	var checkALltheRequiredField = function checkALltheRequiredField(){
		$allRequiredField = $("input[required]"), flag= true;
		
		$.each($allRequiredField, function( index, value ) {
			   if($(this).val() == ""){
				   flag = false;
			   }
			});
		
		if(flag){
			$("#register-button").attr("disabled",false);
			$("#register-button").css("cursor", "pointer");
			if($(".password").val() === $(".confirmPassword").val()){
			   $("#registrationForm").attr("action","registerController");
			}
		}else{
			$("#register-button").attr("disabled",true);
			$("#register-button").css("cursor", "not-allowed");
		}
		
	}
	
	/*$("#register-button").click(comparePasswordAndConfirmPassword);*/
	$("input[required]").keyup(checkALltheRequiredField);;
	
	$(".confirmPassword").keyup(comparePasswordAndConsfirmPassword);
	
	
	$('.password').keyup(function() {
		$('#ohcresult').html(checkStrength($('.password').val()))
		})
		function checkStrength(passwordValue) {
		var passStrength = 0
		if (passwordValue.length < 6) {
		$('#ohcresult').removeClass()
		$('#ohcresult').addClass('ohcshort')
		return 'Password is too short.'
		}
		if (passwordValue.length > 7) passStrength += 1
		if (passwordValue.match(/([a-z].*[A-Z])|([A-Z].*[a-z])/)) passStrength += 1
		if (passwordValue.match(/([a-zA-Z])/) && passwordValue.match(/([0-9])/)) passStrength += 1
		if (passwordValue.match(/([!,%,&,@,#,$,^,*,?,_,~])/)) passStrength += 1
		if (passwordValue.match(/(.*[!,%,&,@,#,$,^,*,?,_,~].*[!,%,&,@,#,$,^,*,?,_,~])/)) passStrength += 1
		if (passStrength < 2) {
		$('#ohcresult').removeClass()
		$('#ohcresult').addClass('ohcweak')
		return 'Password strength is weak.'
		} else if (passStrength == 2) {
		$('#ohcresult').removeClass()
		$('#ohcresult').addClass('ohcgood')
		return 'Password strength is good.'
		} else {
		$('#ohcresult').removeClass()
		$('#ohcresult').addClass('ohcstrong')
		return 'Password strength is strong.'
		}
		}
	
	
});