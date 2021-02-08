<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>${publication.titre}</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="inc/inc_Front/css/style.css">
		<link rel="stylesheet" type="text/css" href="inc/inc_Front/css/header.css">
	
</head>
<body>
	
	<!-- Include the header -->
	<c:import url="/inc/inc_Front/header.jsp" />

	<!-- Quiz Section -->
    <section class="mt-4">
        <div class="container mx-auto">
            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="mb-3 d-flex justify-content-between">
                        <h3>
                        	<a href="#" class="category-link">Publications</a>
                        </h3>
                    </div>
                    <h1 class="publication-title">${publication.titre}</h1>
                    <div class="author d-flex justify-content-between">
                        <div class="author-name px-1">
                            <p><img src="inc/inc_Dashboard/assets/images/<c:out value="${employe.photoProfile}"/>" class="author-image mr-3"><span>by</span><a href="#">
								 <c:out value='${employe.nom}' /> <c:out value='${employe.prenom}' /> </a><span class="d-none d-md-inline"> . about 9 months ago</span></p>
                        </div>
                        <div class="views text-right">
                            <span>3.1k views</span>
                        </div>
                    </div>
                    <hr>
                    <div class="blog">
                        <div class="blog-image">
                            <img src="inc/inc_Dashboard/assets/images/<c:out value="${publication.image }"/>" class="d-block w-100">
                        </div>
                        <div class="blog-post mt-4">
                            <p class="px-0 px-md-4">
	                            <c:out value='${publication.contenu}' />
	                        </p>
                        </div>
                    </div>
                    <hr>
                    <div class="Share mb-5">
                        <div class="row">

                            <!-- Visible on computer & Pc screen -->
                            <div class="col-6 share-button d-none d-md-block px-1 mt-2">
                                <a class="btn btn-primary share-fb btn-block">
                                	<i class="fab fa-facebook pr-2"></i>
	                                Share on facebook
	                            </a>
                            </div>
                            <div class="col-6 share-button d-none d-md-block px-1 mt-2">
                                <a class="btn btn-primary share-twitter btn-block">
                                	<i class="fab fa-twitter pr-2"></i>
	                                Share on twitter
	                            </a>
                            </div>

                            <!-- Visible on Phone screen -->
                            <div class="col-6 share-button d-block d-md-none px-1 mt-2">
                                <a class="btn btn-primary share-fb btn-block"><i class="fab fa-facebook"></i></a>
                            </div>
                            <div class="col-6 share-button d-block d-md-none px-1 mt-2">
                                <a class="btn btn-primary share-twitter btn-block"><i class="fab fa-twitter"></i></a>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-4 d-none d-md-block">
                    <div class="recent-posts">
                        <div class="recent-posts-header mb-3 d-flex align-items-center">
                            <h3 class="ml-3 my-auto">Recent posts</h3>
                        </div>
                        <div class="recent-posts-body">
                            <c:forEach items="${publications}" var="item">
                            <div class="recent-posts-publications d-flex justify-content-between mb-3">
                                <div class="recent-posts-publications-image">
                                    <img height="78px"  width="78px" src="inc/inc_Dashboard/assets/images/<c:out value="${item.image}"/>" class="d-block img-fluid">
                                </div>
                                <div class="recent-posts-publications-info ml-3">
                                    <h5>
                                        <a href="post?id=<c:out value='${item.id}' />&idEmp=<c:out value="${item.idEmploye}"/>">
                                            <c:out value="${item.titre }"/>
                                        </a>
                                    </h5>
                                    <p>${item.date}</p>
                                </div>
                            </div>
                        </c:forEach>
                             
                             
                        </div>
                    </div>
                    <div class="recent-posts-header mb-3 d-flex align-items-center mt-4">
                        <h3 class="ml-3 my-auto">Trouver nous sur les reseaux sociaux</h3>
                    </div>
                    <div class="picks-images snapcode text-center">
                        <img src="inc/assets/images/facebook.png" class="d-block w-100">
                        <h2>
                            <a href="#" class="d-block">ReservationAgency
                            </a>
                            <span class="span-pub mt-2 px-3">@ReservationAgency</span>
                        </h2>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!--More Stuff Section-->
    <section id="more-stuff" class="mb-5">
        <div class="container mx-auto">
            <div class="row">
                <div class="col-12 col-md-7 col-lg-8">
                    <div class="news-letter text-center px-4 py-4 mt-5">
                    	<h3 class="section-title section-title-size text-center mb-3">Vous voulez plus de trucs <span>comme ça?</span></h3>
                        <p class="mb-4">Obtenez les meilleures publications directement dans votre boîte de réception!</p>

                        <!-- Display on Computer & Pc Screen -->
                        <form class="form-inline d-none d-md-block">
                            <input type="email" class="form-control input-pc mr-2" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                            <button type="submit" class="btn btn-primary btn-signup">SIGN UP</button>
                            <small id="emailHelp" class="form-text text-muted mx-auto">Don't worry, we don't spam</small>
                        </form>

                        <!-- Display on Phone Screen -->
                        <form class="form-inline d-block d-md-none">
                            <input type="email" class="form-control d-block w-100 mb-2 text-center" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                            <button type="submit" class="btn btn-primary btn-signup mb-2 btn-block">SIGN UP</button>
                            <small id="emailHelp" class="form-text text-muted mx-auto">Don't worry, we don't spam</small>
                        </form>

                        <div class="mail-logo text-center">
                            <i class="fas fa-envelope" style="color:#fff;"></i>
                        </div>
                    </div>
                    <div class="d-flex justify-content-between mt-5">
                        <div class="float-left mr-2 mt-4">
                            <i class="fas fa-arrow-left" style="font-family: 1.2rem; color: red; font-weight: 600;"></i>
                        </div>
                       
							<c:if test="${publication.id != minId}" >
								<div class="previous-article text-left pr-2">
                            		<a href="post?id=<c:out value='${prevPublication.id}' />&idEmp=<c:out value="${prevPublication.idEmploye}"/>">
                                	 <strong class="d-block mb-2">L'article précedent</strong>
                                	 <span>${prevPublication.titre}</span>
                           			 </a>
                        		</div>
							</c:if>
								
							 
                        	<c:if test="${publication.id != maxId}">
	                        	  <div class="next-article text-right pl-2">
			                            <a href="post?id=<c:out value='${nextPublication.id}' />&idEmp=<c:out value="${nextPublication.idEmploye}"/>">
			                                <strong class="d-block mb-2 mr-2 ">L'article suivant</strong>
			                                <span class="mr-2">${nextPublication.titre}</span>
			                            </a>
			                        </div>
                        	</c:if>
		                        
                        <div class="float-right ml-2 mt-4">
                            <i class="fas fa-arrow-right" style="font-family: 1.2rem; color: red; font-weight: 600;"></i>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 col-lg-4 d-none d-md-block">
                    <div class="picks text-center mt-2">
                    	<h3 class="section-title section-title-size text-center">Vous pouvez nous trouver sur <span>les réseaux sociaux</span></h3>
                    </div>
                    <hr>
                    <div class="picks-images snapcode text-center">
                        <img src="inc/assets/images/facebook.png" class="d-block w-100">
                        <h2>
                        	<a href="#" class="d-block">ReservationAgency
                        	</a>
                        	<span class="span-pub mt-2 px-3">@ReservationAgency</span>
                        </h2>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- Comment Section -->
    <section id="comment" class="">
        <div class="container mx-auto">
            <div class="col-12 col-md-8 p-0">
                <div class="picks mt-2">
                    <h2 class="text-center title">Commentaires</h2>
                    <ul class="list-inline text-center">
                        <li class="list-inline-item">
                            <a href="" class="active">Un commentaire sur nos services</a>
                        </li>
                    </ul>
                    <hr>

                </div>
                <div class="picks mt-2">
                    <h2 class="text-center title">Laissez un commentaire</h2>
                    <hr>
                </div>
                <div class="comment-content">
                    <p class="m-0">
                    	Votre adresse email ne sera pas publiée. Les champs requis sont indiqués *
                    </p>
                    <!-- Visible on Computer & Pc Screen -->
                    <form class="pl-0 pl-md-4 pt-3 form-pc d-none d-md-block" method="post" action="SendEmail">
                        <div class="form-group">
                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" name="comment" placeholder="comment*"></textarea>
                        </div>
                        <div class="form-group input-size">
                            <input type="text" class="form-control" id="exampleFormControlInput2" name="nom" placeholder="Name*">
                        </div>
                        <div class="form-group input-size">
                            <input type="email" class="form-control" id="exampleFormControlInput1" name="email" placeholder="Email*">
                        </div>
                        <div class="form-group input-size">
                            <input type="text" class="form-control" id="exampleFormControlInput2" name="website" placeholder="Website">
                        </div>
                        <div class="form-group">
                            <div class="form-check mb-2">
                                <input class="form-check-input" type="checkbox" id="accept">
                                <label class="form-check-label" for="accept">
						        En utilisant ce formulaire, vous acceptez le stockage et le traitement de vos données par ce site Web.
						        <a href="#"> GDPR Privacy Policy</a> *
						      </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="sign-me">
                                <label class="form-check-label" for="sign-me">
						        Je veux me inscrire à la Newsletter!
						      </label>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary btn-signup mb-2">Poster un commentaire</button>
                    </form>

                    <!-- Visible on Phone Screen -->
                    <form class="pl-0 pl-md-4 pt-3 d-block d-md-none">
                        <div class="form-group">
                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" placeholder="comment*"></textarea>
                        </div>
                        <div class="form-group input-size">
                            <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="Name*">
                        </div>
                        <div class="form-group input-size">
                            <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Email*">
                        </div>
                        <div class="form-group input-size">
                            <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="Website">
                        </div>
                        <div class="form-group">
                            <div class="form-check mb-2">
                                <input class="form-check-input" type="checkbox" id="accept">
                                <label class="form-check-label" for="accept">
						        En utilisant ce formulaire, vous acceptez le stockage et le traitement de vos données par ce site Web.<a href="#"> GDPR Privacy Policy</a> *
						      </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="sign-me">
                                <label class="form-check-label" for="sign-me">
						        Je veux me inscrire à la Newsletter!
						      </label>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary btn-signup mb-2">Poster un commentaire</button>
                    </form>
                </div>
            </div>
            <div class="col-0 col-md-4">

            </div>
        </div>
    </section>

	<!-- Include the footer -->
	<c:import url="/inc/inc_Front/footer.jsp" />

	
</body>
</html>