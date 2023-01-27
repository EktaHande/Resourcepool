/**
 * Education Detail related Javascript
 */

//Adding jquery for datepicker


let allEducationDetails = [];


$("textarea").on("keydown" , function(){
	let el = this;
  setTimeout(function(){
    el.style.cssText = 'height:auto; padding:0';
    // for box-sizing other than "content-box" use:
    // el.style.cssText = '-moz-box-sizing:content-box';
    el.style.cssText = 'height:' + el.scrollHeight + 'px';
  },0);
})



$("#educationStartDate").datepicker({
		dateFormat: 'dd/mm/yy',
		maxDate: 0,
		changeMonth: true,
		changeYear : true,
		showOn: "button",
		buttonImage: "assets/img/calendar-icon.png",
		buttonImageOnly: true,
		buttonText: "Select date",
	}
) ;

$("#educationEndDate").datepicker({
	dateFormat: 'dd/mm/yy',
		changeMonth: true,
		changeYear : true,
		showOn: "button",
		buttonImage: "assets/img/calendar-icon.png",
		buttonImageOnly: true,
		buttonText: "Select date",
}) ;





function genrateObj() {
	let eduDetail = {
	
		"schoolName": $("#schoolName").val(),
		"streamName": $("#streamName").val(),
		"degree": $("#degree").val(),
		"educationStartDate": $("#educationStartDate").val(),
		"educationEndDate": $("#educationEndDate").val(),
		"description": $("#description").val(),
	}
	console.log(eduDetail);
	return eduDetail;
}

function save(){
	allEducationDetails.push(genrateObj); 
}

function generateTableForEducationDetails(){
	$(".educationTable").html(` <div class="table-responsive mt-3">
										<table class="table table-hover table-border">
											<thead class="table-secondary">
												<tr>
													<th scope="col">SchoolName</th>
													<th scope="col">Stream Name</th>
													<th scope="col">degree</th>
													<th scope="col">Start Date</th>
													<th scope="col">End date</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody class="eduContent">
												
											</tbody>
										</table>
									</div>`);

	$.each(allEducationDetails, function (indexInArray, valueOfElement) { 
		 console.log(valueOfElement);
		 $(".eduContent").append(`
		 <tr id=${indexInArray}>
		 	<td>${valueOfElement["schoolName"]}</td>
			<td>${valueOfElement["streamName"]}</td>
			<td>${valueOfElement["degree"]}</td>
			<td>${valueOfElement["educationStartDate"]}</td>
			<td>${valueOfElement["educationEndDate"]}</td>
			<td><button class="btn btn-outline-danger delete-edu">delete</button></td>
		 </tr>
		 `);
	});
}

$(document).on("click" , ".delete-edu" , function(){
	console.log($(this).parent().parent().attr("id"));
	allEducationDetails.splice($(this).parent().parent().attr("id") ,1 );
	generateTableForEducationDetails();
	console.log("clicked") ;
})

$(document).on("click" , ".saveEducation" , function(){
	if($("#educationDetail").valid()){
		allEducationDetails.push(genrateObj());
		generateTableForEducationDetails();
		$(".close-modal").click();
	}
	
})


$(document).on("click" , ".close-modal" ,function(){
	$(".customehide").hide() ;	
	$('#educationDetail').trigger("reset");
});


//Validation rules and message for education qualification

$("#educationDetail").validate({
	rules : {
		schoolName : {
			required : true ,
			maxlength : 60,
			validateName : true ,
		},
		streamName : {
			required : true ,
		},
		degree : {
			required : true ,
		},
		educationStartDate : {
			required : true ,
			validateDate : true ,
		} ,
		educationEndDate : {
			required : true ,
		},
		description : {
			maxlength : 500,
		}	
	} ,
	messages:{
		schoolName : {
			required  : "Enter school name",
		},
		streamName : {
			required  : "Please select  stream name",
		},
		degree : {
			required : "Please select  degree" ,
		},
		educationStartDate : {
			required : " Please select education start date" ,
		} ,
		educationEndDate : {
			required : "Please select education end date" ,
		},
		description : {
			maxlength : "Max length should not exceed the 100 character" ,	
		}
	}
}) ;