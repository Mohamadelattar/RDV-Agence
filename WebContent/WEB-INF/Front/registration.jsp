<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Registration</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="inc/inc_Front/css/style.css">
	<link rel="stylesheet" type="text/css" href="inc/inc_Front/css/header.css">
</head>
<body>
    <!-- Include the header -->
	<c:import url="/inc/inc_Front/header.jsp" />
	
	<section class="profil pb-5" id="profilSection">
		<!-- Profil Client -->
		<div class="container-md px-4 px-md-5 mx-md-5 py-5">
			<div class="row">
				<div class="col-12 col-lg-8 mx-auto">
					<div class="info-update ml-lg-3 h-100">
						<div class="info-update-header">
							<h2 class="pl-5 pt-5">Inscription Client</h2>
							<ul class="list-inline list-menu pl-4">
								<li class="list-inline-item non-active-option active-option" id="option-1">
									Veuillez saisir vos Infos
								</li>
							</ul>
						</div>
						<div class="menu-option info-update-body px-4 pt-4 d-block">
							<form class="mb-4" method="post" action="signup" enctype="multiPart/form-data" id="form">
								<div class="form-row">
								    <div class="form-group col-md-6">
									    <label for="inputNom">Nom</label>
									    <input type="text" class="form-control ControlInput ControlInput--nom" name="nom" id="inputNom" placeholder="votre nom">
									    <c:if test="${!empty formulaire.erreurs['nom']}">
                                        <p class="alert alert-danger mb-2 nom form-control"><c:out value="${formulaire.erreurs['nom']}"/><p>
                                        </c:if>
								    </div>
								    <div class="form-group col-md-6">
								        <label for="inputPrenom">Pr�nom</label>
								        <input type="text" class="form-control" name="prenom" id="inputPrenom" placeholder="votre prenom">
								        <c:if test="${!empty formulaire.erreurs['prenom']}">
								         <p class="alert alert-danger mb-2 nom form-control"><c:out value="${formulaire.erreurs['prenom']}"/><p>
								        </c:if>
								    </div>
								   
	                                     
							  	</div>
							  	<div class="form-group">
								    <label for="inputEmail">Email</label>
								    <input type="text" class="form-control" name="email" id="inputEmail" placeholder="Votre Email" required>
								     <c:if test="${!empty formulaire.erreurs['email']}">
								         <p class="alert alert-danger mb-2 nom form-control"><c:out value="${formulaire.erreurs['email']}"/><p>
								        </c:if>
								</div>
								<div class="form-group">
								    <label for="inputPassword">Password</label>
								    <input type="password" class="form-control" name="password" id="inputPassword" placeholder="Votre Mot de Pass" required>
								     <c:if test="${!empty formulaire.erreurs['password']}">
								         <p class="alert alert-danger mb-2 nom form-control"><c:out value="${formulaire.erreurs['password']}"/><p>
								        </c:if>
								</div>
							  	<div class="form-group">
								    <label for="inputCin">Cin</label>
								    <input type="text" class="form-control" name="cin" id="inputCin" placeholder="Votre Cin">
								     <c:if test="${!empty formulaire.erreurs['cin']}">
								         <p class="alert alert-danger mb-2 nom form-control"><c:out value="${formulaire.erreurs['cin']}"/><p>
								        </c:if>
								</div>
								<div class="form-group">
								    <label for="inputAddress">Adresse</label>
								    <input type="text" class="form-control" name="ville" id="inputAddress" placeholder="Votre Adresse">
								     <c:if test="${!empty formulaire.erreurs['ville']}">
								         <p class="alert alert-danger mb-2 nom form-control"><c:out value="${formulaire.erreurs['ville']}"/><p>
								        </c:if>
								</div>
								<div class="form-group">
								    <label for="inputNumTelephone">Numero de Telephone</label>
								    <input type="text" class="form-control" name="numTelephone" id="inputNumTelephone" placeholder="Votre Numero de Telephone">
								     <c:if test="${!empty formulaire.erreurs['numTelephone']}">
								         <p class="alert alert-danger mb-2 nom form-control"><c:out value="${formulaire.erreurs['numTelephone']}"/><p>
								     </c:if>
								</div>
								<label for="inputPhotoProfil">Photo de Profile</label>
								<div class="custom-file mb-4">
								    <input type="file" class="custom-file-input" name="photoProfil" id="customFile">
								    <label class="custom-file-label" for="customFile">Choisr une Photo</label>
								</div>
								<c:if test="${erreur!=null}">
			    	               <span class="alert alert-danger mrgn mrgnreg"><c:out value="${erreur}"/></span>
			    	            </c:if>
							  	<button type="submit" class="btn btn-primary">S'inscrire</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			</div>
			
	</section>



 
	<!-- Include the footer -->
	<c:import url="/inc/inc_Front/footer.jsp" />
</body>
</body>
</html>