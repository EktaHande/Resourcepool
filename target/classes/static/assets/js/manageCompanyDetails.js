
$(".gstDiv").hide();
$("input[name = flexRadioDefault]:radio").on("change", function() {

	if ($(this).val() == "yes") {

		$(".gstDiv").show();
	} else {
		$(".gstDiv").hide();
	}
})


/* This  validation section is for company details */

// This function is being used to validate company name

$.validator.addMethod("validateCompanyName", function(value) {
	return String(value).match(/^[ A-Za-z0-9_@./#&+-]*$/);
}, "Enter correct company name");

//This function is being used to validate email for company 
$.validator.addMethod("validateEmail", function(value) {
	return String(value).toLowerCase().match(/^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/);
}, "Enter correct email-address");

// This function is being used to select industry type
$.validator.addMethod("selectIndustryType", function(value) {
	return value != '0';
}, "Please select industry-Type");

// This function is being used to check file size 
$.validator.addMethod("checkFileSize", function(value, element, args) {
	return element.files[0].size < args;

}, "Please select appropriate file size");


// This function is being used to check space 
$.validator.addMethod("validateSpace", function(value) {
	return $.trim(value).length != 0;
}, "Enter valid details");

/* This is end of validation section company details */



/* This  validation section is for Address details */

// This function is being used to select country
$.validator.addMethod("selectCountryType", function(value) {
	return value != '0';
}, "Please select country");


// This function is being used to select state
$.validator.addMethod("selectStateType", function(value) {
	return value != '0';
}, "Please select state");

// This function is being used to select city
$.validator.addMethod("selectCityType", function(value) {
	return value != '0';
}, "Please select city");

/* This is end of validation section Address details */

// This function is being used to validate pincode
$.validator.addMethod("validatePincode", function(value) {
	return value.match(/^\d{6}$/);
}, "Pin code should be 6 digits number");

/* This is end of validation section Address details */


/* This  validation section is for Contact details */

// This function is being used to validate contact person name
$.validator.addMethod("validatePersonName", function(value) {
	return String(value).match(/^[ A-Za-z\s']*$/);
}, "Enter correct contact-person name");

// This function is being used to validate designation
$.validator.addMethod("validateDesignation", function(value) {
	return value.match(/^[A-Za-z\s]*$/);
}, "Enter valid designation");

// This function is being used to validate mobile-number
$.validator.addMethod("validateMobile", function(value) {
	return /^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$/.test($
		.trim(value));
}, "Enter valid mobile number");

/* This is end validation section Contact details */


/* This  validation section is for GST details */

// This function is being used to check whether radio button is selected or not
$.validator.addMethod("validateGST", function(value) {
	return value != '0';
}, "Please! select one");

// This function is being used to validate gstNumber
$.validator.addMethod("gstNumberValidation", function(value) {
	return /^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$/
		.test($.trim(value));
}, "Enter valid GST number ");

/* This  is end  validation section  GST details */


/* This  validation section is for Bank details */

// This validation is for account holder name
$.validator.addMethod("accountHolderName", function(value) {
	return String(value).match(/^[ A-Za-z\s']*$/);
}, "Enter valid account-holder name");

// This validation is of account type
$.validator.addMethod("validateAccountType", function(value) {
	return value != '0';
}, "Please select account type");

// This validation is for account-number
$.validator.addMethod("accountNumber", function(value) {
	return value.match(/^(?:[0-9]{11}|[0-9]{2}-[0-9]{3}-[0-9]{6})$/);
}, "Enter valid account number ");

// This validation is for ifscCode
$.validator.addMethod("ifscCode", function(value) {
	return value.match(/^[A-Z]{4}0[A-Z0-9]{6}$/);
}, "Enter valid ifsc code ");

// This validation is to validateBranchName
$.validator.addMethod("validateBranchName", function(value) {
	return value != '0';
}, "Please select branch");

/* This is end validation section  Bank details */

$("#manageCompanyDetails")
	.validate(
		{
			rules: {

				companyName: {
					required: true,
					validateSpace: true,
					validateCompanyName: true
				},
				companyEmail: {
					required: true,
					maxlength: 100,
					validateEmail: true
				},
				companyPassword: {
					required: true,
					validateSpace: true,
					minlength: 8,
					maxlength: 12
				},
				imageUpload: {
					required: true,
					extension: "jpeg|JPEG|jpg|JPG|png|PNG|tiff|TIFF|",
					checkFileSize: 3145728
				},
				industry: {
					selectIndustryType: true
				},

				addressLineOne: {
					required: true,
					validateSpace: true,
					maxlength: 100
				},
				country: {
					required: true,
					selectCountryType: true
				},
				state: {
					required: true,
					selectStateType: true
				},
				city: {
					required: true,
					selectCityType: true
				},
				pincode: {
					required: true,
					validatePincode: true
				},

				contactPersonName: {
					required: true,
					validateSpace: true,
					validatePersonName: true
				},
				designation: {
					validateDesignation: true
				},
				phoneNumber: {
					required: true,
					validateMobile: true
				},
				alternateEmailId: {
					maxlength: 100,
					validateEmail: true
				},

				flexRadioDefault: {
					required: true,
					validateGST: true
				},
				GSTNumber: {
					required: true,
					gstNumberValidation: true
				},

				accountHolderName: {
					required: true,
					validateSpace: true,
					accountHolderName: true
				},
				accountType: {
					required: true,
					validateAccountType: true
				},
				accountNumber: {
					required: true,
					accountNumber: true
				},
				ifscCode: {
					required: true,
					ifscCode: true
				},
				branchName: {
					required: true,
					validateBranchName: true
				},
				uploadDocuments: {
					required: true,
					extension: "xlsx|XLSX|pdf|PDF",
					checkFileSize: 15728640
				}
			},
			messages: {
				companyName: {
					required: "Please enter company name"
				},

				companyEmail: {
					required: "Please enter company email-address"
				},
				companyPassword: {
					required: "Please enter company password"
				},
				industry: {
					selectIndustryType: "Please select at least one industry-type"
				},
				imageUpload: {
					required: "Please select file"
				},
				addressLineOne: {
					required: "Please enter address"
				},
				pincode: {
					required: "Please enter pincode"
				},
				contactPersonName: {
					required: "Please enter contact person name"
				},
				phoneNumber: {
					required: "Please enter phone number"
				},
				GSTNumber: {
					required: "Please enter GST number"
				},
				accountHolderName: {
					required: "Please enter account holder  name"
				},
				accountNumber: {
					required: "Please enter account number"
				},
				ifscCode: {
					required: "Please enter ifsc code"
				},
				uploadDocuments: {
					required: "Please select file"
				}

			}
		})












