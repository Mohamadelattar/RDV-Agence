<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<title>Gestion des Reservations</title>
<link href="inc/inc_Dashboard/css/main.css" rel="stylesheet">
<link href='inc/inc_Dashboard/assets/lib-calendrier/main.css' rel='stylesheet' />
<link href="inc/inc_Dashboard/css/reservation.css?version=1" rel="stylesheet">
</head>

<body>
	<div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
	<c:import url="/inc/inc_Dashboard/header.jsp" />
		<div class="app-main">
			<c:import url="/inc/inc_Dashboard/slidebar.jsp" />
			<div class="app-main__outer">
				<div class="app-main__inner">
				    <div class="app-page-title">
				        <div class="page-title-wrapper">
				            <div class="page-title-heading">
				                <div class="page-title-icon">
				                    <i class="fas fa-calendar-alt"></i>
				                </div>
				                <div>Calendrier
				                    <div class="page-title-subheading">Le calendrier des réservations pour cette semaine
				                    </div>
				                </div>
				            </div>
				            <div class="page-title-actions">
				                <button type="button" class="btn mr-3 btn-success" data-toggle="modal" data-target="#ajouterReservation" id="btnAjouterReservation">Ajouter une Réservation</button>
				       		</div>
						</div>
					</div>
				    <div class="tab-content">
				        <div class="tab-pane tabs-animation fade show active" id="tab-content-0" role="tabpanel">
				            <div class="main-card mb-3 card">
				                <div class="card-body">
				                    <div id="calendrier">
				                    	
				        			</div>
				        		</div>
				        	</div>
				    	</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- Button Pour Ajouter un reservation -->
	<div class="modal fade" id="ajouterReservation" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
	    <div class="modal-dialog modal-sm">
	        <div class="modal-content">
	            <div class="modal-header">
	                <h5 class="modal-title" id="exampleModalLongTitle">Ajouter une Réservation</h5>
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	            </div>
	            <form action="dash-reservations?action=ajouter" method="post">
	            	<div class="modal-body">
		                <div class="position-relative form-group"><label>Date *</label><input name="date" type="date" value="<c:out value="${reservation.dateReservation }"/>" class="form-control" required></div>
		                <div class="position-relative form-group"><label>Heure *</label><input name="heure" type="time" value="<c:out value="${reservation.heureReservation }"/>" class="form-control" required></div>
		                <div class="position-relative form-group"><label>CIN du client *</label><input name="cin" type="text" class="form-control" value="<c:out value="${reservation.cinClient }"/>" required></div>
						<c:if test="${!empty validation.erreurs['cin']  }">
		            	 	<div class=" error mb-2">
	                    		<div class="alert alert-danger mb-2" role="alert">
	                              	<c:out value="${validation.erreurs['cin'] }"/>
	                          	</div>
                            </div>
						</c:if>
						<small class="form-text text-muted">Les champs avec un astérisque (*) sont obligatoires.</small>
              		</div>
					<div class="modal-footer">
		                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		                <button type="submit" class="mt-1 btn btn-primary">Submit</button>
		        	</div>
         		</form>    
       	   	</div>
        </div>
	</div>
	
	
	<!-- Include our Footer with js scripts-->
	<c:import url="/inc/inc_Dashboard/footer.jsp" />
	<!-- Js For Calendar -->
	<script type="text/javascript" src="inc/inc_Dashboard/assets/lib-calendrier/main.js"></script>
	<c:if test="${!empty validation.erreurs  }">
   		<!-- Js Script to auto click on this button -->
   	 	<script>
   	 		console.log("Im hereeeeeee");
   	 		document.getElementById('btnAjouterReservation').click();	
   	 	</script>
	</c:if>
	<script>
	var listConfirmedReservations = [
	    <c:forEach items="${reservationsTime}" var="reservations">
	    	{
	    	<c:forEach items="${reservations}" var="singleReservation">
	    		'<c:out value="${singleReservation.key}" />' : '<c:out value="${singleReservation.value}" />',
		 	</c:forEach>
	    	},
	    </c:forEach>
	 ];

	 console.log(listConfirmedReservations);
		var today = new Date();
		var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
	  	document.addEventListener('DOMContentLoaded', function() {
	    var calendarEl = document.getElementById('calendrier');
	    var calendar = new FullCalendar.Calendar(calendarEl, {
	      headerToolbar: {
	        left: 'prev,next today',
	        center: 'title',
	        right: 'dayGridMonth,timeGridWeek,timeGridDay'
	      },
	      initialDate: console.log(date),
	      navLinks: true, // can click day/week names to navigate views
	      selectable: true,
	      selectMirror: true,
	      select: function(arg) {
	        var title = prompt('Ajouter Reservation:');
	        if (title) {
	          calendar.addEvent({
	            title: title,
	            start: arg.start,
	            end: arg.end,
	            allDay: arg.allDay
	          })
	        }
	        calendar.unselect()
	      },
	      eventClick: function(arg) {
	        if (confirm('Êtes-vous sûr de vouloir supprimer cette réservation?')) {
	          arg.event.remove()
	        }
	      },
	      editable: false,
	      dayMaxEvents: true, // allow "more" link when too many events
	      events: listConfirmedReservations
	      });
	
	    calendar.render();
	  });
</script>
	
</body>
</html>