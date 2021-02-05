<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listes des reservations</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<title>Gestion Employe</title>
<link href="inc/inc_Dashboard/css/main.css" rel="stylesheet">
<link href="inc/inc_Dashboard/css/publication.css" rel="stylesheet">
<link href="inc/inc_Dashboard/css/util.css" rel="stylesheet">
</head>
<body>
<div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">

	<!-- Include the header -->
	<c:import url="/inc/inc_Dashboard/header.jsp" />
	
	<div class="app-main">
	
	<!-- Include the side-bar -->
		<c:import url="/inc/inc_Dashboard/slidebar.jsp" />
		
		<div class="app-main__outer ml-4 mt-4">
			<div class="app-main__inner">
                        <div class="app-page-title">
                            <div class="page-title-wrapper">
                                <div class="page-title-heading">
                                    <div class="page-title-icon">
                                        <i class="fas fa-edit"></i>
                                    </div>
                                    <div>Liste de Reservations</div>
                                </div>
                                <div class="page-title-actions">
                                    <a href="?action=ajouter"  class="btn-shadow  btn btn-info"> Ajouter Publication</a> 
                                </div>   
                                
							</div>
                        
                        </div>            
     
				<div class="table100 ver1 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="column2 text-center">ID Resevation</th>
									<th class="column2 text-center">Cin Client</th>
									<th class="column2 text-center">Date</th>
									<th class="column2 text-center">Heure</th>
									<th class="column2 text-center"></th>
									<th class="column2 text-center"></th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<c:forEach items="${reservations }" var="reservation">
								<tr class="row100 body">
									
									<td class="cell100 column2 text-center"><c:out value="${reservation.idReservation }" /></td>
									
									<td class="column2 text-center"><c:out value="${reservation.cinClient }" /></td>
									
									<td class="column2 text-center"><c:out value="${reservation.dateReservation }" /></td>
									
									<td class="column2 text-center"><c:out value="${reservation.heureReservation }" /></td>
									
									<td class="cell100 column2 text-center">
										<a href="?action=modifier&id=<c:out value="" />">
											<button class="mb-2 mr-2 border-0 btn-transition btn btn-outline-success">
                                            	  Valider
                                        	</button>
                                       </a>
									</td>
									
									<td class="cell100 column2 text-center">
										<button class="mb-2 mr-2 border-0 btn-transition btn btn-outline-danger" data-toggle="modal" data-target="#confirm-delete" data-href="?action=supprimer&id=<c:out value="${publication.id }"/>">
                                          	 Ignorer
                                        </button>
									</td>
								
								</tr>
							</c:forEach>
								
							</table>
						</div>
					</div> 
				</div>
		</div>
		
		
	</div>
	
</div>
	
	<!-- Include our Footer with js scripts-->
	<c:import url="/inc/inc_Dashboard/footer.jsp" />