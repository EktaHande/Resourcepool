$(".languagesProficiencyDiv").hide();
$(".addLanguages").hide();
let employeeDetail = [];
$(".expertiseLevel").checkboxradio({
	icon: false
});

$("#languages").on("change", function() {
	$(this).valid();
})

let expertiseLevel;

$(document).on("click", ".closeModal", function() {
	$("#prefferedLocation").val("");
	$('#prefferedLocation').trigger('change');
	$(".addEmployeeModal .error").text("");
});

$(document).on("click", ".expertCard", function() {
	$(".expertiseLevelBigDiv").find("input").attr("checked", false);
	$(".expertiseLevelBigDiv").find(".expertCard").removeClass("addBorder");
	$(this).children().find("input").attr("checked", true);
	$(this).addClass("addBorder");
	expertiseLevel = $(this).children().find("input").val();
})
$("#prefferedLocation").select2({
	dropdownParent: $("#ExtralargeModal"),
	placeholder: "Please select Preffered location",
});
$(document).on("change", "#languages", function() {
	$(".languagesProficiencyDiv").show();
});
$(document).on("change", "#languagesProficiency", function() {
	$(".addLanguages").show();
});

let allLanguage = [] ; 

$(document).on("click", ".addLanguages", function() {
	let languagesObject = {
		languages: $("#languages").val(),
		languagesProficiency: $("#languagesProficiency").val(),
	}
	let isExists = true;
	for (const languageItems of languages) {
		if (languageItems.languages === languagesObject.languages) {
			isExists = false;
			break;
		}
	}
	if (isExists) {
		allLanguage.push(languagesObject);
	}
	$("#languages").val("");
	$('#languages').trigger('change');
	$("#languagesProficiency").val("");
	$('#languagesProficiency').trigger('change');
	$(".languagesProficiencyDiv").hide();
	$(".addLanguages").hide();
})


$("#languagesProficiency").select2({
	placeholder: "Please select languages proficiency",
	text: '',
});
$("#languages").select2({
	placeholder: "Please select languages",
	text: '',
});

$(document).ready(function() {

	$('#startDate').datepicker({
		changeMonth: true,
		changeYear: true,
		dateFormat: 'mm/yy',
		maxDate: 0,
		showOn: "button",
		buttonImage: "assets/img/calendar-icon.png",
		buttonImageOnly: true,
		buttonText: "Select date",
		beforeShow: function(input, inst) {
			inst.dpDiv.addClass('datePickForStartDate');
		},
		onClose: function(dateText, inst) {
			$(this).datepicker('setDate', new Date(inst.selectedYear, inst.selectedMonth, 1));
		},
		showButtonPanel: true,
	});
	$('#startDate, #endDate').click(function() {
		$(this).parent().find(".ui-datepicker-trigger").click();
	});
	$('#endDate').datepicker({
		changeMonth: true,
		changeYear: true,
		dateFormat: 'mm/yy',
		showOn: "button",
		buttonImage: "assets/img/calendar-icon.png",
		buttonImageOnly: true,
		buttonText: "Select date",
		beforeShow: function(input, inst) {
			inst.dpDiv.addClass('datePickForStartDate');
		},
		onClose: function(dateText, inst) {
			$(this).datepicker('setDate', new Date(inst.selectedYear, inst.selectedMonth, 1));
		},
		showButtonPanel: true,
	});
	;
	$(document).on("click", ".saveEmployeeDetails", function() {
		let employeeDetails = {
			"CompanyName": $("#companyName").val(),
			"CurrentLocation": $("#currentLocation").val(),
			"Pincode": $("#pincode").val(),
			"PrefferedLocation": $("#prefferedLocation").val(),
			"IndustryType": $("#industryType").val(),
			"TotalWorkExperiance": $("#totalWorkExperiance").val(),
			"CurrentDesignation": $("#currentDesignation").val(),
			"Other": $("#other").val(),
			"StartDate": $("#startDate").val(),
			"EndDate": $("#endDate").val(),
			"Description": $("#description").val(),
			"CurrentlyWorking": $("#currentlyWorking").val()
		}
		if ($("#addEmployeeDetailForm").valid()) {
			$(".closeModal").click();
			employeeDetail.push(employeeDetails);
			$("#prefferedLocation").val("");
			$('#prefferedLocation').trigger('change');
			addingEmployment();
		}
	})
});
function addingEmployment() {
	$(".employmentTable").html(` <div class="table-responsive">
										<table class="table table-border">
											<thead class="table-secondary">
												<tr>
													<th>Company Name</th>
													<th>Current Location</th>
													<th>Industry Type</th>
													<th>Start Date</th>
													<th>Preffered Location</th>
													<th>Currently Working</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody class="employmentContent">
												
											</tbody>
										</table>
									</div>`);

	$.each(employeeDetail, function(indexInArray, element) {
		$(".employmentContent").append(`
		 <tr id="${indexInArray}">
			
		 	<td>${element['CompanyName']}</td>
            <td>${element['CurrentLocation']}</td>
            <td>${element['IndustryType']}</td>
            <td>${element['StartDate']}</td>
            <td>${element['PrefferedLocation']}</td>
            <td>${element['CurrentlyWorking']}</td>]
			<td><button class="btn btn-outline-danger delete-employment">delete</button><button class="btn btn-outline-success">Edit</button></td>
		 </tr>
		 `);
	});
}
$(document).on("click", ".delete-employment", function() {
	employeeDetail.splice($(this).parent().parent().attr("id"), 1);
	addingEmployment();
})

$("#addEmployeeDetailForm").validate({
	rules: {
		companyName: {
			required: true,
			maxlength: 45,
			validateCompanyName: true,
		},
		currentLocation: {
			required: true,
			maxlength: 45,
		},
		pincode: {
			minlength: 6,
			maxlength: 6,
			digits: true,
		},
		prefferedLocation: {
			required: true,
		},
		industryType: {
			required: true,
		},
		totalWorkExperiance: {
			required: true,
			validateCompanyName: true,
		},
		currentDesignation: {
			validateName: true,
		},
		other: {
			maxlength: 45,
			notEqual: true,
		},
		description: {
			maxlength: 100,
		},
		profilePhoto: {
			required: true,
			accept: "image/*",
			extension: "jpg|jpeg|png",
			checkFileSize: 102400,
		}
	},
	messages: {
		companyName: {
			required: "Company name is required",
			maxlength: "Maximum 45 character is allowed",
		},
		currentLocation: {
			maxlength: "Maximum 45 character is allowed",
			required: "Current location is required",
		},
		pincode: {
			min: "Minimum 6 digits rquired",
			max: "Maximum 6 digits rquired",
			digits: "Please enter digit only",
		},
		prefferedLocation: {
			required: "Preffered location is required",
		},
		industryType: {
			required: "Industry type is required",
		},
		totalWorkExperiance: {
			required: "Total work experience is required",
		},
		other: {
			maxlength: "Maximum 45 character is allowed",
		},
		description: {
			maxlength: "Maximum 45 character is allowed",
		},
		profilePhoto: {
			required: "Profile photo is required",
			accept: "Please select image only",
			checkFileSize: "Maximum 100kb is allowed",
			extension: "Image extension should be jpg/jpeg/png",
		}
	},
});
