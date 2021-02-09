<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listes des reservations Ignorées</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<link href="inc/inc_Dashboard/css/main.css" rel="stylesheet">
<link href="inc/inc_Dashboard/css/publication.css" rel="stylesheet">
<link href="inc/inc_Dashboard/css/util.css" rel="stylesheet">
<link href="inc/inc_Dashboard/css/reservation.css?version=2" rel="stylesheet">
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
                                    <div>Liste de Reservations Non confirmes</div>
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
								<tr class="row100 body res-confirm-non">
									
									<td class="column2 text-center res-confirm-non-td"><c:out value="${reservation.idReservation }" /></td>
									
									<td class="column2 text-center res-confirm-non-td"><c:out value="${reservation.cinClient }" /></td>
									
									<td class="column2 text-center res-confirm-non-td"><c:out value="${reservation.dateReservation }" /></td>
									
									<td class="column2 text-center res-confirm-non-td"><c:out value="${reservation.heureReservation }" /></td>
									
									<td class="column2 text-center res-confirm-non-td">
										<a class="mb-2 mr-2 border-0 btn-transition btn btn-outline-success btn-confirm" data-toggle="modal" data-target="#confirm-delete" data-href="dash-reservations?do=confirmer&id=<c:out value="${reservation.idReservation }"/>">
                                           	  Confirmer
                                       	</a>
									</td>
									
									<td class="column2 text-center res-confirm-non-td">
										<a class="mb-2 mr-2 border-0 btn-transition btn btn-outline-danger btn-delete2" data-toggle="modal" data-target="#confirm-delete" data-href="dash-reservations?do=supprimer&id=<c:out value="${reservation.idReservation }"/>">
                                          	 Supprimer
                                        </a>
									</td>
								
								</tr>
							</c:forEach>
								
							</table>
						</div>
					</div> 
				</div>
		</div>
		
		
	</div>
	
	<!-- Delete Confirmation Dialog -->

    <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="confirm-delete" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header mb-3">
                    <div class="logo-delete">
                        <i class="fas fa-times"></i>
                    </div>
                </div>
                <div class="modal-body text-center mt-4">
                    <b>Are you sure ?</b>
                    <span class="d-block mt-2">
                        Do you really want to delete this reservation ? this press cannot be undone
                    </span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary btn-cancel" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary btn-delete btn-ok">
                        <i class="fas fa-trash-alt mr-3"></i>Delete
                    </a>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Suspend Confirmation Dialog -->

    <div class="modal fade" id="confirm" tabindex="-1" role="dialog" aria-labelledby="confirm" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header mb-3">
                    <div class="logo-suspend">
                        <i class="fas fa-exclamation"></i>
                    </div>
                </div>
                <div class="modal-body text-center mt-4">
                    <b>Are you sure ?</b>
                    <span class="d-block mt-2">
                       Do you want to confirm this reservation ?
                    </span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary btn-cancel" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary btn-confirm btn-ok">
                        <i class="fas fa-trash-alt mr-3"></i>Confirm
                    </a>
                </div>
            </div>
        </div>
    </div>
	
</div>

<!-- Include our Footer with js scripts-->
<c:import url="/inc/inc_Dashboard/footer.jsp" />