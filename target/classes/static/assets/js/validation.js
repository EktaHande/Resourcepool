$(document).ready(function() {
	
	
  $.validator.addMethod("validateCompanyName", function(value) {
		return String(value)
			.match(/^[ A-Za-z0-9_@./#&+-]*$/);
	}, "Enter correct company name");
	
	
	 $.validator.addMethod("validateSpace", function(value) {
		return $.trim(value).length!=0;
	}, "Enter correct company name");
	
		
	$.validator.addMethod("validateEmail", function(value) {
		return String(value)
			.toLowerCase()
			.match(
				/^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
			);
	}, "Enter correct email-address");





	$('form').validate({
		rules: {
			companyName: {
				required: true,
				validateSpace:true,
				validateCompanyName:true
			},
			companyEmail: {
				required: true,
				maxlength:100,
				validateEmail:true
			},
			companyPassword: {
				required: true,
				validateSpace:true,
				maxlength:8
			}
		},
		messages: {
			companyName: {
				required: "Please,enter company name!"
			},

			companyEmail: {
				required: "Please, enter company email-address!"
			},
			companyPassword: {
				required: "Please, enter company password!"
			}
		}
	})

	$("#cancel").click(function() {
		$('form').trigger("reset");
		$("label.error").html("");
	})
})