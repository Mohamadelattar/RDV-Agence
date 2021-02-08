<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Publications</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="inc/inc_Front/css/style.css">
	<link rel="stylesheet" type="text/css" href="inc/inc_Front/css/publications.css">
	
	<link rel="stylesheet" type="text/css" href="inc/inc_Front/css/header.css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
</head>
<body>
	
	<!-- Include the header -->
	<c:import url="/inc/inc_Front/header.jsp" />
	
  <section class="hero-section">
 	 <div class="card-grid">
 	 <c:forEach items="${publications}" var="item">
	    <a class="card" href="post?id=<c:out value='${item.id}' />&idEmp=<c:out value="${item.idEmploye}"/>">
	      <div class="card__background" style="background-image: url(inc/inc_Dashboard/assets/images/<c:out value="${item.image }"/>)"></div>
	      <div class="card__content">
	        <p class="card__category">${item.titre}</p>
	        <h3 class="card__heading">${item.titre}</h3>
	      </div>
	    </a>
    </c:forEach>
 	 <div>
</section>
	
	<!-- Include the footer -->
	<c:import url="/inc/inc_Front/footer.jsp" />
	
</body>
</html>