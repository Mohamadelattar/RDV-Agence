<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<title>Modifier Photo de Profil</title>
<link href="inc/inc_Dashboard/css/main.css" rel="stylesheet">
<link href="inc/inc_Dashboard/css/employe.css?version=2" rel="stylesheet">
</head>
<body>

<div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">

	<!-- Include the header -->
	<c:import url="/inc/inc_Dashboard/header.jsp" />
	
	<div class="app-main">
	
	<!-- Include the side-bar -->
		<c:import url="/inc/inc_Dashboard/slidebar.jsp" />
		
		<div class="app-main__outer ml-4 mt-4">
		
		<!-- Update Employe Photo de Profil -->
		<div class="signupForm-ontainer mx-auto px-3 px-sm-0">
		 	<div class="card card-5">
			    <div class="card-heading">
			        <h2 class="title">Modifier Photo de Profil</h2>
			    </div>
			    <div class="card-body pt-3">
			    	<div class="float-right mb-4">
			    		<img src="inc/inc_Dashboard/assets/images/<c:out value="${employe.photoProfile }" />" class="d-block img-fluid img-employe">
			    	</div>
			        <form action="dash-employe" method="post" class="updateFormEmploye" enctype="multiPart/form-data">
			        
			       		<!-- Un champ hidden pour savoir le type de l'action -->
			        	<input type="hidden" name="action" value="modifierPhotoProfil">
			        	
			        	
			        	<!-- Un champ hidden pour savoir l'id de l'employe -->
			        	<input type="hidden" name="id" value="<c:out value="${employe.id }"/>">
			        	
			        	
			        	<div class="form-row mb-4">
			            	<div class="name">Photo de profil</div>
			            	<div class="value custom-file">
						      	<input type="file" class="custom-file-input input--style-5" id="customFile" name="photoProfil" value="<c:out value="${employe.getPhotoProfile() }"/>">
						      	<label class="custom-file-label" for="customFile">Choisir un fichier</label>
						    </div>
			            </div>
			            
			            <c:if test="${!empty formulaire.erreurs['photoProfil']  }">
				            <!-- Afficher l'erreur dans ce bloc -->
				            
			            	 <div class="form-row error mb-2">
                                <div class="name"></div>
                                <div class="value">
                                    <div class="alert alert-danger mb-2 py-2" role="alert">
                                        <c:out value="${formulaire.erreurs['photoProfil'] }"/>
                                    </div>
                                </div>
                            </div>
                           </c:if>
                           
                           <div>
				                <button class="btn btn--radius-2 btn--red" type="submit">Enregistrer</button>
				           </div>
                           
                        </form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	
<!-- Include our Footer with js scripts-->
<c:import url="/inc/inc_Dashboard/footer.jsp" />