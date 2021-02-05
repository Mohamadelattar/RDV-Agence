<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Se connecter Dahboard</title>
<link href="inc/inc_Dashboard/css/main.css" rel="stylesheet">
<link href="inc/inc_Dashboard/css/login.css" rel="stylesheet">
</head>
<body>
	<div class="collapse d-flex flex-column flex-md-row align-items-center p-3 px-md-4 purple shadow-sm">
    <h5 style="font-size: 2rem" class="purple mx-auto pt-2 pb-2 text-light text-center mb-0 align-middle">
        <i class="fas fa-cubes fa-lg"></i> Company.io
    </h5>
</div>
<div class="row h-100">
    <div class="col purple left">
        <div class="row" style="height:100%">
            <div class="col my-auto">
                <h5 style="font-size: 3rem" class=" mt-0 mb-0 text-light text-center mb-0 align-middle">
                        <i class="fas fa-cubes fa-lg"></i> Dashboard
                    </h5>
            </div>
        </div>
    </div>
    <div class="col-md right">
        <div class="container h-100">
            <div class="row align-items-center h-100">
                <div class="card shadow border-0 mx-auto">
                    <div class="card-header p-4">
                        <h5 class="text-light text-center mb-0 align-middle">
                            <i class="fas fa-cubes fa-lg"></i>
                        </h5>
                    </div>
                    <div class="loader h-100">
                        <div class="dots" style="display: none; opacity: 0">
                            <div style="position: absolute; bottom: 35%; left: 30%;" class="row justify-content-center">
                                <svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-dot" fill="#e8b513" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M8 9.5a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3z"/>
                                </svg>
                                <svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-dot" fill="#4181eb" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M8 9.5a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3z"/>
                                </svg>
                                <svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-dot" fill="#2ba34c" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M8 9.5a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3z"/>
                                </svg>
                            </div>                 
                        </div>
                        <div class="row">
                            <div class="card-body p-4">

                                <h5 class="text-grey text-center mt-0 font-weight-bold">Se connecter</h5>
                                <p class="text-center text-muted">Enter votre email et votre mot de passe</p>
                                                <div class="row mb-3 text-center">
                                <img src="https://i.ibb.co/sy9j0YF/download-11.png" class="mx-auto text-center" height="80"/>
                            </div>
                           			 <c:if test="${!empty erreur }">
								            <!-- Afficher l'erreur dans ce bloc -->
								            	 <div class=" error mb-2">
					                                    <div class="alert alert-danger mb-2" role="alert">
					                                        <c:out value="${erreur}"/>
					                                    </div>
					                                </div>
				                            </c:if> 
                                <form  method="post" action="<%=request.getContextPath()%>/login" id="signIn" novalidate>
                                    <div class="form-group p-1">
                                        <label for="username text-muted">
                                            <h6 class="text-grey"><i class="fas fa-user"></i> Email</h6>
                                        </label>
                                        <input name="email" placeholder="Entrer votre email" required="true" id="email" type="email" class="form-control">
                                        <div class="invalid-feedback">Merci de saisir votre email</div>
                                        <label for="password" class="mt-4">
                                            <h6 class="text-grey"><i class="fas fa-key"></i> Password</h6>
                                        </label>
                                        <input name="password" placeholder="Entrer votre mot de passe" required="true" id="password" type="password" class="form-control">
                                        <div class="invalid-feedback">Merci de saisir votre mot de passe</div>
                                    </div>
                                    <div class="row">
                                        <button  value="submit" type="submit" id="submit" class="btn btn-primary mx-auto">
                                            <span class="btn-text">Submit</span>
                                        </button>
                                    
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>  
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/3.2.1/anime.min.js" type="text/javascript"></script>
<script>
function validateForm(event) {
	  event.preventDefault();

	  var form = document.getElementById('signIn');
	  var valid = form.checkValidity();

	  if (valid) {
	    document.getElementById('submit').disabled = "true";
	    var TimeIsAFlatCircle = anime.timeline({
	      autoplay: true
	    });
	    TimeIsAFlatCircle
	      .add({
	        targets: '.card-body',
	        duration: 1,
	        opacity: 0.1
	      })
	      .add({
	        targets: '.loader',
	        duration: 1,
	        backgroundColor: '#eff3fe',
	        opacity: 1,
	        complete: function () {
	          document.querySelector('.dots').style.display = 'inline';
	        }
	      })
	      .add({
	        targets: '.dots',
	        duration: 500,
	        opacity: 1,
	        complete: function () {
	          dotTimeline.play();
	        }
	      })



	    var dotTimeline = anime.timeline({
	      autoplay: false,
	      loop: 2,
	      complete: function () {
	        var undoTimeline = anime.timeline({
	          autoplay: true
	        });
	        undoTimeline
	          .add({
	            targets: '.dots',
	            duration: 500,
	            opacity: 0,
	          })
	          .add({
	            targets: '.loader',
	            duration: 1,
	            backgroundColor: '#fff',
	            opacity: 1,
	            begin: function () {
	              document.querySelector('.dots').style.display = 'none';
	            }
	          })
	          .add({
	            targets: '.card-body',
	            duration: 1,
	            opacity: 1,
	            complete: function () {
	              document.getElementById('signIn').reset();
	              document.getElementById('signIn').classList.remove('was-validated');
	              document.getElementById('submit').disabled = false;
	            }
	          })
	      }
	    });
	    dotTimeline.add({
	      targets: '.bi-dot',
	      duration: 300,
	      translateY: -20,
	      easing: 'easeInOutSine',
	      delay: anime.stagger(100) // increase delay by 100ms for each elements.
	    })
	    dotTimeline.add({
	      targets: '.bi-dot',
	      duration: 500,
	      easing: 'easeInOutSine',
	      translateY: 0,
	      delay: anime.stagger(100) // increase delay by 100ms for each elements.
	    })


	  }
	  else {
	    form.classList.add('was-validated');
	    const xMax = 15;
	    anime({
	      targets: '.card',
	      easing: 'easeInOutSine',
	      duration: 550,
	      translateX: [
	        {
	          value: xMax * -1,
	        },
	        {
	          value: xMax,
	        },
	        {
	          value: xMax / -2,
	        },
	        {
	          value: xMax / 2,
	        },
	        {
	          value: 0
	        }
	      ],
	    });
	  }
	}
</script>
</html>