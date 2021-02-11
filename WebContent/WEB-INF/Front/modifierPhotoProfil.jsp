<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Reservation</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="inc/inc_Front/css/style.css">
	<link rel="stylesheet" type="text/css" href="inc/inc_Front/css/header.css">
</head>
<body>

    <!-- Include the header -->
	<c:import url="/inc/inc_Front/header.jsp" />
	
	<section class="profil py-5">
		<!-- Profil Client -->
		<div class="container-md px-4 px-md-5 mx-md-5 ">
			<div class="row">
				<div class="col-12 col-lg-4 mb-4">
					<div class="profil-body px-4 pt-4">
						<ul class="list-inline mb-5">
							<li class="list-inline-item float-left">
								<img src="inc/inc_Front/images/medal.svg" class="img-fluid d-block badge-image">
							</li>
							<li class="list-inline-item float-right">
								<span class="online">En ligne</span>
							</li>
						</ul>
						<div class="profil-image mx-auto">
							<img src="inc/inc_Front/images/<c:out value="${client.getPhotoProfile()}"/>" class="d-block img-fluid profil-image-source">
							<a href="#"><i class="fas fa-camera profil-image-update"></i></a>
						</div>
						<div class="profil-info mt-4">
							<h4 class="text-center"><c:out value="${client.prenom}"/> <c:out value="${client.nom}"/></h4>
							<hr>
							<ul class="list-info pl-0">
								<li class="list-info-item">
									<ul class="list-inline">
										<li class="list-inline-item">
											<i class="fas fa-map-marker-alt mr-2"></i>
											From 
										</li>
										<li class="list-inline-item float-right">
											<b><c:out value="${client.adresse}"/></b>
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
											<b><c:out value="${client.nom}"/></b> 
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
											<b><c:out value="${client.email}"/></b> 
										</li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-12 col-lg-8">
					<div class="info-update ml-lg-3 h-100">
						<div class="info-update-header">
							<h2 class="pl-5 pt-5">Editer Photo Profil</h2>
							<ul class="list-inline list-menu pl-4">
								<li class="list-inline-item non-active-option active-option" id="option-1">
									Info utilisateur
								</li>
							</ul>
						</div>
						<div class="menu-option info-update-body px-4 pt-4 d-block">
							<form class="mb-4" action="post-client" method="post" enctype="multiPart/form-data">
							    <!-- Un champ hidden pour savoir le type de l'action -->
			        	        <input type="hidden" name="action" value="modifierPhotoProfil">
			        	
			        	
			        	        <!-- Un champ hidden pour savoir l'id de l'employe -->
			        	        <input type="hidden" name="id" value="<c:out value="${client.id}"/>">
			        	
								<span class="d-block mb-3 float-left" style="color: #201919; font-weight: bold;">Photo Profil</span>
							  	<div class="custom-file mb-4">
								    <input type="file" class="custom-file-input" name="photoProfil" id="customFile">
								    <label class="custom-file-label" for="customFile">Choisr une Photo</label>
								</div>
							  	<button type="submit" class="btn btn-primary">Modifier Photo</button>
							</form>
						</div>
					</div>
				</div>
			</div>
	</section>



	<!-- Include the footer -->
	<c:import url="/inc/inc_Front/footer.jsp" />
	
</body>
</html>