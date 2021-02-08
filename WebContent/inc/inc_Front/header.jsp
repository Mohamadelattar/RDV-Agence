<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>
		<!-- NavBar -->
		<div class="container-fluid p-0 fixed-top">
			<nav class="navbar navbar-expand-lg navbar-light bg-nav py-3 bg-nav-lg">
				<a class="navbar-brand brand-color" href="index">SimplyBook<span>.me</span></a>
			  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			   		<span class="navbar-toggler-icon"></span>
			  	</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
				    <ul class="navbar-nav ml-auto">
					    <c:if test="${sessionScope.client == null }" >
					    	<li class="nav-item mr-4">
					        	<a href="#" class="connexion-link" data-toggle="modal" data-target="#connexionModal">Connexion</a>
					      	</li>
					      	<li class="nav-item">
						        <a href="#" class="inscrire-link">S'inscrire</a>
						    </li>
						 </c:if>
						 
						 <c:if test="${sessionScope.client != null }" >
						    <li class="nav-item mr-4 d-flex align-items-center link-profil">
						         <a href="#" class="text-center">
						         	<i class="fas fa-user"></i>
						         	<span class="d-block">Profil</span>
						         </a>
						    </li>
						    <li class="nav-item d-flex align-items-center link-profil">
						        <a href="#" class="text-center">
						        	<i class="fas fa-sign-out-alt"></i>
						        	<span class="d-block">Se déconnecter</span>
						        </a>
						    </li>
						  </c:if>
				    </ul>
				</div>
			</nav>
		</div>

		<!-- Nav Menu -->
		<div class="container-fluid p-0">
			<nav class="py-3 nav-menu">
				<ul class="list-inline">
					<li class="list-inline-item mr-3">
						<a class="nav-menu-link" href="">Entreprise</a>
					</li>
					<li class="list-inline-item mr-3">
						<a class="nav-menu-link" href="">Fonctionnalités</a>
					</li>
					<li class="list-inline-item mr-3">
						<a class="nav-menu-link" href="">Tarification</a>
					</li>
				</ul>
			</nav>
		</div>

	</header>
