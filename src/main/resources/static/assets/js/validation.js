$(document).ready(function() {

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
				required: "Please enter company name"
			},
			companyEmail: {
				required: "Please enter company email-id"
			},
			companyPassword: {
				required: "Please enter company password"
			}
		}
	})

	$("#cancel").click(function() {
		$('form').trigger("reset");
		$("label.error").html("");
	})
})