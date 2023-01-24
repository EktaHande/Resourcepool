/**
 * Personal Detail
 */

let personalDetails = {};

$("#regEmployeeForm").validate({
	rules: {
		employeeFirstName: {
			required: true,
			maxlength: 45,
			minlength: 2,
			validateName: true,

		}, employeeLastName: {
			required: true,
			maxlength: 45,
			minlength: 2,
			validateName: true,
		},
		employeeEmail: {
			required: true,
			maxlength: 45,
			minlength: 2,
			validateEmail: true,
		},
		employeeDOB: {
			required: true,
			DateFormat: true,
			validateDate: true,
		},
		employeeMobile: {
			required: true,
			digits: true,
			maxlength: 13,
			minlength: 10,
			validateMobile: true,

		},
		employeeHourRate: {
			required: true,
			number: true,
			min: 0,
		},
		serviceFee: {
			required: true,
			number: true,
			min: 0,
		},
		resumeTitle: {
			required: true,
			validateName: true,
		},
		employeeskill: {
			required: true,
		},
		employeeResume: {
			required: true,
			extension: "pdf|PDF",
			checkFileSize: 2097152,
		},
		languages: {
			required: function() {
				return $("#languages") !== "";
			},
			duplicateLanguage: true,
		},
		languagesProficiency: {
			required: function() {
				return $("#languagesProficiency") !== "";
			},
		},

	},
	messages: {
		employeeFirstName: {
			required: "Please enter the employee first name",
			validateName: "Please enter the first name in correct format"
		},
		employeeLastName: {
			required: "Please enter the last name of the employee ",
			maxlength: "The length of the last name should not exceed the 45 chars",
			minlength: "The length of the first name should not be less than 2 chars",
			validateName: "Please enter the last name in correct format",
		},
		employeeEmail: {
			required: "Please enter the employee email",
			maxlength: "Length of the email should not exceed the 45 chars",
			minlength: "Length of the email should not be less than 2 chars",
			validateEmail: "Enter the valid email"
		},
		employeeDOB: {
			required: "Please enter the employee date of birth",
			validateDate: "Date should not be less than current date",
			DateFormat: "Please enter the date in correct format",
		},
		employeeMobile: {
			required: "Please enter the mobile no ",
			validateMobile: "Enter the mobile no in correct format",
			maxlength: "Length of the no should not exceed the 13 digits",
			minlength: "Length of the phone no should  not be less than 10 digits",
			digits: "Do not enter letter in this field"
		},
		employeeHourRate: {
			required: "Please enter the employee hourly rate",
			number: "Please do not enter letters",
			min: "Please do not enter negative value",
		},
		serviceFee: {
			required: "Please enter the service Fee of the company ",
			number: "Please do not enter letters",
			min: "Please do not enter negative value",
		},
		resumeTitle: {
			required: "Please enter the resume title",
			validateName: "Enter the valid title",
		},
		employeeskill: {
			required: "Please select atleast one skill",
		},
		employeeResume: {
			required: "Please upload the resume ",
			extension: "Select pdf file only in for resume",
			checkFileSize: "File Size should not exceed the limit of 2 mb ",
		},
		languages: {
			required: "Please select languages",
		},
		languagesProficiency: {
			required: "Please select language proficiency",
		},
	}
})

let expLvl;
function getExpertieseLevel() {
	$($("input:radio[name=expertiseLevel]")).each(function(index, element) {
		console.log(element);
		if ($(element).is(":checked")) {
			expLvl = $(element).attr("id");
		}
	})
}


function ajaxCallOnSubmitOfPersonalDetails() {
	genrateObjectForPersonalDetail();
	console.log(personalDetails);

	$.ajax({
		type: "post",
		url: "submitPersonalDetails",
		data: {"personalDetails" :JSON.stringify(personalDetails) },
		success: function(response) {
			//success-aler-div
			$("#success").show();
			console.log(response)
			setTimeout(function() {
				window.location.href = "manageEmployee";
				$("#success").hide();
			}, 3000);
		}
	});
}


function genrateObjectForPersonalDetail() {
	getExpertieseLevel();
	personalDetails = {
		"employeeFirstName": $("#employeeFirstName").val(),
		"employeeLastName": $("#employeeLastName").val(),
		"employeeEmail": $("#employeeEmail").val(),
		"employeeDOB": $("#employeeDOB").val(),
		"employeeMobile": $("#employeeMobile").val(),
		"employmentDetails": employeeDetail,
		"employeeEducationDetails": allEducationDetails,
		"employeeExpertiesLevel": expLvl,
		"employeeLanguages": allLanguage,
		"employeeHourRateDetails": {
			"employeeHourRate": $("#employeeHourRate").val(),
			"serviceFee": $("#serviceFee").val(),
			"finalAmount": $("#finalAmount").val(),
		},
		"skillDetails": {
			"resumeTitle": $("#resumeTitle").val(),
			"employeeskill": $("#employeeskill").val(),
			"employeeResume": $("#employeeResume").val(),
		}
	}
}



