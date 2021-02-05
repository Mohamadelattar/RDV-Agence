
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