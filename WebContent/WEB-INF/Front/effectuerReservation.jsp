<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Appointement</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="inc/inc_Front/css/style.css?version=1">
	
</head>
<body>
	
	<!-- Include the header -->
	<c:import url="/inc/inc_Front/header.jsp" />
	
	<c:if test="${reservation != null && empty validation.erreurs }" >
		<!--  Reservation Effectuee -->
		<span class="alert alert-success text-center">Votre réservation est effectuée <b>Veuillez attendez la confirmation par email</b></span>
	</c:if>
	
	<c:if test="${!empty validation.erreurs }" >
		<!-- Js Script to auto click on this button -->
   	 	<script>
   	 		console.log("Im hereeeeeee");
   	 		document.getElementsByClassName('btnReservation')[0].click();	
   	 	</script>
	</c:if>
	
	<section class="my-5" id="appointement-section">
		<div class="container">
			<div class="mx-auto appointement">
				<div class="reservation-header py-2">
					<h3 class="text-center">Prendre RDV en cabinet</h3>
				</div>
				<div class="row" id="reservationTable">
					<div class="col-4 pr-0">
						<div class="info-agency px-4 pt-4">
							<div class="profil-image mx-auto">
								<img src="inc/inc_Dashboard/assets/images/benaicha.jpg" class="d-block img-fluid profil-image-source">
								<a href="#"><i class="fas fa-camera profil-image-update"></i></a>
							</div>
							<div class="profil-info mt-4">
								<h4 class="text-center"><b>Dr.</b>Mohamed Amine Benaicha</h4>
								<hr>
								<ul class="list-info pl-0">
									<li class="list-info-item">
										<ul class="list-inline">
											<li class="list-inline-item">
												<i class="fas fa-map-marker-alt mr-2"></i>
												From 
											</li>
											<li class="list-inline-item float-right">
												<b>Beni Mellal </b>
											</li>
										</ul>
									</li>
									<li class="list-info-item">
										<ul class="list-inline">
											<li class="list-inline-item">
												<i class="fas fa-user mr-2"></i>
												Name
											</li>
											<li class="list-inline-item float-right">
												<b>Benaicha </b> 
											</li>
										</ul>
									</li>
									<li class="list-info-item">
										<ul class="list-inline">
											<li class="list-inline-item">
												<i class="fas fa-envelope mr-2"></i>
												Email
											</li>
											<li class="list-inline-item float-right">
												<b>amine98ben90@gmail.com </b> 
											</li>
										</ul>
									</li>
								</ul>
								<div class="text-center mb-4">
									<a href="#" class="btn-portofolio">Voir Portofolio</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-8 pl-0">
						<div class="reservation mt-4">
							<div class="reservation-body pb-4" id="reservationTableRows">
								<div id="carouselExampleControls" class="carousel slide" data-interval="false" data-ride="carousel">
								  	<div class="carousel-inner">

								  		<!-- First Caroussel item -->
									    <div class="carousel-item active">
											<!-- Wrap Caroussel Element -->
											<div class="list-of-days d-flex justify-content-around">
												<div class="day" id="day-1">
													<span class="d-block text-center day-name">
														Lundi
													</span>
													<span class="d-block day-date mt-2">
														2021 / 01 / 31 
													</span>
													<div class="list-reservations mt-3">
													</div>
												</div>
												<div class="day" id="day-2">
													<span class="d-block text-center day-name">
														Mardi
													</span>
													<span class="d-block day-date mt-2">
														2021 / 01 / 31 
													</span>
													<div class="list-reservations mt-3">

													</div>
												</div>
												<div class="day" id="day-3">
													<span class="d-block text-center day-name">
														Mercredi
													</span>
													<span class="d-block day-date mt-2">
														2021 / 01 / 31 
													</span>
													<div class="list-reservations mt-3">

													</div>
												</div>
											</div>
									    </div>

									    <!-- Second Caroussel item -->
									    <div class="carousel-item">
										  	<!-- Wrap div Elements -->
										  	<div class="list-of-days d-flex justify-content-around">
										  		<div class="day" id="day-4">
													<span class="d-block text-center day-name">
														Lundi
													</span>
													<span class="d-block day-date mt-2">
														2021 / 01 / 31 
													</span>
													<div class="list-reservations mt-3">
														
													</div>
												</div>
												<div class="day" id="day-5">
													<span class="d-block text-center day-name">
														Mardi
													</span>
													<span class="d-block day-date mt-2">
														2021 / 01 / 31 
													</span>
													<div class="list-reservations mt-3">
														
													</div>
												</div>
												<div class="day" id="day-6">
													<span class="d-block text-center day-name">
														Mercredi
													</span>
													<span class="d-block day-date mt-2">
														2021 / 01 / 31 
													</span>
													<div class="list-reservations mt-3">
														
													</div>
												</div>
										  	</div>
									    </div>
								  </div>
									  <!-- The first button-->
									  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
									    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
									    <span class="sr-only">Previous</span>
									  </a>

									  <!-- The Second button-->
									  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
									    <span class="carousel-control-next-icon" aria-hidden="true"></span>
									    <span class="sr-only">Next</span>
									  </a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- Appointement Modal -->

	<div class="modal fade" id="appointementModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
	    	<div class="modal-content">
	      		<div class="modal-header pb-0">
	        		<button type="button" class="close btn-close" data-dismiss="modal" aria-label="Close">
	          		<span aria-hidden="true">&times;</span>
	        		</button>
	      		</div>
			    <div class="modal-body mx-4 pt-0 mb-5">
			    	<h5 class="modal-title text-center mb-3">Prendre Rendez vous</h5>
			    	<form action="index" method="post" class="formConnexion" id="formReservation">
			    	<input type="hidden" name="action" value="effectuerReservation" />
					  <div class="form-group mb-4">
					  	<div class="form-group">
						  	<label for="inputNom">
						    	<i class="fas fa-user mr-2"></i> Nom : 
						    </label>
						    <input type="text" name="nom" disabled class="form-control" id="inputNom" placeholder="Votre Nom" value="<c:out value="${client.nom }" />" >
						</div>
					    <div class="form-group">
						    <label for="inputPrenom">
						    	<i class="fas fa-user mr-2"></i> Prénom : 
						    </label>
						    <input type="text" name="prenom" disabled class="form-control" id="inputPrenom" placeholder="Votre prenom" value="<c:out value="${client.prenom }" />" >
						</div>
						<div class="form-group">
						    <label for="inputPrenom">
						    	<i class="fas fa-user mr-2"></i> Cin : 
						    </label>
						    <input type="text" name="cin" disabled class="form-control" id="inputPrenom" placeholder="Votre Cin" value="<c:out value="${client.cin }" />" >
						</div>
					    <div class="form-group">
						    <label for="exampleInputEmail1">
						    	<i class="fas fa-envelope mr-2"></i> Votre Email : 
						    </label>
						    <input type="email" name="email" disabled class="form-control" id="exampleInputEmail1" placeholder="Votre email" value="<c:out value="${client.email }" /> ">
						</div>
					    <div class="form-group">
						     <label for="InputTelephone">
						    	<i class="fas fa-phone-alt mr-2"></i> Numéro de télephone : 
						    </label>
						    <input type="text" name="numTele" disabled class="form-control" id="InputTelephone" placeholder="num tele" value="<c:out value="${client.numTele }" /> ">
						</div>
						<div class="form-group">
						     <label for="InputTelephone">
						    	<i class="fas fa-phone-alt mr-2"></i> Heure de reservation : 
						    </label>
						    <input type="text" name="heure" disabled class="form-control" id="InputHeure" placeholder="num tele">
						</div>
						<div class="form-group">
						     <label for="InputTelephone">
						    	<i class="fas fa-phone-alt mr-2"></i> Date de reservation : 
						    </label>
						    <input type="text" name="date" disabled class="form-control" id="InputDate" placeholder="num tele">
						</div>

					  </div>

					  <div class="d-flex align-items-center mt-4">
					  	 <button type="submit" class="btn btn-primary btn-prendreRDV mx-auto">
						  	<i class="fas fa-sign-in-alt mr-2"></i> Prendre RDV
						  </button>
					  </div>

					</form>
			    </div>
	    	</div>
	  	</div>
	</div>
	
	<!-- Connexion pop up if the session not exist -->
	<div class="modal fade" id="connexionModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
	    	<div class="modal-content">
	      		<div class="modal-header pb-0">
	        		<button type="button" class="close btn-close" data-dismiss="modal" aria-label="Close">
	          		<span aria-hidden="true">&times;</span>
	        		</button>
	      		</div>
			    <div class="modal-body mx-4 pt-0 mb-5">
			    	<h5 class="modal-title text-center mb-3">Connexion</h5>
			    	<form method="post" action="index" class="formConnexion">
					  <div class="form-group mb-4">
					    <label for="exampleInputEmail1">
					    	<i class="fas fa-envelope mr-2"></i> Votre Email : 
					    </label>
					    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" value="${client.email}" name="email">
					    <span class="d-block float-right">
					    	<a href="#" class="formConnexion-link mt-1">Mot de Passe oublié ?</a>
					    </span>
					  </div>

					  <div class="form-group">
					    <label for="exampleInputPassword1">
					    	<i class="fas fa-lock mr-2"></i> Votre Mot de Passe :
					    </label>
					    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password" value="${client.password}">
					  </div>
					  <div class="d-flex align-items-center mt-4">
					  	 <button value="Client" type="submit" class="btn btn-primary btn-submit mx-auto">
						  	<i class="fas fa-sign-in-alt mr-2"></i> Se Connecter
						  </button>
					  </div>
					</form>
			    </div>
	    	</div>
	  	</div>
	</div>

	<!-- Include the footer -->
	<c:import url="/inc/inc_Front/footer.jsp" />

	<!-- Appointement Js -->
	<script>

		var reservationDates = [
			<c:forEach items="${reservationBtns}" var="reservationBtnData">
		    	{
		    	<c:forEach items="${reservationBtnData}" var="reservationBtn">
		    		'<c:out value="${reservationBtn.key}" />' : '<c:out value="${reservationBtn.value}" />',
		    	</c:forEach>
		    	},
		    </c:forEach>
		];

		var btnToggleValue=
		<c:choose>
			<c:when test="${client != null}">
				'<c:out value="#appointementModal" />'
			</c:when>
			<c:otherwise>
				'<c:out value="#connexionModal" />'
			</c:otherwise>
		</c:choose>
		;

		console.log(btnToggleValue);
	
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

		var arrayOfHours = getArrayOfHours();

		function setReservationButton(heure,idReservation,classNameReservation,dataTarget,dataToggle,heure,date){
			var btn = document.createElement('a');
		    var btnText = document.createTextNode(heure);
		    btn.appendChild(btnText);
		    btn.setAttribute('data-toggle',dataToggle);
		    btn.setAttribute('data-target',dataTarget);
		    btn.setAttribute('reservation-heure',heure);
		    btn.setAttribute('reservation-date',date);
		    btn.className = classNameReservation + " d-block mb-3";
		    $(idReservation).children('.list-reservations').append( btn );
		}


		function reservationsTimeButtons(reservationDates,idReservation,todayDate){
			var arrayOfHoursInSpecialDate = [];
			reservationDates.forEach(function (reservationBtn, index) {
				arrayOfHoursInSpecialDate.push(reservationBtn.heure);
			}); 
			setReservationButtons(arrayOfHoursInSpecialDate,arrayOfHours,idReservation,todayDate);
		}

		function reservationsTimeButtonsDisabled(arrayOfHours,idReservation,todayDate){
			for( var i=0;i<arrayOfHours.length; i++){
				setReservationButton(arrayOfHours[i],idReservation,'btn-reservation-disabled','','',arrayOfHours[i],todayDate);
			}
		}

		function setReservationButtons(arrayOfHoursInSpecialDate,arrayOfHours,idReservation,todayDate){
			for( var i=0;i<arrayOfHours.length; i++){
				var setBtnDisabled = false;
				for( var j=0 ; j<arrayOfHoursInSpecialDate.length; j++){
					if( arrayOfHours[i] === arrayOfHoursInSpecialDate[j]){
						setBtnDisabled = true;
						setReservationButton(arrayOfHoursInSpecialDate[j],idReservation,'btn-reservation-disabled','','',arrayOfHours[i],todayDate);
						break;
					}
				}
				if( setBtnDisabled === false ){
					setReservationButton(arrayOfHours[i],idReservation,'btn-reservation',btnToggleValue,'modal',arrayOfHours[i],todayDate);
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
					$('#day-'+ number).children('.day-name').html(getDateName(today.addDays(0)));
					$('#day-'+ number).children('.day-date').html(dateToString(today.addDays(0)));
					var idReservation = '#day-'+ number;
					var todayDate = dateToString(today);
					reservationsTimeButtonsDisabled(arrayOfHours,idReservation,todayDate);
					continue;
				}
				let todayReservations = filterReservationWithDate(reservationDates,dateToString(today));
				var number = i+1;
				console.log('#day-'+ number);
				$('#day-'+ number).children('.day-name').html(getDateName(today));
				$('#day-'+ number).children('.day-date').html(dateToString(today));
				var idReservation = '#day-'+ number;
				var todayDate = dateToString(today);
				reservationsTimeButtons(todayReservations,idReservation,todayDate);
			}
		}

		var date = new Date();

		$(document).ready(function(){

		  var date = new Date();

		  setDatesData(date);

		  /* Function to execute on button click */
		  $('.btn-reservation').click(function(){
			  	console.log('clickeeed');
				var reservationHeure = $(this).attr('reservation-heure');
				var reservationDate = $(this).attr('reservation-date');

				$('#InputHeure').val(reservationHeure);
				$('#InputDate').val(reservationDate);
				
		  });

		  /*Function to submit disabled Data*/
		  $('#formReservation').submit(function(e) {
			    $(':disabled').each(function(e) {
			        $(this).removeAttr('disabled');
			    })
		  });

		});


		
	</script>

</body>
</html>