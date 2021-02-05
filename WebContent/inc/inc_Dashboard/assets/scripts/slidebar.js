/**
 * 
 */

/*Change the active Class*/

$(document).ready(function() {
	var elements = $('.slide-element');
	index = localStorage.getItem("index");
	for(var i=0;i<elements.length;i++){
		if(i == index){
			$('.slide-element').eq(i).addClass("mm-active");
		}
	}
});

$(document).ready(function() {
	$('.slide-element').click(function () { 
		localStorage.setItem("index", $('.slide-element').index(this));
	});
});
