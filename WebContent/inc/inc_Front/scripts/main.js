$('#item-1').click(function(){

	console.log('clicked');
  $('#imageSocialMedia').attr('src', 'inc/inc_Front/images/facebook.png');
}); 

$('#item-2').click(function(){
  $('#imageSocialMedia').attr('src', 'inc/inc_Front/images/instagram.png');
});

$('#item-3').click(function(){
  $('#imageSocialMedia').attr('src', 'inc/inc_Front/images/google-map.png');
});

$('#modifierProfil').click(function(){
	console.log('tessst');
	var class1= $('#modifierContent').attr('class');
	$('#modifierContent').attr('class', class1 + ' d-block');
	var class2= $('#illustrationProfil').attr('class');
	$('#illustrationProfil').attr('class', class2 + ' d-none');
});


/*Function detect the resize of the window*/

$(document).ready(function(){
  var sizeOfWindow = $(window).width();
  console.log(sizeOfWindow);
  var classArray = ['navbar', 'navbar-expand-lg', 'navbar-light', 'bg-nav', 'py-3', 'bg-nav-lg'] ;
  var classes='';
  if( sizeOfWindow >= 960 ){
  	classArray['5'] = 'bg-nav-lg';
  	for(var i=0 ; i<classArray.length; i++){
  		classes +=classArray[i] +' ';
  	}
  }else{
  	classArray['5'] = 'px-3';
  	for(var i=0 ; i<classArray.length; i++){
  		classes += classArray[i] +' ';
  	}
  }
  $('#navHeader').attr('class',classes);
});

$(window).resize(function(){
  var sizeOfWindow = $(window).width();
  console.log(sizeOfWindow);
  var classArray = ['navbar', 'navbar-expand-lg', 'navbar-light', 'bg-nav', 'py-3', 'bg-nav-lg'] ;
  var classes='';
  if( sizeOfWindow >= 960 ){
  	classArray['5'] = 'bg-nav-lg';
  	for(var i=0 ; i<classArray.length; i++){
  		classes +=classArray[i] +' ';
  	}
  }else{
  	classArray['5'] = 'px-3';
  	for(var i=0 ; i<classArray.length; i++){
  		classes += classArray[i] +' ';
  	}
  }
  $('#navHeader').attr('class',classes);
});

/* JavaScript Pour Profil*/

$(document).ready(function() {
  $(".non-active-option").click(function () {
      if( $(this).attr('id') == 'option-1'){
        $('.menu-option').eq(1).removeClass("d-block");
        $('.menu-option').eq(0).addClass("d-block");
      }else{
        $('.menu-option').eq(0).removeClass("d-block");
        $('.menu-option').eq(0).addClass("d-none");
        $('.menu-option').eq(1).addClass("d-block");
      }
      $(".non-active-option").removeClass("active-option");
      $(this).addClass("active-option");   
  });
});

/* Caroussel Js*/
$('.owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    dots:false,
    nav:true,
    mouseDrag:false,
    autoplay:true,
    animateOut: 'slideOutUp',
    responsive:{
        0:{
            items:1
        },
        3000:{
            items:1
        },
        6000:{
            items:1
        }
    }
});
