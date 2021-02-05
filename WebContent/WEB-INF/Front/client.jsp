<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%
    String email=request.getParameter("email");
    String nom=request.getParameter("nom");
    if(email==null) email="";
        session.setAttribute("email",email);
        session.setAttribute("nom",nom);
%>
<!DOCTYPE html>
<html>
<head>
	<title>Espace Client</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="inc/inc_Front/css/style.css">
	<link rel="stylesheet" type="text/css" href="inc/inc_Front/css/client.css">
</head>
<body>

	<!-- Include the header -->
	<c:import url="/inc/inc_Front/header.jsp" />

	<section class="profil mt-5">
	<form method="post">
		<!-- Profil Client -->
		<div class="container">
			<div class="row">
				<div class="col-4">
					<div class="profil-body px-4 pt-4 h-100">
						<ul class="list-inline mb-5">
							<li class="list-inline-item float-left">
								<img src="inc/assets/images/medal.svg" class="img-fluid d-block badge-image">
							</li>
							<li class="list-inline-item float-right">
								<span class="online">En ligne</span>
							</li>
						</ul>
						<div class="profil-image mx-auto">
							<img src="inc/inc_Front/images/<c:out value="${client.photoProfile}"/>" class="d-block img-fluid profil-image-source">
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
							<span href="" class="d-block modifier-profil float-right mb-3" id="modifierProfil">
								modifier
							</span>
						</div>
					</div>
				</div>
				<div class="col-8">
					<div class="illustration-profil" id="illustrationProfil">
						<img src="inc/assets/images/profilIllustration.png" class="img-fluid d-block">
					</div>
					<div class="info-update ml-3 h-100 d-none" id="modifierContent">
					    <section class="champs">
		                        <input  type="text" placeholder="Votre Cin" value="<c:out value="${client.email}"/>">
                        		<input type="text" placeholder="name@email.com">
                        		<input type="password" placeholder="Mot de Passe" value="<c:out value="${client.password}"/>">
		                        <input type="text" placeholder="votre nom" value="<c:out value="${client.nom}"/>">
		                        <input type="text" placeholder="Prénom" value="<c:out value="${client.prenom}"/>">
		                        <input type="text" placeholder="votre numéro de telephone" value="<c:out value="${client.numTele}"/>">
                                <input type="text" placeholder="Votre Adresse" value="<c:out value="${client.adresse}"/>">
                                <button type="button" class="btn btn-primary padbtn">Confirmer</button>
                            </section>
                            </div>
					</div>
				</div>
			</div>
			</form>
	</section>



	<!-- Include the footer -->
	<c:import url="/inc/inc_Front/footer.jsp" />
	
</body>
</body>
</html>