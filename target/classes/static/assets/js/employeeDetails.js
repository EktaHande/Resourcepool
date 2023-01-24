let employeeDetail = [];
let expertiseLevel;
let languageObject = [];

$(".expertiseLevel").checkboxradio({
	icon: false
});


$(document).on("click", ".closeModal", function() {
	$("#prefferedLocation, #currentLocation, #industryType, #currentDesignation").val("");
	$("#prefferedLocation, #currentLocation, #industryType, #currentDesignation").trigger('change');
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
	dropdownParent: $("#AddEmploymentModel"),
	dropdownAutoWidth: true,
	multiple: true,
	placeholder: "Please select preffered location",
	allowClear: true
});
let allLanguage = [];

$(document).on("click", ".deleteYourLanguages", function() {
	$(this).parents(".deleteLanguageTab").remove();
})

const languageTab = `<div class="deleteLanguageTab deleteTab">
										<div class="row m-0 p-0">
											<div class="d-flex col-12 col-md-5 my-2 ">
												<label for="languages" class="col-4 my-auto">Languages<sup class="text-danger">*</sup></label>
												<div class="col-8 d-flex flex-wrap align-items-center">
													<select class="form-select languages" id="languages"  name="languages" style="width: 100%">
														<option></option>
														<option value="English">English</option>
														<option value="Hindi">Hindi</option>
														<option value="Marathi">Marathi</option>
														<option value="Telugu">Telugu</option>
													</select> 
													<label id="languages-error" class="error text-danger" for="languages"></label>
												</div>
											</div>
											<div class="d-flex col-12 col-md-5 my-2">
												<label for="languagesProficiency" class="col-4 my-auto">Languages Proficiency<sup class="text-danger">*</sup></label>
												<div class="col-8 d-flex flex-wrap align-items-center">
													<select class="form-select languagesProficiency" id="languagesProficiency" name="languagesProficiency" style="width: 100%">
														<option></option>
														<option value="basic">Basic</option>
														<option value="conversational">Conversational</option>
														<option value="fluent">Fluent</option>
														<option value="native">Native or Billingual</option>
													</select> <label id="languagesProficiency-error" class="error text-danger" for="languagesProficiency"></label>
												</div>
											</div>
											<div class="row m-0 p-0 col-md-2">
												<div class="col-md-6 my-3">
													<em class="ri-delete-bin-5-line fs-5 deleteYourLanguages"></em>
												</div>
											</div>
										</div>
									</div>`

$(document).on("click", ".addLanguages", function() {
	if (isEmpty($('.languagesTab'))) {
		$(".languagesTab").append(languageTab);
	}
	if ($(".languages").valid() && $(".languagesProficiency").valid()) {
		$("#languages-error").remove();
		$("#languagesProficiency-error").remove();
		$(".languages").attr("disabled", true);
		$(".languagesProficiency").attr("disabled", true);
		$(document).ready(function() {
			$(".languages").valid();
			$(".languagesProficiency").valid()
			$(".languagesTab").append(languageTab);
		})
	}
})
function isEmpty(el) {
	return !$.trim(el.html())
}

$(document).on("click", ".savelangbutton", function() {
	if ($(".languages").valid() && $(".languagesProficiency").valid()) {
		saveLanguageObject();
	}
})
function saveLanguageObject() {
	let languageDetail = $(".languages");
	let languageProficiencyDetail = $(".languagesProficiency");
	const language = [];
	const languageProf = [];
	for (let items of languageDetail) {
		language.push(items.value);
	}
	for (let items of languageProficiencyDetail) {
		languageProf.push(items.value)
	}
	languageObject = language.map((item, index) => {
		return {
			language: item,
			languageProficiency: languageProf[index]
		}
	})
}


$("#currentLocation, #industryType, #currentDesignation").select2({
	dropdownParent: $("#AddEmploymentModel"),
	dropdownAutoWidth: true,
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
			inst.dpDiv.removeClass('datePickForStartDate');
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
			inst.dpDiv.removeClass('datePickForStartDate');
			$(this).datepicker('setDate', new Date(inst.selectedYear, inst.selectedMonth, 1));
		},
		showButtonPanel: true,
	});

	$(document).on("click", ".saveEmployeeDetails", function() {
		let currentlyWorking = "No";
		if ($('#currentlyWorking').is(':checked')) {
			currentlyWorking = "Yes";
		}
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
			"CurrentlyWorking": currentlyWorking,
			"ProfilePhoto": $("#profilePhoto").val()
		}
		if ($("#addEmployeeDetailForm").valid()) {
			$(".closeModal").click();
			employeeDetail.push(employeeDetails);
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
			<td><button class="btn btn-outline-danger delete-employment">Delete</button><button class="btn btn-outline-success">Edit</button></td>
		 </tr>
		 `);
	});
}
$(document).on("click", ".delete-employment", function() {
	employeeDetail.splice($(this).parent().parent().attr("id"), 1);
	addingEmployment();
	if (employeeDetail.length === 0) {
		$(".table-responsive").hide();
	} else {
		$(".table-responsive").show();
	}
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
			required: true,
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
		currentDesignation: {
			required: "Current designation is required",
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
