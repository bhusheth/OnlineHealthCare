/**
 * this is the Common file for template
 */

$(function(){
		$(".sidebar-link").click(function(){ 
			
			$(".iframe-container iframe").attr("src", $(this).attr("goto") );
			$(".sidebar-link").removeClass("active");
			$(this).addClass("active");
		});
		
		
		
		
		function readWholeURLPath(input) {

		    if (input.files && input.files[0]) {
		        var fileReader = new FileReader();

		        fileReader.onload = function (e) {
		            $('#blah').attr('src', e.target.result);
		        }

		        fileReader.readAsDataURL(input.files[0]);
		    }
		}
		$("#blah").hide();
		$("#imgInp").change(function(){
		    readWholeURLPath(this);
		    $("#blah").show();
		});



});
