function getArrayOfHours(){
	var arrayOfHours = [], i, j;

	for(i=9; i<18; i++) {
		if(i === 13 || i === 14){
			continue;
		}
		for(j=0; j<3; j++) {
		  	if(i<=9){
				arrayOfHours.push("0" + i + ":" + (j===0 ? "00" : 20*j) );
		  	}else{
		  		arrayOfHours.push(i + ":" + (j===0 ? "00" : 20*j) );
		  	}
		}
	}

	return arrayOfHours;
}

function getDateName(today){
	var days = ['Dimanche', 'Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi'];
	var dayName = days[today.getDay()];
	return dayName;
}

function customizeReservationBtn(reservationBtn,idReservation){

	if(reservationBtn.statut === 'valable'){
		var btn = document.createElement('a');
	    var btnText = document.createTextNode(reservationBtn.heure);
	    btn.appendChild(btnText);
        btn.href = "#";
        btn.className = "btn-reservation d-block mb-3";
        $(idReservation).children('.list-reservations').append( btn );
	}else if(reservationBtn.statut === 'non valable'){
		var btn = document.createElement('a');
	    var btnText = document.createTextNode(reservationBtn.heure);
	    btn.appendChild(btnText);
        btn.href = "#";
        btn.className = "btn-reservation-disabled d-block mb-3";
        $(idReservation).children('.list-reservations').append( btn );
	}
}


let reservationDates = [
	{
		'heure' : '10:00',
		'date' : '2021-02-02',
		'statut' : 'non valable',
	},
	{
		'heure' : '10:20',
		'date' : '2021-02-02',
		'statut' : 'non valable',
	},
	{
		'heure' : '11:20',
		'date' : '2021-02-03',
		'statut' : 'non valable',
	},
	{
		'heure' : '17:20',
		'date' : '2021-02-03',
		'statut' : 'non valable',
	},
	{
		'heure' : '17:00',
		'date' : '2021-02-02',
		'statut' : 'non valable',
	}
];

var arrayOfHours = getArrayOfHours();

function setReservationButton(heure,idReservation,classNameReservation){
	var btn = document.createElement('a');
    var btnText = document.createTextNode(heure);
    btn.appendChild(btnText);
    btn.href = "#";
    btn.className = classNameReservation + " d-block mb-3";
    $(idReservation).children('.list-reservations').append( btn );
}


function reservationsTimeButtons(reservationDates,idReservation){
	var arrayOfHoursInSpecialDate = [];
	reservationDates.forEach(function (reservationBtn, index) {
		arrayOfHoursInSpecialDate.push(reservationBtn.heure);
	}); 
	setReservationButtons(arrayOfHoursInSpecialDate,arrayOfHours,idReservation);
}

function setReservationButtons(arrayOfHoursInSpecialDate,arrayOfHours,idReservation){
	for( var i=0;i<arrayOfHours.length; i++){
		var setBtnDisabled = false;
		for( var j=0 ; j<arrayOfHoursInSpecialDate.length; j++){
			if( arrayOfHours[i] === arrayOfHoursInSpecialDate[j]){
				setBtnDisabled = true;
				setReservationButton(arrayOfHoursInSpecialDate[j],idReservation,'btn-reservation-disabled');
				break;
			}
		}
		if( setBtnDisabled === false ){
			setReservationButton(arrayOfHours[i],idReservation,'btn-reservation');
		}
	}
}


function dateToString(today){
	var dd = String(today.getDate()).padStart(2, '0');
	var mm = String(today.getMonth() + 1).padStart(2, '0');
	var yyyy = today.getFullYear();
	return yyyy + '-' + mm + '-' + dd;
}

Date.prototype.addDays = function(days) {
    var date = new Date(this.valueOf());
    date.setDate(date.getDate() + days);
    return date;
}

function filterReservationWithDate(reservationDates,today){
	let todayReservations = reservationDates.filter(reservationDate => reservationDate.date === today);
	return todayReservations;
}

function setDatesData(date){
	for(var i=0 ; i<7 ;i++){
		var today = date.addDays(i);
		if( getDateName(today) === 'Dimanche' ){
			var number = i+1;
			console.log('#day-'+ number);
			$('#day-'+ number).children('.day-name').html(getDateName(today.addDays(1)));
			$('#day-'+ number).children('.day-date').html(dateToString(today.addDays(1)));
			var idReservation = '#day-'+ number;
			let todayReservations = filterReservationWithDate(reservationDates,dateToString(today));
			reservationsTimeButtons(todayReservations,idReservation);
			i++;
			continue;
		}
		let todayReservations = filterReservationWithDate(reservationDates,dateToString(today));
		var number = i+1;
		console.log('#day-'+ number);
		$('#day-'+ number).children('.day-name').html(getDateName(today));
		$('#day-'+ number).children('.day-date').html(dateToString(today));
		var idReservation = '#day-'+ number;
		reservationsTimeButtons(todayReservations,idReservation);
	}
}

var date = new Date();

$(document).ready(function(){

  var date = new Date();

  setDatesData(date);

});
