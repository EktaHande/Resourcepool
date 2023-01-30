  
    $(".bar").on("click",function(){
    sessionStorage.value =	$(this).find('span').text();
	});
	
	$(document).ready(function()
	{
     let value = sessionStorage.getItem("value");
	 let allElement = $(".bar");	
	  $.each(allElement,function(){
		if($(this).find('span').text() == value){
			$(this).css('color','grey');
		}
	 })
	
	})