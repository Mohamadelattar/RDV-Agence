<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Rdv-Agence</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="inc/inc_Front/css/style.css?version=1">
	<!-- Add the slick-theme.css if you want default styling -->
	<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
	<!-- Add the slick-theme.css if you want default styling -->
	<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>
 
	    <!-- javascript -->
	    

 
 
</head>
<body>
	
	<!-- Include the header -->
	<c:import url="/inc/inc_Front/header.jsp" />

	<section class="mt-5">
		
		<!-- Main Section -->
		<div class="container mx-auto">
			<div class="row">
				<div class="col-12 col-md-7 d-flex align-items-center">
					<div class="">
						<h1 class="section-title mb-4">Système de réservation en ligne pour <span>les sociétés de services</span></h1>
						<p class="description-paragraph mb-5">Il vous suffit de définir vos services et vos prestataires, d'afficher leur disponibilité, et vous aurez des clients, anciens et nouveaux, qui feront des réservations 24h/24, 7j/7. </p>
						<ul class="list-inline pt-2 mb-5">
							<li class="list-inline-item">
								<a href="?action=effectuerReservation" class="inscription-link">
									Obtenir un compte gratuit
								</a>
							</li>
							<li class="list-inline-item d-none d-md-inline-block pt-5">
								<a href="#" class="inscription-link inscription-link-color">
									Soyez inspirés
								</a>
							</li>
						</ul>
					</div>
				</div>
				<!-- Image Publicite-->
				<div class="col-12 col-md-5 mt-3 mt-md-0 px-0">
					<img src="inc/assets/images/Booking2.png" class="d-block img-fluid">
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

	<section class="publication mt-5">
		
		<!-- Publications -->
		<div class="container mx-auto px-5 px-sm-0">
			<h3 class="section-title section-title-size text-center mb-5">Top <span>Publications</span></h3>
			<div class="row customer-logos slider">
			 <c:forEach items="${publications}" var="publication">
				<div class="col-12 col-md-6 col-lg-4 mb-4  slide">
					<a href="#" class="publication-link mx-auto">
						<div class="publication-content h-100 ">
							<div class="publication-image">
								<img src="inc/inc_Dashboard/assets/images/<c:out value="${publication.image }"/>" class="d-block image-para img-fluid">
							</div>
							<div class="publication-body text-center pb-5">
								<br>
								<h4 class="">${publication.titre}</h4>
								<br>
								
								<p class="px-3 para" >
									 <c:out value='${publication.contenu}' />
								</p>
									
								<span>
									<a href="post?id=<c:out value='${publication.id}' />&idEmp=<c:out value="${publication.idEmploye}"/>" class="formConnexion-link">Learn More</a>
								</span>
							</div>
						</div>
					</a>
				</div>
				</c:forEach>
 
 
			</div>
		</div>
	</section>


	<section class="clients mt-5">
		
		<!-- Nos Clients Disent -->
		<div class="container mx-auto px-3 px-sm-0">
			<h3 class="section-title section-title-size text-center mb-5">Nos clients <span>disent</span></h3>
			<div class="row">
				<div class="col-12 col-md-6 mb-5 mt-5 mb-md-0 mt-md-0">
					<div class="client-opinion">
						<div class="d-none d-sm-block client-image my-auto">
							<img src="inc/assets/images/benaicha.jpg" class="d-block img-fluid">
						</div>
						<div class="d-block d-sm-none client-image-low my-auto">
							<img src="inc/assets/images/benaicha.jpg" class="d-block img-fluid">
						</div>
						<div class="client-info">
							<h5 class="text-center client-name">Mohamed Amine Benaicha</h5>
							<p class="text-center client-domain">Design & wellness<br>Owner</p>
							<p class="paragraph-quote">
								“I simply love the SimplyBook.me online booking system! I run a small wellness clinic and the SimplyBook.me system saves me time and has streamlined my bookings. My clients really appreciate the convenience of seeing my calendar and booking easy to use and looks professional. I trialled a few different online booking systems but none were as impressive as SimplyBook.me.”
							</p>
						</div>
						<div class="client-agency">
							<img src="" class="d-block img-fluid">
						</div>
					</div>
				</div>

				<div class="col-12 col-md-6 mb-5 mt-5 mb-md-0 mt-md-0">
					<div class="client-opinion">
						<div class="d-none d-sm-block client-image my-auto">
							<img src="inc/assets/images/amiri.jpg" class="d-block img-fluid">
						</div>
						<div class="d-block d-sm-none client-image-low my-auto">
							<img src="inc/assets/images/amiri.jpg" class="d-block img-fluid">
						</div>
						<div class="client-info">
							<h5 class="text-center client-name">Mohamed Amiri</h5>
							<p class="text-center client-domain">COO, Mandel Dermatology. New York’s premiere medical, cosmetic, and laser dermatology practice.</p>
							<p class="paragraph-quote">
								“The fact that SimplyBook.me was HIPAA compliant—which is an absolute must-have as a medical practice—as well as reasonably priced, easy to use, infinitely customizable, had a feature for seemingly every need, and was easy to integrate into our website was what sold us on SimplyBook.me,” states Jared.”
							</p>
						</div>
						<div class="client-agency">
							<img src="" class="d-block img-fluid">
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


	<footer class="mt-5">
	    <div class="footer-container px-4 px-lg-3">
		    <div class="footer-menu">
		        <div>
		            <figure>
		                <a href=""><img src="https://storage.googleapis.com/setmore-website/v2/images/logo/logo-white.svg"/></a>
		            </figure>
		            <div class="reseaux">
		                <p>Réseaux sociaux</p>
		            </div>
		            <ul class="social-links">
		            <li>
		            <a href="" target="_blank">
		                <svg width="19" height="18" viewBox="0 0 19 18" >
		                <path fill="white"
		                    d="M18.11 9.055C18.11 4.053 14.057 0 9.055 0S0 4.053 0 9.055C0 13.575 3.311 17.32 7.64 18v-6.328h-2.3V9.055h2.3V7.06c0-2.27 1.35-3.523 3.42-3.523.99 0 2.027.177 2.027.177V5.94h-1.142c-1.125 0-1.475.698-1.475 1.414v1.7h2.51l-.4 2.617h-2.11V18c4.328-.68 7.64-4.426 7.64-8.945z"
		                    opacity=".85"
		                /></svg>
		            </a>
		            </li>
		            <li>
		            <a href="" target="_blank">
		                <svg width="19" height="20" viewBox="0 0 19 20">
		                <path fill="white"
		                    d="M14.422 3.626c.648 0 1.175.555 1.175 1.238 0 .682-.527 1.238-1.175 1.238-.649 0-1.176-.556-1.176-1.238 0-.683.527-1.238 1.176-1.238zm-4.924 9.536c-1.658 0-3.003-1.416-3.003-3.162S7.84 6.838 9.498 6.838c1.659 0 3.003 1.416 3.003 3.162s-1.344 3.162-3.003 3.162zm0-8.334c-2.71 0-4.913 2.319-4.913 5.172 0 2.853 2.203 5.172 4.913 5.172 2.71 0 4.913-2.319 4.913-5.172 0-2.853-2.203-5.172-4.913-5.172zm7.589 9.212c0 2.178-1.68 3.945-3.748 3.945H5.661c-2.069 0-3.748-1.767-3.748-3.945V5.956c0-2.177 1.68-3.945 3.748-3.945h7.678c2.069 0 3.748 1.768 3.748 3.945v8.084zM13.339 0H5.661C2.537 0 0 2.672 0 5.956v8.084C0 17.325 2.537 20 5.661 20h7.678C16.459 20 19 17.328 19 14.04V5.956C18.997 2.672 16.46 0 13.339 0z"
		                    opacity=".85"
		                /></svg>
		            </a>
		            </li>
		            <li>
		            <a href="" target="_blank">
		                <svg width="19" height="14" viewBox="0 0 19 14">
		                <path fill="white"
		                    d="M16.836 6.24c1.056-.085 1.795-.622 2.058-1.328-.395.255-1.583.537-2.243.255-.026-.17-.079-.31-.105-.452-.502-1.976-2.217-3.557-4.037-3.388.158-.057.29-.113.448-.17.211-.084 1.372-.282 1.187-.705-.158-.395-1.583.282-1.847.367.37-.141.95-.396 1.03-.819a2.708 2.708 0 0 0-1.478.763c.158-.17.264-.368.29-.594-1.451.96-2.296 2.965-2.982 4.885-.528-.565-1.003-.988-1.451-1.243-1.188-.677-2.64-1.411-4.882-2.286-.08.79.37 1.863 1.636 2.569-.264-.028-.766.056-1.161.14.158.905.686 1.667 2.137 2.034-.66.056-1.003.197-1.293.536.29.621 1.03 1.383 2.349 1.214-1.452.678-.607 1.92.58 1.722C5.014 12 1.821 11.83 0 9.966c4.776 6.974 15.174 4.122 16.73-2.597 1.162 0 1.848-.424 2.27-.904-.66.113-1.636 0-2.164-.226"
		                    opacity=".85"
		                /></svg>
		            </a>
		            </li>
		            <li>
		            <a href="" target="_blank">
		                <svg width="18" height="14" viewBox="0 0 18 14">
		                <path fill="white"
		                    d="M6.677 10.118V3.475L12.4 6.807l-5.723 3.31M17.69 2.253C17.47 1.185 16.687.397 15.744.279 13.511 0 11.252-.002 9.003 0c-2.25 0-4.509 0-6.741.278C1.32.396.538 1.184.317 2.252.004 3.773 0 5.434 0 7c0 1.566 0 3.226.314 4.747.22 1.068 1.002 1.857 1.945 1.974 2.232.279 4.491.28 6.74.279 2.25.001 4.509 0 6.74-.279.943-.117 1.726-.905 1.946-1.974C18 10.227 18 8.567 18 7c0-1.566.003-3.227-.311-4.748"
		                    opacity=".85"
		                />
		                </svg>
		            </a>
		            </li>
		        </ul>
		        </div>
		        <nav>
		        <ul>
		            <li><a href="">Publications</a></li>
		            <li><a href="">A propos de nous</a></li>
		            <li><a href="">Contactez-nous</a></li>
		        </ul>
		        <ul>
		            <li><a href="">Support</a></li>
		            <li><a href="">Termes et conditions</a></li>
		        </ul>
		        </nav>
		    </div>
		    <div class="footer-middle">
		        <div class="clients-count">
		            <i class="fas fa-user-tie fa-2x"></i>
		            <p class="euclid-font"><span>396</span> clients inscrits</p>
		        </div>
		        <div class="apropos">
		            <p>
		                Systeme de prise de rendez-vous en ligne sécurisé et conçu pour une utilisation simple et comfortable pour nos clients
		            </p>
		        </div>
		    </div>
		    <div class="footer-end">
		        <span>&copy; Setmore Appointments</span>
		        <span>|</span>
		        <span> Tous droits réservés 2021.</span>
		    </div>
	    </div>
    </footer>
	

	<!-- Include the footer -->
	<c:import url="/inc/inc_Front/footer.jsp" />
	
	<script>
	$(document).ready(function(){
	    $('.customer-logos').slick({
	        slidesToShow: 3,
	        slidesToScroll: 1,
	        autoplay: true,
	        autoplaySpeed: 1300,
	        arrows: false,
	        dots: false,
	        pauseOnHover: false,
	        responsive: [{
	            breakpoint: 992,
	            settings: {
	                slidesToShow: 2
	            }
	        },
	        	{
	            breakpoint: 768,
	            settings: {
	                slidesToShow: 1
	            }
	        }, {
	            breakpoint: 520,
	            settings: {
	                slidesToShow: 1
	            }
	        }]
	    });
	});
	
	</script>
	<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	
 
</body>
</html>