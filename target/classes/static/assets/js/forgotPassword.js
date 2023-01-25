
$("#forgotPasswordForm").validate({
	rules: {
		email: {
			required: true,
			maxlength: 100,
			validateEmail: true,
		},
	},
	messages: {
		email: {
			required: "Please enter email-id",
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
			required: "Please enter password",
			minlength: "Minimum 8 character is required",
			maxlength: "Maximum 12 character is required"
		},
		confirmPassword: {
			required: "Please enter  confirm password",
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
