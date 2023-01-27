

let currTab = 0 ;
showTabOfSkill(currTab);

function showTabOfSkill(n) {
	let x = $(".tab");
	let buttonName = $(".tab-title");
	let btn = "" ;
	$(x[n]).show();
	if (n == 0) {
		$("#prevJobBtn").css("visibility", "hidden");
	} else {
		btn = "Previous : "+ $(buttonName[n-1]).text() ;
		$("#prevJobBtn").html(btn);
		$("#prevJobBtn").css("visibility", "visible");
	}
	if (n == (x.length - 1)) {
		$("#nextJobBtn").html("Submit");
	} else {
		btn = "Next : "+ $(buttonName[n+1]).text() ;
		console.log(btn)
		$("#nextJobBtn").html(btn);
	}
	
}

//Function to change the tabs based on 
function nextSkill(n) {
	let x = $(".tab");
	if (n == 1 && !validateForm())
		return false;
	$(x[currTab]).hide();
	

	if (currTab == x.length - 1 && n==1) {
		//submit
		return false;
	}
	currTab = currTab + n;
	showTabOfSkill(currTab);
}


function validateForm() {
	let x, i, valid = true;
	let validBoolean = true;
	x = $(".tab");


	//for all input elements of that tab
	let inputElements = $(x[currTab]).find("input");

	//for dropdown elements
	let selectElements = $(x[currTab]).find("select");

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
	return valid;
}





