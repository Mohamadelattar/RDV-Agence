<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Gestion des Commentaires</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
    <link href="inc/inc_Dashboard/css/main.css" rel="stylesheet">
    <link href="inc/inc_Dashboard/css/commentaires.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css">
    </head>
<body>
<div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
	<c:import url="/inc/inc_Dashboard/header.jsp" />
	<div class="app-main">
		<c:import url="/inc/inc_Dashboard/slidebar.jsp" />
     <div class="app-main__outer">
                    <div class="app-main__inner">
                        <div class="app-page-title">
                            <div class="page-title-wrapper">
                                <div class="page-title-heading container2">
                                    
                                    <div>
                                      <i class="fas fa-comments fa-2x iconDetails"></i> </div>
                                      <div class="titleDisc">
                                      <h4>Gestion des Commentaires</h4>
                                        <div class="page-title-subheading">gérer les commentaires publiés par les clients</div>
                                    </div>
                                </div>
                                <div class="page-title-actions">
                                    <div class="input-group">
                                    <input type="text" class="search form-control border" placeholder="search a comment">
                                    <div class="input-group-append">
                                    <button class="btn btn-primary" type="button">
                                    <i class="fa fa-search"></i>
                                    </button>
                                    </div>
                                    </div>
                                </div>    </div>
                         </div>            
                                <div class="row">
			                        <br>
			                          <div class="table100 ver1 m-b-110">
                                        <div class="table100-head">
                                        <table>
                                           <thead>
                                           <tr class="row100 head">
                                           <th class="cell100 column1">ID</th>
                                           <th class="cell100 column2">Titre</th>
                                           <th class="cell100 column3">Contenu</th>
                                           <th class="cell100 column4">Client</th>
                                           <th class="cell100 column5">Actions</th>                                        
                                           </thead>   
                                                            
                                       </table>
                                       </div>
                                       <div class="table100-body js-pscroll">
                                       <table class="results">
                                           <c:forEach var="commentaires" items="${listCommentaires}">
                                           <tr class="row100 body">
                                                <td class="cell100 column1"><c:out value="${commentaires.id}" /></td>
                                                <td class="cell100 column2"><c:out value="${commentaires.titre}" /></td>
                                                <td class="cell100 column3"><c:out value="${commentaires.contenu}" /></td>
                                                <td class="cell100 column4"><c:out value="${commentaires.cin}" /></td>
                                                <td>
                                                <div class="modal-footer justify-content-center">
                                                <a href="#" data-toggle="modal" data-target="#confirm-delete" class="btn btn-primary btn-danger modal-trigger" data-href="?do=delete&id=<c:out value="${commentaires.id}"/>">
                                                <i id="delete-btn" class="fas fa-trash-alt mr-3" style="display:inline;"></i>Supprimer</a>
                                                </div>
                                               </td>
                                           </tr>                                            
                                           </c:forEach>
                                           
                                           <tr class="row100 body no-result">
                                           
                                           <td class="text-center"><i class="fa fa-warning"></i> No result</td>
                                           </tr>
                                           
                                           </table>
                                           </div>
                                           </div>
                                </div>
                            </div>
                          
                       
                            
                          
                    </div>
                   
               </div>
               
               <!-- Delete POP UP-->
     <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="confirm-delete" aria-hidden="true">
	<div class="modal-dialog modal-confirm" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<div class="icon-box">
					<i class="material-icons">&#xE5CD;</i>
				</div>				
			</div>
			<div class="modal-body text-center mt-4">
			    <b>Are you sure ?</b>
				<p>Do you really want to delete these comment? This process cannot be undone.</p>
			</div>
			<div class="modal-footer justify-content-center">
				<button type="button" class="btn btn-secondary btn-cancel" data-dismiss="modal">Cancel</button>
                    <a type="button" class="btn btn-primary btn-danger btn-delete btn-ok">
                        <i class="fas fa-trash-alt mr-3"></i>Delete
                    </a>
			</div>                                                                                           
		</div>
	</div>
</div> 
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="inc/inc_Dashboard/js/popper.js"></script>
<script src="inc/inc_Dashboard/js/bootstrap.min.js"></script>
<script src="inc/inc_Dashboard/js/select2.min.js"></script>
<script src="inc/inc_Dashboard/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="inc/inc_Dashboard/assets/scripts/commentaires.js"></script>

<!-- Include our Footer with js scripts-->
<c:import url="/inc/inc_Dashboard/footer.jsp" />