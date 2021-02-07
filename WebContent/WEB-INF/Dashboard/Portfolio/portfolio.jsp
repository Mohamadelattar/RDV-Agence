<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<title>Notre Portfolio</title>

<link href="inc/inc_Dashboard/css/main.css" rel="stylesheet">
<link href="inc/inc_Dashboard/css/employe.css?version=1" rel="stylesheet">
<link href="inc/inc_Dashboard/css/publication.css" rel="stylesheet">
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
				        <h2 class="title">PORTFOLIO</h2>
				    </div>
				    <div class="card-body">
				        <form action="dash-portfolio?action=enregistrer" method="post">
				        	 
				        	
				        	<!-- Afficher le resultat -->
				        	<c:if  test = "${formulaire != null }">
					        	<div>
				            		<div class="form-row error mb-2">
		                                <div class="name"></div>
		                                <div class="value">
		                                    <div class="alert ${empty formulaire.erreurs ? 'alert-success' : 'alert-danger'} text-center" role="alert">
		                                        <c:out value="${formulaire.resultat }"/>
		                                    </div>
		                                     
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
				                                <input class="input--style-5" type="text" name="nom" value="${portfolio.getNom()} ">
				                                <label class="label--desc">Nom</label>
				                            </div>
				                        </div>
				                        <div class="col-6">
				                            <div class="input-group-desc">
				                                <input class="input--style-5" type="text" name="prenom" value="${portfolio.getPrenom() }">
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
				                <div class="name">Presentation</div>
				                <div class="value">
				                    <div class="input-group">
				                    	<textarea class="input--style-5" name="presentation"><c:out value="${portfolio.getPresentation() }"/></textarea>
				                        
				                    </div>
				                </div>
				            </div>
				            
				            <c:if test="${!empty formulaire.erreurs['presentation']  }">
					            <!-- Afficher l'erreur dans ce bloc -->
					            
				            	 <div class="form-row error mb-2">
	                                <div class="name"></div>
	                                <div class="value">
	                                    <div class="alert alert-danger mb-2 py-2" role="alert">
	                                        <c:out value="${formulaire.erreurs['presentation'] }"/>
	                                    </div>
	                                </div>
	                            </div>
                            </c:if>
                            
				            <div class="form-row mb-4">
				                <div class="name">Formation</div>
				                <div class="value">
				                    <div class="input-group">
				                    	<textarea class="input--style-5" name="formation"><c:out value="${portfolio.getFormation() } "/></textarea>
				                    </div>
				                </div>
				            </div>
				            
				            <c:if test="${!empty formulaire.erreurs['formation']  }">
					            <!-- Afficher l'erreur dans ce bloc -->
					            
				            	 <div class="form-row error mb-2">
	                                <div class="name"></div>
	                                <div class="value">
	                                    <div class="alert alert-danger mb-2 py-2" role="alert">
	                                        <c:out value="${formulaire.erreurs['formation'] }"/>
	                                    </div>
	                                </div>
	                            </div>
                            </c:if>
 
				            <div class="form-row">
				                <div class="name">Experience</div>
				                <div class="value">
				                    <div class="input-group">
				                    	<textarea class="input--style-5" name="experience"><c:out value="${portfolio.getExperience()}"/></textarea>
				                      
				                    </div>
				                </div>
				            </div>
				            
				            <c:if test="${!empty formulaire.erreurs['experience']  }">
					            <!-- Afficher l'erreur dans ce bloc -->
					            
				            	 <div class="form-row error mb-2">
	                                <div class="name"></div>
	                                <div class="value">
	                                    <div class="alert alert-danger mb-2 py-2" role="alert">
	                                        <c:out value="${formulaire.erreurs['experience'] }"/>
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