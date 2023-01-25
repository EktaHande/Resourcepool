/**
 * Post Job Javascript
 */
 
 
$("#jobHeadline").on("blur" , function(){
	if($(this).valid()){
		$(".headline-confirm").css("visibility", "visible");
	}else{
		$(".headline-confirm").css("visibility", "hidden");
	}
})

/**
Validation rule for the post job  
 */
 
$("#postJob").validate({
	rules : {
		jobHeadline : {
			required : true ,
			validateName : true,
			maxlength : 60 ,
			minlength : 7 ,
		}
	}
})

let CustomSelectionAdapterForSkill = $.fn.select2.amd.require("select2/selection/customSelectionAdapter");
	

$("#postjobSkill").select2({
		placeholder : "Add Skills",
		selectionAdapter : CustomSelectionAdapterForSkill,
		selectionContainer : $('.foo') ,
		 theme: "bootstrap" ,
	});
	