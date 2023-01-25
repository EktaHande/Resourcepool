// 0 for null values
// 8 for backspace 
// 48-57 for 0-9 numbers


$(document).on("keypress", ".no-e", function(evt) {
	if (evt.which != 8 && evt.which != 0 && evt.which < 48 || evt.which > 57) {
		evt.preventDefault();
	}
})


let currentTab = 0;
showTab(currentTab);

function showTab(n) {
	let x = $(".tab");
	$(x[n]).show();
	if (n == 0) {
		$("#prevBtn").css("visibility", "hidden");
	} else {
		$("#prevBtn").css("visibility", "visible");
	}
	if (n == (x.length - 1)) {
		$("#nextBtn").html("Submit");
	} else {
		$("#nextBtn").html("Next");

	}
	fixStepIndicator(n)
}

//Function to change the tabs based on 
function nextPrev(n) {
	let x = $(".tab");
	if (n == 1 && !validateForm())
		return false;
	$(x[currentTab]).hide();
	

	if (currentTab == x.length - 1 && n==1) {
		if($("#manageCompanyDetails").length){
			if($("#manageCompanyDetails").valid()){
				ajaxCall();
			}
		} else if ($("#regEmployeeForm").length) {
			if ($("#regEmployeeForm").valid()) {
				ajaxCallOnSubmitOfPersonalDetails();
			}
		}
		return false;
	}
	currentTab = currentTab + n;
	showTab(currentTab);
}


function validateForm() {
	let x, i, valid = true;
	let validBoolean = true;
	x = $(".tab");


	//for all input elements of that tab
	let inputElements = $(x[currentTab]).find("input");

	//for dropdown elements
	let selectElements = $(x[currentTab]).find("select");

	//validates all the input inside the tab 
	for (i = 0; i < inputElements.length; i++) {
		valid = $(inputElements[i]).valid();
		if (!valid) {
			validBoolean = false
		}

	}
	//validates all the dropdown inside the current tab 
	for (i = 0; i < selectElements.length; i++) {

		valid = $(selectElements[i]).valid();
		if (!valid) {
			validBoolean = false
		}
	}
	if (!validBoolean) return false;



	if (valid) {
		let steps;
		steps = $(".step");
		$(steps[currentTab]).addClass("finish");
	}
	return valid;
}

//Highlights the current Tab
function fixStepIndicator(n) {
	let x = $(".step");
	$.each(x, function() {
		$(this).attr('class').replace(" active", "");
		$(this).parent().removeClass("wizard-step-highlight");
	});
	$(x[n]).addClass(" active");
	$(x[n]).parent().addClass("wizard-step-highlight")
}




