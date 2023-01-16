	/**
		*	All Additional method
	*/
	
	//validate name
	$.validator.addMethod("validateName", function(value) {
		return /^[A-Za-z' ]{3,}$/.test($.trim(value));
	}, "Enter a valid name");

	//validate email
	$.validator.addMethod("validateEmail", function(value) {
		return String(value)
			.toLowerCase()
			.match(
				/^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
			);
	}, "Enter correct email-address");
	
	//validation for date pattern 
	$.validator.addMethod("DateFormat",function(value){
		return /^(0[1-9]|[12][0-9]|3[01])[/](0[1-9]|1[012])[/](19|20)\d\d$/.test($.trim(value));
	},"Enter 10 digit mobile number Number must start with 7 to 9");
	//validate phone no 
	$.validator.addMethod("validateMobile",function(value){
		return /^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$/.test($.trim(value));
	},"Enter 10 digit mobile number Number must start with 7 to 9");

	//Additional method for validating date of birth 

	$.validator.addMethod("validateDate", function (value) {
     	let currentDate = new Date();
     	let mycurrentDate = (currentDate.getDate()) + "/" + (currentDate.getMonth() + 1) + "/" + (currentDate.getFullYear());
     	let parseSelectedDate = $.datepicker.parseDate("dd/mm/yy", value);
     	let parseCurrentDate = $.datepicker.parseDate("dd/mm/yy", mycurrentDate);
     	return parseSelectedDate < parseCurrentDate
    }, "Please select past date-of-birth");
