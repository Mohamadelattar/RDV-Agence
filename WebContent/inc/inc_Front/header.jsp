<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Visible on high sizes -->
	<header class="d-none d-md-block">
		<div class="container">
			<div class="first-header">
				<ul class="list-inline">
					<li class="list-inline-item header-logo">
						<a href="index">
							<img src="inc/inc_Front/images/logo.png" class="img-fluid">
						</a>
					</li>
					<ul class="list-inline float-right header-menu d-flex align-items-center">
						<c:if test="${sessionScope.client == null}">
                            
                        <li class="list-inline-item">
							<a href="signup" class="register">
								<i class="fas fa-arrow-right"></i>
								register
							</a>
						</li>
						<li class="">
                                <a href="" data-toggle="modal" data-target="#connexionModal"  class="register-low">
                                    <i class="fas fa-arrow-right"></i>
                                    se connecter
                                </a>
                            </li>
                        </c:if>
						<!-- Si le client est connecte -->
                        <c:if test="${sessionScope.client != null}">
						<li class="list-inline-item">
							<div class="visit-profil-client">
								<a href="post-client" class="">
									<img src="inc/inc_Front/images/<c:out value="${client.getPhotoProfile()}"/>" class="d-block img-fluid">
								</a>
							</div>
						</li>

						<li class="list-inline-item">
							<div class="logout-client">
								<a href="index?operation=logout" class="">
									<i class="fas fa-sign-out-alt"></i>
								</a>
							</div>
						</li>
                    </c:if>
					</ul>
				</ul>
			</div>
		</div>

		<!-- NavBar -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light p-0">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			    <span class="navbar-toggler-icon"></span>
			</button>

		  	<div class="container">
		  		<div class="collapse navbar-collapse" id="navbarSupportedContent">
				    <ul class="navbar-nav mr-auto">
				      	<li class="nav-item">
					        <a class="nav-link" href="index">Home <span class="sr-only">(current)</span></a>
					    </li>
					    <li class="nav-item">
					        <a class="nav-link" href="publications">Publications <span class="sr-only">(current)</span></a>
					    </li>
					    <li class="nav-item">
					        <a class="nav-link" href="portfolio">Portfolio <span class="sr-only">(current)</span></a>
					    </li>
					    <li class="nav-item">
					        <a class="nav-link" href="#">Contact us <span class="sr-only">(current)</span></a>
					    </li>	   
				    </ul>
				    <ul class="navbar-nav ml-auto">
				    	<li class="nav-item px-3">
					       <ul class="list-inline">
					       	<li class="list-inline-item social-media-item-2">
					       		<a href="">
					       			<i class="fab fa-facebook-f mr-2"></i>
					       		</a>
					       	</li>
					       	<li class="list-inline-item social-media-item-2">
					       		<a href="">
					       			<i class="fab fa-instagram mr-2"></i>
					       		</a>
					       	</li>
					       	<li class="list-inline-item social-media-item-2">
					       		<a href="">
					       			<i class="fab fa-twitter mr-2"></i>
					       		</a>
					       	</li>
					       </ul> 
					    </li>
				    </ul>
			  	</div>
		  	</div>
		</nav>
		

	</header>

	<!-- Visible on low sizes -->
	<header class="d-block d-md-none">
		<div class="container-md mx-0 px-0">
			<div class="first-header">
				<div class="logo-header w-100">
					<div class="row">
						<div class="col-3 p-0"></div>
						<div class="col-6 p-0">
							<a href="index">
								<img src="inc/assets/images/logo.png" class="img-fluid">
							</a>
						</div>
						<div class="col-3 p-0"></div>
					</div>
				</div>
				<div class="first-header-menu">

					<!-- Si le client n'est pas connecter -->
                    <c:if test="${sessionScope.client == null}">
					<div class="d-flex justify-content-around mt-3">
						<div class="">
							<a href="#" data-toggle="modal" data-target="#connexionModal"   class="register-low">
								<i class="fas fa-arrow-right"></i>
								se connecter
							</a>
						</div>
						<div class="">
							<a href="signup" class="register-low">
								<i class="fas fa-arrow-right"></i>
								S'inscrire
							</a>
						</div>
					</div>
                    </c:if>
					<!-- Si le client est connecter -->
					<c:if test="${sessionScope.client != null}">
					<div class="d-flex justify-content-center mt-3">
						<div class="visit-profil-client mr-2">
							<a href="post-client" class="">
								<img src="inc/assets/images/<c:out value="${client.getPhotoProfile()}"/>" class="d-block img-fluid">
							</a>
						</div>
						<div class="logout-client ml-2">
							<a href="index?operation=logout" class="">
								<i class="fas fa-sign-out-alt"></i>
							</a>
						</div>
					</div>
                 </c:if>
				</div>
			</div>
		</div>

		<!-- NavBar -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light px-0 py-3">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			    <span class="navbar-toggler-icon"></span>
			</button>

		  	<div class="container">
		  		<div class="collapse navbar-collapse navbar-low-size" id="navbarSupportedContent">
				    <ul class="navbar-nav mr-auto">
				      	<li class="nav-item ml-3">
					        <a class="nav-link" href="index">Home <span class="sr-only">(current)</span></a>
					    </li>
					    <li class="nav-item ml-3">
					        <a class="nav-link" href="#">About us <span class="sr-only">(current)</span></a>
					    </li>
					    <li class="nav-item ml-3">
					        <a class="nav-link" href="#">Blog <span class="sr-only">(current)</span></a>
					    </li>
					    <li class="nav-item ml-3">
					        <a class="nav-link" href="#">Contact us <span class="sr-only">(current)</span></a>
					    </li>	   
				    </ul>
				    <ul class="navbar-nav ml-3">
				    	<li class="nav-item px-3">
					       <ul class="list-inline">
					       	<li class="list-inline-item social-media-item-2">
					       		<a href="">
					       			<i class="fab fa-facebook-f mr-2"></i>
					       		</a>
					       	</li>
					       	<li class="list-inline-item social-media-item-2">
					       		<a href="">
					       			<i class="fab fa-instagram mr-2"></i>
					       		</a>
					       	</li>
					       	<li class="list-inline-item social-media-item-2">
					       		<a href="">
					       			<i class="fab fa-twitter mr-2"></i>
					       		</a>
					       	</li>
					       </ul> 
					    </li>
				    </ul>
			  	</div>
		  	</div>
		</nav>
		

	</header>
		<div class="modal fade" id="connexionModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
	    	<div class="modal-content">
	      		<div class="modal-header pb-0">
	        		<button type="button" class="close btn-close" data-dismiss="modal" aria-label="Close">
	          		<span aria-hidden="true">&times;</span>
	        		</button>
	      		</div>
			    <div class="modal-body mx-4 pt-0 mb-5">
			    	<h5 class="modal-title text-center mb-3">Connexion</h5>
			    	<form method="post" action="index" class="formConnexion" id="formwrap">
					  <div class="form-group mb-4">
					    <label for="exampleInputEmail1">
					    	<i class="fas fa-envelope mr-2"></i> Votre Email : 
					    </label>
				
					    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" value="${client.email}" name="email">
					    <span class="d-block float-right">
					    	<a href="#" class="formConnexion-link mt-1">Mot de Passe oublié ?</a>
					    </span>
					  </div>

					  <div class="form-group">
					    <label for="exampleInputPassword1">
					    	<i class="fas fa-lock mr-2"></i> Votre Mot de Passe :
					    </label>
					    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password" value="${client.password}">
					  </div>
					  <c:if test="${erreur!=null}">
			    	      <span class="alert alert-danger mrgn"><c:out value="${erreur}"/></span>
			    	  </c:if>
					  <div class="d-flex align-items-center mt-4">
					  	 <button value="Client" type="submit" class="btn btn-primary btn-submit mx-auto">
						  	<i class="fas fa-sign-in-alt mr-2"></i> Se Connecter
						  </button>
					  </div>
					</form>
			    </div>
	    	</div>
	  	</div>
	</div>
    
	<script type="text/javascript" src="inc/inc_Front/scripts/header.js"></script>