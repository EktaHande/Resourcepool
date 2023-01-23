
 
	/*Datepicker for Employee Date of birth  */
	let currentTab = 0;
	showTab(currentTab);

function showTab(n) {
		let x = $(".tab");		
		$(x[n]).show();
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
		fixStepIndicator(n)
	}
	
	//Function to change the tabs based on 
	function nextPrev(n) {

		let x = $(".tab");
		console.log(x.length);

		if (n == 1 && !validateForm())
			return false;
		x[currentTab].style.display = "none";
		currentTab = currentTab + n;

		if (currentTab >= x.length) {
			/*document.getElementById("regForm").submit();*/
			return false;
		}
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
			if(!valid){
				validBoolean=false
			}
			
		}
		//validates all the dropdown inside the current tab 
		for (i = 0; i < selectElements.length; i++) {
			valid = $(selectElements[i]).valid() ;
			if(!valid){
				validBoolean=false
			}
			
			
		}
		
		if(!validBoolean) return false;
		
		
		
		if (valid) {
			let steps;
			steps = $(".step");
			$(steps[currentTab]).addClass("finish");
		}
		return valid;
	}

	//Highlights the current Tab
	function fixStepIndicator(n){
        x = $(".step");	
		$.each(x,function(){
	    $(this).attr('class').replace(" active","");
		$(this).parent().removeClass("wizard-step-highlight");
		});
		$(x[n]).addClass(" active");
		$(x[n]).parent().addClass("wizard-step-highlight")
	}
	
	//Employee Date of birth 
	$("#employeeDOB").datepicker({
		dateFormat: 'dd/mm/yy',
		maxDate: new Date(new Date() - 1000*60*60*24*1),
		changeMonth: true,
		changeYear : true,
	});
	
	//validating date picker on change
	
	$(document).on("keyup change clear keydown" , "#employeeDOB" , function(){
		$(this).valid() ;
	})

	


	//All validation rules and message for the employee reg form
	
	$("#regEmployeeForm").validate({
		rules:{
			employeeFirstName:{
				required: true,
				maxlength : 45 ,
				minlength : 2,
				validateName : true ,
				
			},employeeLastName:{
				required: true,	
				maxlength : 45,
				minlength : 2,	
				validateName : true ,
			},
			employeeEmail:{
				required: true,	
				maxlength : 45,
				minlength : 2,
				validateEmail : true ,
			},
			employeeDOB:{
				required: true,
				DateFormat : true ,
				validateDate : true ,
			},
			employeeMobile:{
				required: true,	
				digits : true,
				maxlength : 13 ,
				minlength : 10 ,
				validateMobile : true ,
			},
			languages : {
				validateLanguage : true ,
			},
		},
		messages:{
			employeeFirstName: {
				required: "Enter the Employee First name",	
				validateName : "Enter the first name in correct format"
			} ,
			lastName:{
				required: "Enter the last name of the employee ",	
				maxlength : "the length of the last name should not exceed the 45 chars",
				minlength : "the length of the first name should not be less than 2 chars",	
				validateName : "Enter the last name in correct format" ,
			},
			employeeEmail:{
				required: "Enter the employee email",	
				maxlength : "length of the email should not exceed the 45 chars",
				minlength : "length of the email should not be less than 2 chars",
				validateEmail : "Enter the valid email"
			},
			employeeDOB:{
				required: "Enter the employee date of birth",	
				validateDate : "date should not be less than current date" ,
				DateFormat : "Enter the date in correct format" ,
			},
			employeeMobile:{
				required: "Enter the mobile no ",	
				validateMobile : "Enter the mobile no in correct format",
				maxlength : "length of the no should not exceed the 13 digits" ,
				minlength : "length of the phone no should  not be less than 10 digits",
				digits : "Enter a valid no "
			} ,
		}
	})