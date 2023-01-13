$.validator.addMethod("validateEmail", function(value) {
	return String(value)
		.toLowerCase()
		.match(
			/^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
		);
}, "Enter correct email-address");
$("#forgotPasswordForm").validate({
	rules: {
		email: {
			required: true,
			maxlength: 100,
			validateEmail: true,
		},
	},
	messages: {
		firstName: {
			required: "Email is Required",
			maxlength: "Maximum length will be 100",
		},
	},
	submitHandler: function(form) {
		$(".emailSentAlert").show();
		setTimeout(function() {
			$(".emailSentAlert").hide();
			form.submit();
		}, "5000")
	}
})

$("#resetPasswordForm").validate({
	rules: {
		password: {
			required: true,
			minlength: 8,
			maxlength: 12
		},
		confirmPassword: {
			required: true,
			equalTo: "#password",
			minlength: 8,
			maxlength: 12,
		},
	},
	messages: {
		password: {
			required: "Please enter new password",
			minlength: "Minimum 8 character is required",
			maxlength: "Maximum 12 character is required"
		},
		confirmPassword: {
			required: "Confirm Password is required",
			equalTo: "Password does not match",
			minlength: "Minimum 8 character is required",
			maxlength: "Maximum 12 character is required",
		},
	},
	submitHandler: function(form) {
		$(".passwordChangedAlert").show();
		setTimeout(function() {
			$(".passwordChangedAlert").hide();
			form.submit();
		}, "3000")
	}
})