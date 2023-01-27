/**
 * Post Job Javascript
 */


$("#jobHeadline").on("blur", function() {
	if ($(this).valid()) {
		$(".headline-confirm").css("visibility", "visible");
	} else {
		$(".headline-confirm").css("visibility", "hidden");
	}
})

/**
Validation rule for the post job  
 */

$("#postJob").validate({
	rules: {
		jobHeadline: {
			required: true,
			validateName: true,
			maxlength: 60,
			minlength: 7,
		}
	}
})

let CustomSelectionAdapterForSkill = $.fn.select2.amd.require("select2/selection/customSelectionAdapter");

//$('#postjobSkill').on("change" , function(){	

//})

var optionFromAjax = [
    {
        id: 0,
        text: 'java'
    },
    {
        id: 1,
        text: 'Ajax'
    },
    {
        id: 2,
        text: '.net'
    },
    {
        id: 3,
        text: 'c#'
    },
    {
        id: 4,
        text: 'python'
    } ,
    {
		id : 5 ,
		text : 'c++' 
	}
];


$("#postjobSkill").select2({
	placeholder: "Search Skills",
	selectionAdapter: CustomSelectionAdapterForSkill,
	selectionContainer: $('.foo'),
	theme: "bootstrap",
	minimumInputLength: 3,
	data : optionFromAjax ,
});


/**Json for extra option 
 */
let extraOption = [
	{
		id: 6,
		text: 'Graphic Design '
	},
	{
		id: 7,
		text: 'Adobe Photoshop'
	},
	{
		id: 8,
		text: 'Adobe illustrator'
	},
	{
		id: 9,
		text: 'Landing Page'
	},
	{
		id: 10,
		text: 'PHP'
	},
	{
		id: 11,
		text: 'Logo Design'
	},
	{
		id: 12,
		text: 'Javascript'
	},
	{
		id: 13,
		text: 'Search Engine Optimization'
	} ,
	{
		id: 14,
		text: 'Wix'
	} ,
	{
		id: 15,
		text: 'GoDaddy'
	} ,
	{
		id: 16,
		text: 'Mockup'
	} ,
	{
		id: 17,
		text: 'Layout Design'
	} ,
	{
		id: 18,
		text: 'phpMyAdmin'
	} ,
	{
		id: 19,
		text: 'Microsoft SQL Server Service Broker'
	} ,
	{
		id: 20,
		text: 'HTML 5 Canvas'
	} ,
	{
		id: 21,
		text: 'Database Administration'
	} ,
	{
		id: 22,
		text: 'Accross Language Server'
	} ,
	{
		id: 23,
		text: 'UI/UX Design Deliverables'
	}
];


$.each(extraOption, function(indexInArray, valueOfElement) {
	$(".addition-skill-container").append(`
	 <div class="badge-container d-inline-flex badge rounded-pill tags">
	 	<span id="${indexInArray}" class="append-skill">${valueOfElement['text']}</span>
	 	<em class="ri-add-line ms-2"></em>
	 </div>
	 `);
});

let finalValueOfSkill = [];
$(document).on("click", ".append-skill", function() {
	let tagName = $(this).text();
	let optionVal = $("option");
	let isExist = true;
	$.each(optionVal, function(index, element) {
		if ($(element).val() == tagName) {
			isExist = false;
		}
	});
	if (isExist) {
		$(".skill-post-select").append(`<option value="${tagName}">${tagName}</option>`);
	}
	finalValueOfSkill = $("#postjobSkill").val();

	console.log(finalValueOfSkill.includes($(this).text()));
	if (finalValueOfSkill.includes($(this).text())) {
		let index = finalValueOfSkill.indexOf($(this).text());
		finalValueOfSkill.splice(index, 1);
	} else {
		finalValueOfSkill.push($(this).text());
	}

	$("#postjobSkill").val(finalValueOfSkill);
	$("#postjobSkill").trigger('change.select2');
	console.log($("#postjobSkill").val())
})