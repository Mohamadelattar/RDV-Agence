<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<title>Rdv-Agence</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="inc/inc_Front/css/style.css?version=1">
	<link rel="stylesheet" type="text/css" href="inc/inc_Front/css/publication.css?version=1">
	<link rel="stylesheet" type="text/css" href="inc/inc_Front/css/header.css">
	<link rel="stylesheet" type="text/css" href="inc/inc_Front/css/testimonial.css">
	<!-- Add the slick-theme.css if you want default styling -->
	<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
	<!-- Add the slick-theme.css if you want default styling -->
	<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>
	<!-- Animate libraries -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">
 
	    <!-- javascript -->
 
</head>
<body>
	
	<!-- Include the header -->
	<c:import url="/inc/inc_Front/header.jsp" />

	 <!-- Caroussel With text Animations -->
	<section>
		<div class="owl-carousel owl-theme">
	        <div class="item">
	            <img src="inc/inc_Front/images/image-caroussel-1.jpg" alt="image 1">
	            <div class="cover">
	                <div class="container">
	                    <div class="header-content">
	                        <div class="line"></div>
	                        <h2 class="line-title">On prend soin de toi</h2>
	                        <h1 class="line-main-title d-none d-md-block">Médicaments de haute qualité aux tarifs les plus bas</h1>
	                         <h1 class="line-main-title-low d-block d-md-none">Médicaments de haute qualité aux tarifs les plus bas</h1>
	                        <ul class="list-inline">
	                        	<li class="list-inline-item">
	                        		<a href="#" class="line-rdv">
	                        			Prendre un Rendez vous
	                        		</a>
	                        	</li>
	                        	<c:if test="${sessionScope.client == null}">
	                        	<li class="list-inline-item">
	                        		<a href="#"  data-toggle="modal" data-target="#connexionModal" class="line-connect">
	                        			Se connecter
	                        		</a>
	                        	</li>
	                        	</c:if>
	                        </ul>
	                    </div>
	                </div>
	             </div>
	        </div>                    
	        <div class="item">
	            <img src="inc/inc_Front/images/image-caroussel-2.jpg" alt="images 2">
	            <div class="cover">
	                <div class="container">
	                    <div class="header-content">
	                        <div class="line animated bounceInLeft"></div>
	                        <h2 class="line-title">On prend soin de toi</h2>
	                        <h1 class="line-main-title d-none d-md-block">Médicaments de haute qualité aux tarifs les plus bas</h1>
	                         <h1 class="line-main-title-low d-block d-md-none">Médicaments de haute qualité aux tarifs les plus bas</h1>
	                        <ul class="list-inline">
	                        	<li class="list-inline-item">
	                        		<a href="#" class="line-rdv">
	                        			Prendre un Rendez vous
	                        		</a>
	                        	</li>
	                        	<c:if test="${sessionScope.client == null}">
	                        	<li class="list-inline-item">
	                        		<a href="#"  data-toggle="modal" data-target="#connexionModal" class="line-connect">
	                        			Se connecter
	                        		</a>
	                        	</li>
	                        	</c:if>
	                        </ul>
	                    </div>
	                </div>
	             </div>
	        </div>                
	        <div class="item">
	            <img src="inc/inc_Front/images/image-caroussel-3.jpg" alt="images 3">
	            <div class="cover">
	                <div class="container">
	                    <div class="header-content">
	                        <div class="line animated bounceInLeft"></div>
	                        <h2 class="line-title">On prend soin de toi</h2>
	                        <h1 class="line-main-title d-none d-md-block">Médicaments de haute qualité aux tarifs les plus bas</h1>
	                         <h1 class="line-main-title-low d-block d-md-none">Médicaments de haute qualité aux tarifs les plus bas</h1>
	                        <ul class="list-inline">
	                        	<li class="list-inline-item">
	                        		<a href="#" class="line-rdv">
	                        			Prendre un Rendez vous
	                        		</a>
	                        	</li>
	                        	<c:if test="${sessionScope.client == null}">
	                        	<li class="list-inline-item">
	                        		<a href="#"  data-toggle="modal" data-target="#connexionModal" class="line-connect">
	                        			Se connecter
	                        		</a>
	                        	</li>
	                        	</c:if>
	                        </ul>
	                    </div>
	                </div>
	             </div>
	        </div>
	    </div>
	</section>

	<section class="mt-5 pt-5 Fonctionnalites">
		<!-- Nos Fonctionnalites -->
		<div class="container mx-auto">
			<h3 class="section-title section-title-size text-center mb-5">Nos <span>Fonctionnalités</span></h3>
			<div class="row">
				<div class="col-12 col-sm-6 col-lg-4 mb-4">
					<div class="fonctionnalite-item">
						<div class="svg-icon">
							<img src="inc/assets/images/calendar.svg" class="d-block img-fluid">
						</div>
						<h4 class="text-center mt-3">Accepter les réservations en ligne</h4>
						<p class="text-center paragraph">
							Votre propre site web de réservation optimisé 
							<span class="extra">
								pour mobiles ou l'intégration à votre site existant. Vous pouvez également accepter des réservations directement via Facebook, Instagram et Google.
							</span>
						</p>
					</div>
				</div>
				
				<div class="col-12 col-sm-6 col-lg-4 mb-4">
					<div class="fonctionnalite-item">
						<div class="svg-icon">
							<img src="inc/assets/images/notification.svg" class="d-block img-fluid">
						</div>
						<h4 class="text-center mt-3">Notifications via SMS/Email</h4>
						<p class="text-center paragraph">
							envoyer des rappels à vos employés et clients
							<span class="extra">
								 lorsque des rendez-vous sont réservés, annulés ou reprogrammés
							</span>
						</p>
					</div>
				</div>

				<div class="col-12 col-sm-6 col-lg-4 mb-4">
					<div class="fonctionnalite-item">
						<div class="svg-icon">
							<img src="inc/assets/images/payment.svg" class="d-block img-fluid">
						</div>
						<h4 class="text-center mt-3">Accepter paiements</h4>
						<p class="text-center paragraph">
							Acceptez les paiements et les acomptes en
							<span class="extra">
								  ligne via une gamme de processeurs de paiement tels que PayPal, Stripe et bien d'autres, ou acceptez les espèces ou les cartes sur place via notre système de point de
							</span>
						</p>
					</div>
				</div>

				<div class="col-12 col-sm-6 col-lg-4 mb-4">
					<div class="fonctionnalite-item">
						<div class="svg-icon">
							<img src="inc/assets/images/comments.svg" class="d-block img-fluid">
						</div>
						<h4 class="text-center mt-3">Accepter paiements</h4>
						<p class="text-center paragraph">
							Acceptez les paiements et les acomptes en
							<span class="extra">
								  ligne via une gamme de processeurs de paiement tels que PayPal, Stripe et bien d'autres, ou acceptez les espèces ou les cartes sur place via notre système de point de
							</span>
						</p>
					</div>
				</div>

				<div class="col-12 col-sm-6 col-lg-4 mb-4">
					<div class="fonctionnalite-item">
						<div class="svg-icon">
							<img src="inc/assets/images/calendar.svg" class="d-block img-fluid">
						</div>
						<h4 class="text-center mt-3">Accepter paiements</h4>
						<p class="text-center paragraph">
							Acceptez les paiements et les acomptes en
							<span class="extra">
								  ligne via une gamme de processeurs de paiement tels que PayPal, Stripe et bien d'autres, ou acceptez les espèces ou les cartes sur place via notre système de point de
							</span>
						</p>
					</div>
				</div>

				<div class="col-12 col-sm-6 col-lg-4 mb-4">
					<div class="fonctionnalite-item">
						<div class="svg-icon">
							<img src="inc/assets/images/calendar.svg" class="d-block img-fluid">
						</div>
						<h4 class="text-center mt-3">Accepter paiements</h4>
						<p class="text-center paragraph">
							Acceptez les paiements et les acomptes en
							<span class="extra">
								  ligne via une gamme de processeurs de paiement tels que PayPal, Stripe et bien d'autres, ou acceptez les espèces ou les cartes sur place via notre système de point de
							</span>
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>

 <section class="mt-5 mb-5" id="publications">
		<div class="container d-none d-lg-block">
			<div class="row">
				<!--first Element -->
				
					<c:forEach items="${publications}" var="publication">
					<div class="col-12 col-md-6 col-lg-4 col-lg-4">
					<div class="publication-entity">
						<div class="publication-picture w-100">
							<!-- For Hover Effect -->
							<div class="bg-color">
								
							</div>
							<img src="inc/inc_Dashboard/assets/images/<c:out value="${publication.image }"/>" class="d-block img-fluid">
						</div>
						<div class="publication-body h-auto px-4 pt-4 pb-5">
							<ul class="list-inline publication-author">
								<li class="list-inline-item">
									Par:
								</li>
								<li class="list-inline-item">
									<span>Admin</span>
								</li>
								<li class="list-inline-item">
									|
								</li>
								<li class="list-inline-item">
									<c:out value="${publication.date }"/>
								</li>
								<li class="list-inline-item">
									|
								</li>
							</ul>
							<h4><a class="" href="post?id=<c:out value='${publication.id}' />&idEmp=<c:out value="${publication.idEmploye}"/>">${publication.titre}</a></h4>
							<div class="module overflow">
							
							<p class="paragraph-excerpt "  >
								<c:out value="${publication.contenu }"/>
							</p>
							</div>
							<a href="post?id=<c:out value='${publication.id}' />&idEmp=<c:out value="${publication.idEmploye}"/>" class="read-more">
								Read More
							</a>
						</div>
						<p></p>
					</div>
				</div>
				
			</c:forEach>
			
			</div>
			</div>
			<div class="container-md mx-5 d-block d-lg-none" >
			<div class="row">
				<!--first Element -->
				<c:forEach items="${publications}" var="publication">
					<div class="col-12 col-md-6 col-lg-4 col-lg-4">
					<div class="publication-entity">
						<div class="publication-picture w-100">
							<!-- For Hover Effect -->
							<div class="bg-color">
								
							</div>
							<img src="inc/inc_Dashboard/assets/images/<c:out value="${publication.image }"/>" class="d-block img-fluid">
						</div>
						<div class="publication-body h-auto px-4 pt-4 pb-5">
							<ul class="list-inline publication-author">
								<li class="list-inline-item">
									Par:
								</li>
								<li class="list-inline-item">
									<span>Admin</span>
								</li>
								<li class="list-inline-item">
									|
								</li>
								<li class="list-inline-item">
									<c:out value="${publication.date}"/>
								</li>
								<li class="list-inline-item">
									|
								</li>
							</ul>
							<h4><a class="" href="post?id=<c:out value='${publication.id}' />&idEmp=<c:out value="${publication.idEmploye}"/>">${publication.titre}</a></h4>
							<div class="module overflow">
							
							<p class="paragraph-excerpt "  >
								<c:out value="${publication.contenu }"/>
							</p>
							</div>
							<a href="post?id=<c:out value='${publication.id}' />&idEmp=<c:out value="${publication.idEmploye}"/>" class="read-more">
								Read More
							</a>
						</div>
						<p></p>
					</div>
				</div>
				
			</c:forEach>
				 
				 
					</div>
				</div>
		 
			</section>


    
	   <section class="mt-5 mb-5 d-none d-lg-block" id="testimonial">
		<div class="container">
			<div class="testimonial">

				<div class="testimonial-box">
					<div class="testimonial-caroussel">
						<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
						  	<ol class="carousel-indicators">
						  	</ol>
						  	<div class="carousel-inner">
						  	<c:forEach var="commentaire" items="${commentaires}">
                            <c:forEach var="client" items="${clients}">
                            <c:if test="${commentaire.idClient==client.id}">
                                   <div class="carousel-item">
							      	<div class="client-opinion">
										<div class="d-none d-sm-block testimonial-client-image my-auto">
											<img src="inc/inc_Front/images/<c:out value="${client.photoProfile}"/>" class="d-block img-fluid">
										</div>
										<div class="d-block d-sm-none client-image-low my-auto">
											<img src="inc/inc_Front/images/<c:out value="${client.photoProfile}"/>" class="d-block img-fluid">
										</div>
										<div class="client-info">
											<p class="testimonial-paragraph-quote text-center"><c:out value="${commentaire.contenu}" />
											</p>
											<h5 class="text-center testimonial-client-name"><c:out value="${client.nom}" /> <c:out value="${client.prenom}" /></h5>
										</div>
										<div class="client-agency">
											<img src="" class="d-block img-fluid">
										</div>
									</div>
							    </div>
							    </c:if>
                            </c:forEach>
                            </c:forEach>
						 	</div>
							  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
								    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
								    <span class="sr-only">Previous</span>
							  </a>
							  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
								    <span class="carousel-control-next-icon" aria-hidden="true"></span>
								    <span class="sr-only">Next</span>
							  </a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	

	<section class="social-media">
		
		<!-- Instagram & Facebook -->
		<div class="container mx-auto">
			<h3 class="section-title section-title-size text-center mb-5">Vous voulez plus de réservations <span>de plus de canaux ? </span></h3>
			<div class="row">
				<div class="col-12 col-lg-6">
					<img src="inc/assets/images/facebook.png" class="d-block img-fluid" id="imageSocialMedia">
				</div>
				<div class="col-12 col-lg-6 d-flex align-items-center">
					<div class="w-100">
						<ul class="list-inline">
							<li class="list-inline-item social-media-item" id="item-1" tabindex="0">
								<div class="mb-2">
									<i class="fab fa-facebook social-media-icon"></i>
								</div>
								<span class="d-block mb-3 social-media-title">Facebook</span>
								<a href="" class="link-social-media">Visit our Page</a>
							</li>
							<li class="list-inline-item social-media-item" id="item-2" tabindex="1">
								<div class="mb-2">
									<i class="fab fa-instagram social-media-icon"></i>
								</div>
								<span class="d-block mb-3 social-media-title">Instagram</span>
								<a href="#" class="link-social-media">Visit our Page</a>
							</li>
							<li class="list-inline-item social-media-item" id="item-3" tabindex="2">
								<div class="mb-2">
									<i class="fab fa-google social-media-icon"></i>
								</div>
								<span class="d-block mb-3 social-media-title">Google Maps</span>
								<a href="#" class="link-social-media">Visit our Page</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		
	</section>


	<section class="support mt-5">
		<!-- Support -->
		<div class="container mx-auto px-0">
			<div class="shape">
				<div class="row">
					<div class="col-12 col-md-6 col-lg-4 d-flex align-items-center">
						<div class="d-none d-md-block">
							<h3 class="section-title section-title-size">Support <span>génial</span></h3>
							<p class="support-description">Notre Chat Live est là pour vous aider à configurer votre système !</p>
							<ul class="support-list p-0 mb-5">
								<li class="support-list-item d-flex justify-content-start">
									<i class="fas fa-check mr-3"></i>
									<span>Chat immédiat</span>
								</li>
								<li class="support-list-item d-flex justify-content-start">
									<i class="fas fa-check mr-3"></i>
									<span>Hautement qualifiés, loués par des centaines d'utilisateurs</span>
								</li>
							</ul>
							<div class="text-center">
								<a href="#" class="inscription-link">
									<i class="fas fa-paper-plane mr-2"></i>
									Contacter le chat Direct
								</a>
								<div class="mt-4"></div>
								<span class="span-pub">
									Rejoignez-nous et commencez<br>
									votre essai gratuit de 14 jours
								</span>
							</div>
						</div>
						<!-- Visible on low Sizes -->
						<div class="text-center d-block d-md-none px-4">
							<h3 class="section-title section-title-size">Support <span>génial</span></h3>
							<p class="support-description">Notre Chat Live est là pour vous aider à configurer votre système !</p>
							<ul class="support-list p-0 mb-5">
								<li class="support-list-item d-flex justify-content-start">
									<i class="fas fa-check mr-3"></i>
									<span>Chat immédiat</span>
								</li>
								<li class="support-list-item d-flex justify-content-start">
									<i class="fas fa-check mr-3"></i>
									<span>Hautement qualifiés, loués par des centaines d'utilisateurs</span>
								</li>
							</ul>
							<div class="text-center">
								<a href="#" class="inscription-link">
									<i class="fas fa-paper-plane mr-2"></i>
									Contacter le chat Direct
								</a>
								<div class="mt-4"></div>
								<span class="span-pub">
									Rejoignez-nous et commencez<br>
									votre essai gratuit de 14 jours
								</span>
							</div>
						</div>
					</div>
					<div class="col-12 col-md-6 col-lg-8 pr-0">
						<div class="">
							<img src="inc/assets/images/support.jpg" class="d-block img-fluid">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="securite mt-5">
		<!-- Securite -->
		<div class="container mx-auto">
			<h3 class="section-title section-title-size text-center d-block d-lg-none">La sécurité <span>est importante !</span></h3>
			<p class="securite-description text-center d-block d-lg-none">Communication sécurisée et sauvegarde quotidienne de toutes les données</p>
			<div class="row mb-5">
				<div class="col-12 col-lg-6">
					<div class="px-5 px-lg-0">
						<img src="inc/assets/images/securite.svg" class="d-block img-fluid">
					</div>
				</div>
				<div class="col-12 col-lg-6 d-flex align-items-center pt-3">
					<div class="d-none d-lg-block">
						<h3 class="section-title section-title-size">La sécurité <span>est importante !</span></h3>
						<p class="securite-description">Communication sécurisée et sauvegarde quotidienne de toutes les données</p>
						<p class="securite-definition">
							Des fonctionnalités telles que HIPAA, SOAP, la sécurité par mot de passe et le SSL garantiront la sécurité de vos données chez nous. Nous proposons également le SSO et nous serons conformes à la norme ISO27001 en 2020. De plus, nous avons un Délégué à la protection des données dédié pour s'assurer que votre entreprise reste en sécurité chez nous.
						</p>
						<a class="securite-link" href="#">Fonctionnalités de sécurité <i class="fas fa-arrow-right ml-2"></i></a>
					</div>

					<div class="d-block d-lg-none text-center">
						<p class="securite-definition mb-4">
							Des fonctionnalités telles que HIPAA, SOAP, la sécurité par mot de passe et le SSL garantiront la sécurité de vos données chez nous. Nous proposons également le SSO et nous serons conformes à la norme ISO27001 en 2020. De plus, nous avons un Délégué à la protection des données dédié pour s'assurer que votre entreprise reste en sécurité chez nous.
						</p>
						<a class="securite-link" href="#">Fonctionnalités de sécurité <i class="fas fa-arrow-right ml-2"></i></a>
					</div>
				</div>
			</div>

			<div class="d-flex justify-content-center">
				<div class="securite-image">
					<img src="inc/assets/images/gdpr.png" class="d-block img-fluid">
				</div>
				<div class="securite-image">
					<img src="inc/assets/images/hipaa.png" class="img-fluid d-block">
				</div>
				<div class="securite-image">
					<img src="inc/assets/images/ssl.png" class="img-fluid d-block">
				</div>
			</div>
		</div>
	</section>


	<section class="video-guide">
		<!-- Video Guide -->
		<div class="container mx-auto">
			<div class="row">
				<div class="col-12 col-md-5 d-flex align-items-center">
					<div class="d-none d-md-block">
						<h3 class="section-title section-title-size text-center mb-4">Nouveau <span>sur SimplyBook.me ?</span></h3>
						<p class="guide-description">
							Vous voulez en savoir plus sur la façon dont SimplyBook.me peut vous aider à gérer vos réservations en ligne ? Regardez la vidéo pour découvrir ce que vaut notre logiciel de réservation
						</p>
					</div>
					<div class="d-block d-md-none text-center mt-5">
						<h3 class="section-title section-title-size mb-4">Nouveau <span>sur SimplyBook.me ?</span></h3>
						<p class="guide-description">
							Vous voulez en savoir plus sur la façon dont SimplyBook.me peut vous aider à gérer vos réservations en ligne ? Regardez la vidéo pour découvrir ce que vaut notre logiciel de réservation
						</p>
					</div>
				</div>
				<div class="col-12 col-md-7">
					<div class="guide-image">
						<img src="inc/assets/images/guideVideo.png" class="d-block img-fluid mx-auto">
						<span class="span-pub-guide">
							C'est vraiment facile
						</span>
						<div class="button-div d-none d-lg-block">
							<a href="#" class="inscription-link">
								<i class="fab fa-youtube mr-3"></i>
								Regarder vidéo
							</a>
						</div>
						<div class="button-div-medium d-none d-md-block d-lg-none">
							<a href="#" class="inscription-link">
								<i class="fab fa-youtube mr-3"></i>
								Regarder vidéo
							</a>
						</div>
						<div class="button-div-low d-block d-md-none">
							<a href="#" class="inscription-link">
								<i class="fab fa-youtube mr-3"></i>
								Regarder vidéo
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


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
			    	<form method="post" action="index" class="formConnexion">
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


	<!-- Our ooter -->
    <footer id="main-footer">
    	<div class="container-md mx-lg-5 px-md-4">
    		<div class="row pt-5">
    			<div class="col-12 col-sm-6 col-md-4 col-lg-3 mb-4">
    				<ul class="footer-list">
    					<li class="footer-list-item footer-logo-image mb-3">
    						<img src="inc/inc_Front/images/logo-footer.png" class="d-block img-fluid">
    					</li>
    					<li class="footer-list-item mb-3">
    						<p>
    							Ipsum dolor sit amet, consecterelit, sed do eiusmod tempor incididunt.Ipsum dolor sit amet, consecterelit, sed do eiusmod tempor incididunt.
    						</p>
    					</li>
    					<li class="footer-list-item mb-3">
    						<i class="fas fa-map mr-2"></i>
    						Agadir cite eddakhla
    					</li>
    					<li class="footer-list-item mb-3">
    						<i class="fas fa-phone-alt mr-2"></i>
    						+2126-45367678
    					</li>
    					<li class="footer-list-item mb-3">
    						<i class="fas fa-envelope mr-2"></i>
    						agency@contact.com
    					</li>
    				</ul>
    			</div>
    			<div class="col-12 col-sm-6 col-md-4 col-lg-3 mb-4">
    				<ul class="footer-list">
    					<li class="footer-list-item footer-list-title mb-4 pb-2 ml-3">
    						Departement
    					</li>
    					<li class="footer-list-item footer-list-item-hover mb-3">
    						<i class="fas fa-angle-double-right footer-icone"></i>
    						<a href="#" class="d-inline">Notre agence</a>
    					</li>
    					<li class="footer-list-item footer-list-item-hover mb-3">
    						<i class="fas fa-angle-double-right footer-icone"></i>
    						<a href="#" class="d-inline">a propos</a>
    					</li>
    					<li class="footer-list-item footer-list-item-hover mb-3">
    						<i class="fas fa-angle-double-right footer-icone"></i>
    						<a href="#" class="d-inline">about us</a>
    					</li>
    					<li class="footer-list-item footer-list-item-hover mb-3">
    						<i class="fas fa-angle-double-right footer-icone"></i>
    						<a href="#" class="d-inline">contactez nous</a>
    					</li>
    				</ul>
    			</div>

    			<div class="col-12 col-sm-6 col-md-4 col-lg-3 mb-4">
    				<ul class="footer-list">
    					<li class="footer-list-item footer-list-title mb-4 pb-2 ml-3">
    						Quick links
    					</li>
    					<li class="footer-list-item footer-list-item-hover mb-3">
    						<i class="fas fa-angle-double-right footer-icone"></i>
    						<a href="#" class="d-inline">Notre agence</a>
    					</li>
    					<li class="footer-list-item footer-list-item-hover mb-3">
    						<i class="fas fa-angle-double-right footer-icone"></i>
    						<a href="#" class="d-inline">a propos</a>
    					</li>
    					<li class="footer-list-item footer-list-item-hover mb-3">
    						<i class="fas fa-angle-double-right footer-icone"></i>
    						<a href="#" class="d-inline">about us</a>
    					</li>
    					<li class="footer-list-item footer-list-item-hover mb-3">
    						<i class="fas fa-angle-double-right footer-icone"></i>
    						<a href="#" class="d-inline">contactez nous</a>
    					</li>
    				</ul>
    			</div>

    			<div class="col-12 col-sm-6 col-md-4 col-lg-3 px-5 px-md-1 mb-4">
    				<div class="work-box px-3 py-1">
    					<ul class="work-list px-2 mb-0">
    						<li class="work-list-item py-4">
    							Lundi - Vendredi
    							<span>09:00 AM - 19:00 PM</span>
    						</li>
    						<li class="work-list-item py-4">
    							Samedi
    							<span>09:00 AM - 13:00 PM</span>
    						</li>
    						<li class="work-list-item py-4">
    							Dimanche
    							<span>Seulement les cas urgents</span>
    						</li>
    					</ul>
    				</div>
    			</div>
    		</div>
    	</div>
    </footer>
	

	<!-- Include the footer -->
	<c:import url="/inc/inc_Front/footer.jsp" />
	
<script type="text/javascript">
 
		$(document).ready(function(){
			$('.publication-entity').hover(
		       function(){ 
		       	$(this).children('.publication-picture').children('div').addClass('bg-color-hover');
		       	$(this).children('.publication-picture').children('img').addClass('publication-picture-hover');
		       	 },
		       function(){ 
		       	$(this).children('.publication-picture').children('div').removeClass('bg-color-hover');
		        $(this).children('.publication-picture').children('img').removeClass('publication-picture-hover');
		   		}
			)
		})
	</script>
	<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<!-- FontAwesome -->
    <script src="https://kit.fontawesome.com/24349302c9.js" crossorigin="anonymous"></script>

    <!-- Jquery Cdn -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<!-- Bootstrap js F-->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<!-- Caroussel Js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js"></script>
	<!-- Main Js -->
	<script type="text/javascript" src="inc/inc_Front/scripts/main.js"></script>
	
 
</body>
</html>