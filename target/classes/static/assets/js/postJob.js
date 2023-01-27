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
	},
	{
		id: 14,
		text: 'Wix'
	},
	{
		id: 15,
		text: 'GoDaddy'
	},
	{
		id: 16,
		text: 'Mockup'
	},
	{
		id: 17,
		text: 'Layout Design'
	},
	{
		id: 18,
		text: 'phpMyAdmin'
	},
	{
		id: 19,
		text: 'Microsoft SQL Server Service Broker'
	},
	{
		id: 20,
		text: 'HTML 5 Canvas'
	},
	{
		id: 21,
		text: 'Database Administration'
	},
	{
		id: 22,
		text: 'Accross Language Server'
	},
	{
		id: 23,
		text: 'UI/UX Design Deliverables'
	}
];

//generates the extra option 
$.each(extraOption, function(indexInArray, valueOfElement) {
	$(".addition-skill-container").append(`
	 <div class="badge-container d-inline-flex badge rounded-pill tags">
	 	<span id="${indexInArray}" class="append-skill ${valueOfElement['text']}">${valueOfElement['text']}</span>
	 	<em class="ri-add-line ms-2"></em>
	 	<em class="bx bx-minus ms-2"></em>
	 </div>
	 `);
});

//function to add skill from extra option
$(document).on("click", ".append-skill", function() {
	let tagName = $(this).text();
	if (!allSkill.includes(tagName)) {
		$(this).parent().find('.ri-add-line').hide();
		$(this).parent().find('.bx-minus').show();
		pushTag(tagName);
	} else {
		let index = allSkill.indexOf(tagName);
		$(this).parent().find('.ri-add-line').show();
		$(this).parent().find('.bx-minus').hide();
		allSkill.splice(index, 1);
		generateAllTag() ;
	}
});


//initialize autocomplete 

let allSkill = [];

$("#skillSearch").autocomplete({
	source: ["c++", "java", "php", "coldfusion", "asp", "ruby" ,  "asp.net"  , "softskill"],
	minLength: 3,
	select: function(event, ui) {
		pushTag($("#skillSearch").val())
	},
	close : function(){
		$("#skillSearch").val('') ;
	}
});



//pushesh the tag inside array if not available
function pushTag(skill) {
	if (!allSkill.includes(skill)) {
		allSkill.push(skill);
		generateAllTag() ;
	}
}

//generate all tags
function generateAllTag() {
	$(".selected-div").html(`
		<p class="text-secondary my-2">Selected skills</p>
										<div class="foo">
											
										</div>
		`);
	$.each(allSkill, function(indexInArray, valueOfElement) {
		$(".foo").append(`
			  <div class="skill-container d-inline-flex badge rounded-pill my-2">
				 	<span class="append-skill" id="${indexInArray}">${valueOfElement}</span>
				 	<em class="ri-close-fill remove-tag"></em>
			  </div>
	 	`);
	});
}

//removes the tag 
$(document).on("click", ".remove-tag", function() {
	let index = allSkill.indexOf($(this).prev().text());
	allSkill.splice(index, 1);
	console.log(allSkill); 
	let badgeName = $(this).prev().text() ;
	let badge = $(".badge")
	console.log(badge) ;
	$.each(badge , function(index , val){
		if($(this).find('span').text() == badgeName){
			console.log("found equal")
			$(badge[index]).find(".ri-add-line").show();
			$(badge[index]).find(".bx-minus").hide();	
		}
	})
	console.log(allSkill);
	$(this).parent().remove();

})












