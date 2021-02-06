<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header class="d-none d-md-block">
		<div class="container">
			<div class="first-header">
				<ul class="list-inline">
					<li class="list-inline-item header-logo">
						<a href="#">
							<img src="inc/assets/images/logo.png" class="img-fluid">
						</a>
					</li>
					<ul class="list-inline float-right header-menu d-flex align-items-center">
					<c:if test="${sessionScope.client == null}">
						<li class="list-inline-item">
							<a href=""  data-toggle="modal" data-target="#connexionModal" class="register">
								<i class="fas fa-arrow-right"></i>
								register
							</a>
						</li>
                   </c:if>
                   <c:if test="${sessionScope.client != null}">
						<!-- Si le client est connecte -->
						<li class="list-inline-item">
							<div class="visit-profil-client">
								<a href="post-client" class="">
									<img src="inc/assets/images/<c:out value="${client.getPhotoProfile()}"/>" class="d-block img-fluid">
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
					        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
					    </li>
					    <li class="nav-item">
					        <a class="nav-link" href="#">About us <span class="sr-only">(current)</span></a>
					    </li>
					    <li class="nav-item">
					        <a class="nav-link" href="#">Blog <span class="sr-only">(current)</span></a>
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
    
	<script type="text/javascript" src="inc/inc_Front/scripts/header.js"></script>