$('#item-1').click(function(){

	console.log('clicked');
  $('#imageSocialMedia').attr('src', 'inc/assets/images/facebook.png');
}); 

$('#item-2').click(function(){
  $('#imageSocialMedia').attr('src', 'inc/assets/images/instagram.png');
});

$('#item-3').click(function(){
  $('#imageSocialMedia').attr('src', 'inc/assets/images/google-map.png');
});

$('#modifierProfil').click(function(){
	console.log('tessst');
	var class1= $('#modifierContent').attr('class');
	$('#modifierContent').attr('class', class1 + ' d-block');
	var class2= $('#illustrationProfil').attr('class');
	$('#illustrationProfil').attr('class', class2 + ' d-none');
});