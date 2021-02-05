<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<title>Gestion de Clients</title>
<link href="inc/inc_Dashboard/css/main.css" rel="stylesheet">
<link href="inc/inc_Dashboard/css/client.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css">
</head>
<body>
<div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">

	<!-- Include the header -->
	<c:import url="/inc/inc_Dashboard/header.jsp" />
	
	<div class="app-main">
	
	<!-- Include the side-bar -->
		<c:import url="/inc/inc_Dashboard/slidebar.jsp" />
		
		<div class="app-main__outer ml-4 mt-4">
		 <div class="app-page-title">
                            <div class="page-title-wrapper">
                                <div class="page-title-heading container2">
                                    
                                    <div>
                                      <i class="fas fa-users-cog fa-2x iconDetails"></i> </div>
                                      <div class="titleDisc">
                                      <h4 class="font">Gestion des Clients</h4>                         
                                    </div>
                                </div>
                              </div>
                         </div>  
		
            <!-- Our Navbar -->

            <nav class="navbar navbar-expand-lg navbar-light bg-color mb-3">
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                  <li class="my-2 my-md-0">
                    <span class="mr-1 font-span"><i class="fas fa-user fa-lg"></i></span>
                    <span class="alert-span-color">${listClient.size() } Clients</span> 
                  </li>
                </ul>
                <form class="form-inline my-2 my-lg-0 search-form d-flex justify-content-end">
                  <div class="">
                      <div class="search">
                      <span class="fa fa-search form-control-feedback"></span> 
                      <input class="form-control mr-sm-2 search-form-input" id="searchinput" onkeyup="myFunction()" type="search" placeholder="Chercher un client" aria-label="Search">
                      </div>
                  </div>
                </form>
              </div>
            </nav>

            <!-- Client Dashboard -->

            <div class="Employees px-4 px-md-0 mr-3" id="cardDiv">
                <div class="row mt-3">
                  <c:forEach items="${listClient }" var="client">
                    <div class="col-lg-4 col-md-6 col-sm-6 mb-5">
                        <div class="card-bodys Employe-info">
                            <!--<img src="Image-Mine.jpg" class="d-block img-fluid">-->
                            <!-- Visible on Large Screen-->
                            <div class="employe-image d-none d-md-block">
                                <img src="inc/inc_Dashboard/assets/images/<c:out value="${client.photoProfile }"/>" class="d-block img-fluid">
                            </div>
                            <!-- Visible on Tablet & Phone Screen-->
                            <div class="employe-image-small d-block d-md-none">
                                <img src="inc/inc_Dashboard/assets/images/<c:out value="${client.photoProfile }"/>" class="d-block img-fluid">
                            </div>
                            <div class="Employe-info-header">

                            </div>
                            <div class="Employe-info-body">
                                <h3 class="employe-name text-center mb-1"><c:out value="${client.nom }"/> <c:out value="${client.prenom }"/></h3>
                                <div class="Employe-info-list d-flex justify-content-between pr-4 mt-3">
                                    <ul class="list">
                                        <li>
                                            <span class="list-span"><i class="fas fa-phone mr-2"></i><c:out value="${client.numTele }"/></span>
                                        </li>
                                        <li>
                                            <span class="list-span"><i class="fas fa-map-marker-alt mr-2"></i><c:out value="${client.adresse }"/></span>
                                        </li>
                                        <li>
                                            <span class="list-span"><i class="fas fa-calendar-alt mr-2"></i><c:out value="${client.date_debut }"/></span>
                                        </li>
                                    </ul>
                                    <ul class="list">
                                        <li>
                                            <span class="list-span"><i class="fas fa-user mr-2"></i><c:out value="${client.nom }"/> <c:out value="${client.prenom }"/></span>
                                        </li>
                                        <li>
                                            <span class="list-span"><i class="fas fa-envelope mr-2"></i><c:out value="${client.email }"/></span>
                                        </li>
                                        <li>
                                            <span class="list-span"><i class="fas fa-history mr-2"></i>5 years 3 months</span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="Employe-info-contact">
                                    <ul class="list-inline">
                                        <li class="list-inline-item mr-1">
                                            <a href="#">
                                                <i class="fas fa-envelope"></i>
                                            </a>
                                        </li>
                                         <li class="list-inline-item mr-1">
                                            <a href="#">
                                                <i class="fab fa-linkedin"></i>
                                            </a>
                                        </li>
                                         <li class="list-inline-item mr-1">
                                            <a href="#">
                                                <i class="fab fa-twitter"></i>
                                            </a>
                                        </li>
                                         <li class="list-inline-item mr-1">
                                            <a href="#">
                                                <i class="fab fa-skype"></i>
                                            </a>
                                        </li>
	                                    <li class="list-inline-item float-right mr-3">
	                                            <a href="#" data-toggle="modal" data-target="#confirm-delete" class="modal-trigger" data-href="?do=delete&id=<c:out value="${client.id }"/>">
	                                                <i id="delete-btn" class="fas fa-trash-alt"></i>
	                                            </a>
	                                    </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                   </div>
                   </div>
                   </div>
                   </div>
	<!-- Delete Confirmation Pop Up -->

    <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="confirm-delete" aria-hidden="true">
        <div class="modal-dialog  modal-confirm" role="document">
            <div class="modal-content">
                <div class="modal-header">
				<div class="icon-box">
					<i class="material-icons">&#xE5CD;</i>
				</div>				
		     	</div>
                <div class="modal-body text-center mt-4">
                    <b>Are you sure ?</b>
                    <span class="d-block mt-2">
                        Do you really want to delete this client ? this press cannot be undone
                    </span>
                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-secondary btn-cancel" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary btn-delete btn-ok">
                        <i class="fas fa-trash-alt mr-3"></i>Delete
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>  
<!-- Include our Footer with js scripts-->
<script type="text/javascript" src="inc/inc_Dashboard/assets/scripts/main.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="inc/inc_Dashboard/js/popper.js"></script>
<script src="inc/inc_Dashboard/js/bootstrap.min.js"></script>
<script src="inc/inc_Dashboard/js/select2.min.js"></script>
<script src="inc/inc_Dashboard/js/perfect-scrollbar.min.js"></script>

<!-- Include our Footer with js scripts-->
<c:import url="/inc/inc_Dashboard/footer.jsp" />

