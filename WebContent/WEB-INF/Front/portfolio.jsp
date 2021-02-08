<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Portfolio</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	    <link rel="stylesheet" type="text/css" href="inc/inc_Front/css/style.css">
	<link rel="stylesheet" type="text/css" href="inc/inc_Front/css/header.css">
	<link rel="stylesheet" type="text/css" href="inc/inc_Front/css/portfolio.css">
</head>
<body>
	<c:import url="/inc/inc_Front/header.jsp" />
	<section class="mt-5 mb-5">
		<div class="container mt-5 m-0 mx-sm-auto">
			<div class="row">
				<div class="col-12 col-md-4 mb-4">
					<div class="doctor-info px-4 pt-4 mb-4">
						<div class="profil-info profil-doctor mt-4">
							<h4 class="ml-4"><c:out value="${portfolio.nom}"/>  <c:out value="${portfolio.prenom}"/></h4>
							<p class="ml-4 mb-0">Doctor Expert</p>
							<hr>
							<ul class="list-info doctor-info-list pl-0">
								<li class="list-info-item">
									<ul class="list-inline">
										<li class="list-inline-item">
											<i class="fas fa-map-marker-alt mr-3"></i>
										</li>
										<li class="list-inline-item">
											<b><c:out value="${employe.ville}"/></b>
										</li>
									</ul>
								</li>
								<li class="list-info-item">
									<ul class="list-inline">
										<li class="list-inline-item">
											<i class="fas fa-user mr-3"></i>
										</li>
										<li class="list-inline-item">
											<b><c:out value="${portfolio.nom}"/>  <c:out value="${portfolio.prenom}"/></b> 
										</li>
									</ul>
								</li>
								<li class="list-info-item">
									<ul class="list-inline">
										<li class="list-inline-item">
											<i class="fas fa-envelope mr-3"></i>
										</li>
										<li class="list-inline-item">
											<b><c:out value="${employe.email}"/></b> 
										</li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
					<div class="recent-posts-header mb-3 d-flex align-items-center mt-4">
                        <h3 class="ml-3 my-auto">Presentation</h3>
                    </div>
                    <div class="recent-posts-body">
                    	<ul class="list-degree p-0">
                    		<li class="list-degree-item">
                    			- <c:out value="${portfolio.presentation}"/>
                    		</li>
                    		 
                    	</ul>        
                    </div>
				</div>
				<div class="col-12 col-md-8">
                    <div class="blog">
                        <div class="blog-image">
                            <img src="inc/inc_Dashboard/assets/images/<c:out value="${employe.photoProfile }"/>" class="d-block w-100">
                        </div>
                        <h1 class="publication-title-doctor mt-4">
							Meet Dr.<c:out value="${portfolio.nom}"/>  <c:out value="${portfolio.prenom}"/>
						</h1>
                        <div class="blog-post-doctor mt-4">
                            <p class="px-0">
	                             <c:out value="${portfolio.experience}"/>
	                        </p>
	                        <div class="portfolio-quote ml-5">
	                        	<p class="ml-4">
	                        		 <c:out value="${portfolio.formation}"/>
	                        	</p>
	                        </div>
                        </div>
                    </div>
				</div>
			</div>
		</div>
	</section>


	<!-- FontAwesome -->
    <script src="https://kit.fontawesome.com/24349302c9.js" crossorigin="anonymous"></script>
    <!-- Jquery Cdn -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<!-- Bootstrap js F-->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<!-- Main Js -->
	<script type="text/javascript" src="main.js"></script>

	<script type="text/javascript">
		
	</script>
</body>
</body>
</html>