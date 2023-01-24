
$(document).on("keypress" , ".no-e" , function(evt){
	 if (evt.which != 8 && evt.which != 0 && evt.which < 48 || evt.which > 57)
    {
        evt.preventDefault();
    }
})

/*Datepicker for Employee Date of birth  */
let currentTab = 0;
showTab(currentTab);
 $("#success").hide();
function showTab(n) {
		let x = $(".tab");		
		$(x[n]).show();
		if(n < x.length){
			if (n == 0) {
			$("#prevBtn").css("visibility","hidden");
			} else {
				$("#prevBtn").css("visibility","visible");
			}
			if (n == (x.length - 1)) {
				$("#nextBtn").html("Submit");
			} else {
				$("#nextBtn").html ("Next") ;
			}
		}else{
			$("#nextBtn").hide();
			$("#prevBtn").hide();
		}
		fixStepIndicator(n)
	}
	

	var object = {};
	function createObject(){
		address();
		contact();
		bankObject();
		allcompany();
		object['addressDetails']   = addressObject;
		object['contactDetails']   = contactObject;
		object['bankDetails']   = bankDetails;
		object['allDocumentsDetails']   = allcompanyDocuments;
	    let allElement = $(".companyDetails").find('input');
		$.each(allElement, function() {
			object[$(this).attr('name')] = $(this).val();
		});
		let selectElement = $(".companyDetails").find('select');
		$.each(selectElement, function() {
			object[$(this).attr('name')] = $(this).val();
		});
		
	    let allGstDetails = $(".gstNumber").find('input');
       	$.each(allGstDetails, function() {
			if($(this).attr("type") == "radio"){
				if($(this).is(":checked")){
				object[$(this).attr('name')] = $(this).val();	
				}
			}else{
				object[$(this).attr('name')] = $(this).val();
			}
			
		});
	
		return true;
	}
	
	var addressObject = {};
	
	function address(){
		
		let addressDetailsInput = $(".addressDetails").find('input');
		$.each(addressDetailsInput, function(){
			addressObject[$(this).attr('name')] = $(this).val();
		})
		let selectElement = $(".addressDetails").find('select');
        $.each(selectElement, function() {
			addressObject[$(this).attr('name')] = $(this).val();
		});
		
	}
	
	var contactObject = {};
	function contact(){
		let contactDetailsInput = $(".contactDetails").find('input');
		$.each(contactDetailsInput, function(){
			contactObject[$(this).attr('name')] = $(this).val();
		})
		let selectElement = $(".contactDetails").find('select');
        $.each(selectElement, function() {
			contactObject[$(this).attr('name')] = $(this).val();
		});
		
	}

	  var bankDetails = {};
	  function bankObject(){
		
		let bankDetailsInput = $(".bankDetails").find('input');
		$.each(bankDetailsInput, function(){
			bankDetails[$(this).attr('name')] = $(this).val();
		})
		let selectElement = $(".bankDetails").find('select');
        $.each(selectElement, function() {
			bankDetails[$(this).attr('name')] = $(this).val();
		});
	}
	
	
	
	  var allcompanyDocuments = {};
	  function allcompany(){
		let uploadDocuments = $(".uploadDocuments").find('input');
		$.each(uploadDocuments, function(){
			allcompanyDocuments[$(this).attr('name')] = $(this).val();
		})
	}
	
	
	function ajaxCall(){
		$.ajax({
			url : "ObjectData",
			type: "POST",
			data : {
				"obj" : JSON.stringify(object)
			},
         success: function (response) {
           console.log(JSON.parse(response))
           $("#success").show();
		   setTimeout(function() { $("#success").hide();
           window.location.href ="manageCompanyDetails";
		   }, 3000);
                },
        error: function (response) {
            console.log(response);   
        }
		})	
	}
	

	

	//Function to change the tabs based on 
	function nextPrev(n) {
		let x = $(".tab");
		if (n == 1 && !validateForm()){
			return false;
		}
	     $(x[currentTab]).css("display", "none");
		   if(currentTab == x.length-1 && n==1)
		    {
			if( $("#manageCompanyDetails").valid())
			{
				if(createObject()){
			 	  ajaxCall();	
				}
			}
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
	if (!validBoolean)
		return false;
	if (valid) {
		let steps;
		steps = $(".step");
		$(steps[currentTab]).addClass("finish");
	}
	return valid;
}

function fixStepIndicator(n) {
	x = $(".step");
	$.each(x, function() {
		$(this).attr('class').replace(" active", "");
		$(this).parent().removeClass("wizard-step-highlight");
	});
	$(x[n]).addClass(" active");
	$(x[n]).parent().addClass("wizard-step-highlight")
}


//Employee Date of birth 
$("#employeeDOB").datepicker({
	dateFormat: 'dd/mm/yy',
	maxDate: new Date(new Date() - 1000 * 60 * 60 * 24 * 1),
	changeMonth: true,
	changeYear: true,
});

//validating date picker on change

$(document).on("keyup change clear keydown", "#employeeDOB", function() {
	$(this).valid();
})




//All validation rules and message for the employee reg form

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
		test: {
			required: true,
		}
	},
	messages: {
		employeeFirstName: {
			required: "Enter the Employee First name",
			validateName: "Enter the first name in correct format"
		},
		lastName: {
			required: "Enter the last name of the employee ",
			maxlength: "the length of the last name should not exceed the 45 chars",
			minlength: "the length of the first name should not be less than 2 chars",
			validateName: "Enter the last name in correct format",
		},
		employeeEmail: {
			required: "Enter the employee email",
			maxlength: "length of the email should not exceed the 45 chars",
			minlength: "length of the email should not be less than 2 chars",
			validateEmail: "Enter the valid email"
		},
		employeeDOB: {
			required: "Enter the employee date of birth",
			validateDate: "date should not be less than current date",
			DateFormat: "Enter the date in correct format",
		},
		employeeMobile: {
			required: "Enter the mobile no ",
			validateMobile: "Enter the mobile no in correct format",
			maxlength: "length of the no should not exceed the 13 digits",
			minlength: "length of the phone no should  not be less than 10 digits",
			digits: "Enter a valid no "
		},
	}
})