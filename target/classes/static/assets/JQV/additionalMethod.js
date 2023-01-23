/**
	*	All Additional method
*/

// validation method for checking upload file size
$.validator.addMethod("checkFileSize", function(value, element, args) {
	return element.files[0].size < args;

}, "Please select appropriate file size");

//validate name
$.validator.addMethod("validateName", function(value) {
	return /^[A-Za-z' ]{3,}$/.test($.trim(value));
}, "Enter a valid name");

//validate company name
$.validator.addMethod("validateCompanyName", function(value) {
	
	if(value.trim()!==""){
		return /^[A-Za-z0-9' ]{3,}$/.test($.trim(value));
	}
	return true;
}, "Enter Valid Details");

//validate current designation value with other input value
$.validator.addMethod("notEqual", function(value) {
	if(value.trim()===""){
		return true;
	}
    let optionList=[...$("#currentDesignation > option")];
    for(const items of optionList){
		if(items.value===value.trim() && value!==""){
			return false;
		}
	}
    return true;
}, "Entered value is already available in Current Designation list");


//validate email
$.validator.addMethod("validateEmail", function(value) {
	return String(value)
		.toLowerCase()
		.match(
			/^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
		);
}, "Enter correct email-address");

$.validator.addMethod("validateLanguage", function(value) {
	return allLanguage.length > 0;
}, "Please Select a language");


//validation for date pattern 
$.validator.addMethod("DateFormat", function(value) {
	return /^(0[1-9]|[12][0-9]|3[01])[/](0[1-9]|1[012])[/](19|20)\d\d$/.test($.trim(value));
}, "Enter 10 digit mobile number Number must start with 7 to 9");
//validate phone no 
$.validator.addMethod("validateMobile", function(value) {
	return /^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$/.test($.trim(value));
}, "Enter 10 digit mobile number Number must start with 7 to 9");

//Additional method for validating date of birth 

$.validator.addMethod("validateDate", function(value) {
	let currentDate = new Date();
	let mycurrentDate = (currentDate.getDate()) + "/" + (currentDate.getMonth() + 1) + "/" + (currentDate.getFullYear());
	let parseSelectedDate = $.datepicker.parseDate("dd/mm/yy", value);
	let parseCurrentDate = $.datepicker.parseDate("dd/mm/yy", mycurrentDate);
	return parseSelectedDate < parseCurrentDate
}, "Please select past date-of-birth");
