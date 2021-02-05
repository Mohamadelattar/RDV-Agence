<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<title>Dashboard</title>
<link href="inc/inc_Dashboard/css/main.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
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
                                        <i class="fas fa-home"></i>
                                    </div>
                                    <div>Acceuil</div>
                                </div>
                                <div class="page-title-actions">
                                    
                                </div>    </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-xl-4">
                                <div class="card mb-3 widget-content bg-midnight-bloom">
                                    <div class="widget-content-wrapper text-white">
                                        <div class="widget-content-left">
                                            <div class="widget-heading">Employe</div>
                                            <div class="widget-subheading">Total</div>
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-white">
                                            <span>${somme} </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-xl-4">
                                <div class="card mb-3 widget-content bg-arielle-smile">
                                    <div class="widget-content-wrapper text-white">
                                        <div class="widget-content-left">
                                            <div class="widget-heading">Clients</div>
                                            <div class="widget-subheading">Total  </div>
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-white"><span>${clientSomme}</span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-xl-4">
                                <div class="card mb-3 widget-content bg-grow-early">
                                    <div class="widget-content-wrapper text-white">
                                        <div class="widget-content-left">
                                            <div class="widget-heading">Publication</div>
                                            <div class="widget-subheading">Total</div>
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-white"><span>${pubSomme}</span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </div>        
                        <div class="tab-content">
                            <div class="tab-pane tabs-animation fade show active" id="tab-content-0" role="tabpanel">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="main-card mb-3 card">
                                            <div class="card-body">
                                                <h5 class="card-title">Reservation</h5>
                                                <canvas id="myChart"></canvas>
                                            </div>
                                        </div>
                                        <div class="main-card mb-3 card">
                                            <div class="card-body">
                                                <h5 class="card-title">Publication</h5>
                                                <canvas id="myChart2"></canvas>
                                            </div>
                                             
                                        </div>
                                    </div>
                                   
		                                     
										 
                                    <div class="col-md-6">
                                     <c:if test="${employe.isAdmin=='1'}">
                                        <div class="main-card mb-3 card">
                                            <div class="card-body">
                                                <h5 class="card-title">Employe</h5>
                                                <canvas id="myChart3"></canvas>
                                            </div>
                                       
                                        </div>
                                        </c:if>
                                       <div class="main-card mb-3 card">
                                            <div class="card-body">
                                                <h5 class="card-title">Client</h5>
                                                <canvas id="myChart4"></canvas>
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                    
                                   
                               
                                </div>
            
                            </div>
                             
                        </div>
            
                    </div>
			
		</div>
	</div>

	
</body>
 
<script>
var ctx = document.getElementById('myChart').getContext('2d');
var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'pie',

    // The data for our dataset
    data: {
        labels: ['En attente', 'Accepter', 'Valider', 'Refuser'],
        datasets: [{
            label: '',
            backgroundColor: ['rgb(220, 53, 69)','rgb(255, 193, 7)','rgb(40, 167, 69)','rgb(0, 123, 255)'],
            data: [20, 30, 40, 20,]
        }]
    },

    // Configuration options go here
    options: {}
});

</script>
<script>
var listPublication = [
    <c:forEach items="${publications}" var="item">
      '<c:out value="${item}" />',  
    </c:forEach>
 ];
var ctx2 = document.getElementById('myChart2').getContext('2d');
var chart2 = new Chart(ctx2, {
    // The type of chart we want to create
    type: 'line',

    // The data for our dataset
    data: {
        labels: ['Janvier','Fevrier','Mars','April','Mai','Juin','Juillet','Aout','September','October','November','Decembre'],
        datasets: [{
        	label:'Publication',
            backgroundColor: 'rgb(220, 53, 69)',
            data: [listPublication[0],listPublication[1],listPublication[2],listPublication[3],listPublication[4],listPublication[5], listPublication[6],listPublication[7],listPublication[8],listPublication[9],listPublication[10],listPublication[11]]
        }]
    },

    // Configuration options go here
    options: {}
});

</script>
<script>
 
var listEmploye = [
    <c:forEach items="${conges}" var="item">
      '<c:out value="${item}" />',  
    </c:forEach>
 ];
 
var ctx3 = document.getElementById('myChart3').getContext('2d');
var chart3 = new Chart(ctx3, {
    // The type of chart we want to create
    type: 'pie',

    // The data for our dataset
    data: {
        labels: ['Active', 'En conge'],
        datasets: [{
            label: '',
            backgroundColor: ['rgb(220, 53, 69)','rgb(255, 193, 7)'],
            data: [listEmploye[0], listEmploye[1]]
        }]
    },

    // Configuration options go here
    options: {}
});
</script>
<script>
var listClient = [
    <c:forEach items="${clients}" var="item">
      '<c:out value="${item}" />',  
    </c:forEach>
 ];
var ctx4 = document.getElementById('myChart4').getContext('2d');
var chart4 = new Chart(ctx4, {
    // The type of chart we want to create
    type: 'line',

    // The data for our dataset
    data: {
        labels: ['Janvier','Fevrier','Mars','April','Mai','Juin','Juillet','Aout','September','October','November','Decembre'],
        datasets: [{
        	label:'Client',
            backgroundColor: 'rgb(0, 123, 255)',
            data: [listClient[0],listClient[1],listClient[2],listClient[3],listClient[4],listClient[5],listClient[6],listClient[7],listClient[8],listClient[9],listClient[10],listClient[11]]
        }]
    },

    // Configuration options go here
    options: {}
});

</script>
	<script type="text/javascript" src="inc/inc_Dashboard/assets/scripts/main.js"></script>
</html>