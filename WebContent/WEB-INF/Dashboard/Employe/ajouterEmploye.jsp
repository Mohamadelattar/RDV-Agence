<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<title>Ajouter Employe</title>

<link href="inc/inc_Dashboard/css/main.css" rel="stylesheet">
<link href="inc/inc_Dashboard/css/employe.css?version=1" rel="stylesheet">
</head>
<body>
<div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">

	<!-- Include the header -->
	<c:import url="/inc/inc_Dashboard/header.jsp" />
	
	<div class="app-main">
	
	<!-- Include the side-bar -->
		<c:import url="/inc/inc_Dashboard/slidebar.jsp" />
		
		<div class="app-main__outer ml-4 mt-4">
		
			<!-- Add Employe -->

            <div class="signupForm-ontainer mx-auto px-3 px-sm-0">
			 	<div class="card card-5">
				    <div class="card-heading">
				        <h2 class="title">Add Employee</h2>
				    </div>
				    <div class="card-body">
				        <form action="dash-employe" method="post" enctype="multiPart/form-data">
				        	<!-- Un champ hidden pour savoir le type de l'action -->
				        	<input type="hidden" name="action" value="ajouter">
				        	
				        	<!-- Afficher le resultat -->
				        	<c:if test = "${formulaire != null }">
					        	<div>
				            		<div class="form-row error mb-2">
		                                <div class="name"></div>
		                                <div class="value">
		                                    <div class="alert ${empty formulaire.erreurs ? 'alert-success' : 'alert-danger'} text-center" role="alert">
		                                        <c:out value="${formulaire.resultat }"/>
		                                    </div>
		                                    <input class="input--style-5" type="hidden" name="password" value="<c:out value="${employe.password }"/>">
		                                </div>
		                            </div>
					            </div>
				            </c:if >
				            
				            <div class="form-row mb-5">
				                <div class="name">Nom Complet</div>
				                <div class="value">
				                    <div class="row row-space">
				                        <div class="col-6">
				                            <div class="input-group-desc">
				                                <input class="input--style-5" type="text" name="nom" value="<c:out value="${employe.getNom() }"/>">
				                                <label class="label--desc">Nom</label>
				                            </div>
				                        </div>
				                        <div class="col-6">
				                            <div class="input-group-desc">
				                                <input class="input--style-5" type="text" name="prenom" value="<c:out value="${employe.getPrenom() }"/>">
				                                <label class="label--desc">Prénom</label>
				                            </div>
				                        </div>
				                    </div>
				                </div>
				            </div>
				            
				            <c:if test="${!empty formulaire.erreurs['nom']  }">
				            <!-- Afficher l'erreur dans ce bloc -->
				            
				            	 <div class="form-row error mb-2">
	                                <div class="name"></div>
	                                <div class="value">
	                                    <div class="alert alert-danger mb-2 py-2" role="alert">
	                                        <c:out value="${formulaire.erreurs['nom'] }"/>
	                                    </div>
	                                </div>
	                            </div>
                            </c:if>
                            
                            <c:if test="${!empty formulaire.erreurs['prenom']  }">
                            <!-- Afficher l'erreur dans ce bloc -->
	                            <div class="form-row error mb-2">
	                                <div class="name"></div>
	                                <div class="value">
	                                     <div class="alert alert-danger mb-2 py-2" role="alert">
	                                        <c:out value="${formulaire.erreurs['prenom'] }"/>
	                                    </div>
	                                </div>
	                            </div>
                           </c:if>
                           
				            <div class="form-row mb-4">
				                <div class="name">Cin</div>
				                <div class="value">
				                    <div class="input-group">
				                        <input class="input--style-5" type="text" name="cin" value="<c:out value="${employe.getCin() }"/>">
				                    </div>
				                </div>
				            </div>
				            
				            <c:if test="${!empty formulaire.erreurs['cin']  }">
					            <!-- Afficher l'erreur dans ce bloc -->
					            
				            	 <div class="form-row error mb-2">
	                                <div class="name"></div>
	                                <div class="value">
	                                    <div class="alert alert-danger mb-2 py-2" role="alert">
	                                        <c:out value="${formulaire.erreurs['cin'] }"/>
	                                    </div>
	                                </div>
	                            </div>
                            </c:if>
                            
				            <div class="form-row mb-4">
				                <div class="name">Ville</div>
				                <div class="value">
				                    <div class="input-group">
				                        <input class="input--style-5" type="text" name="ville" value="<c:out value="${employe.getVille() }"/>">
				                    </div>
				                </div>
				            </div>
				            
				            <c:if test="${!empty formulaire.erreurs['ville']  }">
					            <!-- Afficher l'erreur dans ce bloc -->
					            
				            	 <div class="form-row error mb-2">
	                                <div class="name"></div>
	                                <div class="value">
	                                    <div class="alert alert-danger mb-2 py-2" role="alert">
	                                        <c:out value="${formulaire.erreurs['ville'] }"/>
	                                    </div>
	                                </div>
	                            </div>
                            </c:if>
                            
				            <div class="form-row mb-4">
				                <div class="name">Email</div>
				                <div class="value">
				                    <div class="input-group">
				                        <input class="input--style-5" type="email" name="email" value="<c:out value="${employe.getEmail() }"/>">
				                    </div>
				                </div>
				            </div>
				            
				            <c:if test="${!empty formulaire.erreurs['email']  }">
					            <!-- Afficher l'erreur dans ce bloc -->
					            
				            	 <div class="form-row error mb-2">
	                                <div class="name"></div>
	                                <div class="value">
	                                    <div class="alert alert-danger mb-2 py-2" role="alert">
	                                        <c:out value="${formulaire.erreurs['email'] }"/>
	                                    </div>
	                                </div>
	                            </div>
                            </c:if>
                            
				            <div class="form-row mb-4">
				                <div class="name">Mot de passe</div>
				                <div class="value">
				                    <div class="input-group">
				                        <input class="input--style-5" type="password" name="password">
				                    </div>
				                </div>
				            </div>
				            
				            <c:if test="${!empty formulaire.erreurs['password']  }">
					            <!-- Afficher l'erreur dans ce bloc -->
					            
				            	 <div class="form-row error mb-2">
	                                <div class="name"></div>
	                                <div class="value">
	                                    <div class="alert alert-danger mb-2 py-2" role="alert">
	                                        <c:out value="${formulaire.erreurs['password'] }"/>
	                                    </div>
	                                </div>
	                            </div>
	                            
	                            <input class="input--style-5" type="hidden" name="password" value="<c:out value="${employe.password }"/>">
                            </c:if>
                            
				             <div class="form-row mb-4">
				                <div class="name">No Télephone</div>
				                <div class="value">
				                    <div class="input-group">
				                        <input class="input--style-5" type="text" name="numTelephone" value="<c:out value="${employe.getNumTele() }"/>">
				                    </div>
				                </div>
				            </div>
				            
				            <c:if test="${!empty formulaire.erreurs['numTelephone']  }">
					            <!-- Afficher l'erreur dans ce bloc -->
					            
				            	 <div class="form-row error mb-2">
	                                <div class="name"></div>
	                                <div class="value">
	                                    <div class="alert alert-danger mb-2 py-2" role="alert">
	                                        <c:out value="${formulaire.erreurs['numTelephone'] }"/>
	                                    </div>
	                                </div>
	                            </div>
	                            <input class="input--style-5" type="hidden" name="password" value="<c:out value="${employe.password }"/>">
                            </c:if>
				            
				            <!-- start date hidden field -->
				            <input class="input--style-5" type="hidden" name="dateDebut" value="<c:out value="${todayDate }" />">
                            
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