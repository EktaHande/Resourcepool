/**
 * Personal Detail
 */
 

let CustomSelectionAdapter = $.fn.select2.amd.require("select2/selection/customSelectionAdapter");
	
$(document).on("click", "#employeeDOB,#educationStartDate,#educationEndDate", function() {
				$(this).next().click();
				$(this).siblings().find(".ui-datepicker-trigger").trigger()
			})

	$("#employeeskill").select2({
		placeholder : "Add Skills",
		selectionAdapter : CustomSelectionAdapter,
		selectionContainer : $('.foo'),
		theme : "bootstrap",
	});

//Employee Date of birth 
$("#employeeDOB").datepicker({
	dateFormat: 'dd/mm/yy',
	maxDate: 0,
	changeMonth: true,
	changeYear: true,
	showOn: "button",
	buttonImage: "assets/img/calendar-icon.png",
	buttonImageOnly: true,
	buttonText: "Select date",
});

//validating date picker on change

$(document).on("keyup change clear keydown", "#employeeDOB", function() {
	$(this).valid();
})


$("input[type=file]").on("change" ,function(){
	$(this).valid();
})

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
			required: "Please enter first name",
			validateName: "Please enter valid first name"
		},
		employeeLastName: {
			required: "Please enter last name ",
			maxlength: "The length of the last name should not exceed the 45 chars",
			minlength: "The length of the first name should not be less than 2 chars",
			validateName: "Please enter valid last name",
		},
		employeeEmail: {
			required: "Please enter email-id",
			maxlength: "Length of the email should not exceed the 45 chars",
			minlength: "Length of the email should not be less than 2 chars",
			validateEmail: "Enter valid email"
		},
		employeeDOB: {
			required: "Please enter date of birth",
			validateDate: "Date should not be less than current date",
			DateFormat: "Please enter  date in correct format",
		},
		employeeMobile: {
			required: "Please enter  mobile number ",
			validateMobile: "Enter the mobile number in correct format",
			maxlength: "Length of the no should not exceed the 13 digits",
			minlength: "Length of the phone number should  not be less than 10 digits",
			digits: "Do not enter letter in this field"
		},
		employeeHourRate: {
			required: "Please enter hourly rate",
			number: "Please do not enter letters",
			min: "Please do not enter negative value",
		},
		serviceFee: {
			required: "Please enter service Fee ",
			number: "Please do not enter letters",
			min: "Please do not enter negative value",
		},
		resumeTitle: {
			required: "Please enter resume title",
			validateName: "Enter the valid title",
		},
		employeeskill: {
			required: "Please select atleast one skill",
		},
		employeeResume: {
			required: "Please upload  resume ",
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



function ajaxCallOnSubmitOfPersonalDetails() {
	saveLanguageObject();
	genrateObjectForPersonalDetail();
	console.log(personalDetails);

	$.ajax({
		type: "post",
		url: "submitPersonalDetails",
		data: {"personalDetails" :JSON.stringify(personalDetails) },
		success: function(response) {
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
	personalDetails = {
		"employeeFirstName": $("#employeeFirstName").val(),
		"employeeLastName": $("#employeeLastName").val(),
		"employeeEmail": $("#employeeEmail").val(),
		"employeeDOB": $("#employeeDOB").val(),
		"employeeMobile": $("#employeeMobile").val(),
		"employmentDetails": employeeDetail,
		"employeeEducationDetails": allEducationDetails,
		"employeeExpertiesLevel": expertiseLevel,
		"employeeLanguages": languageObject,
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



