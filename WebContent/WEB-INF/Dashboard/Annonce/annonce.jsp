<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<title>Annonces</title>
<link href="inc/inc_Dashboard/css/main.css" rel="stylesheet">
<link href="inc/inc_Dashboard/css/publication.css" rel="stylesheet">
<link href="inc/inc_Dashboard/css/util.css" rel="stylesheet">
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
                                <div class="page-title-heading">
                                    <div class="page-title-icon">
                                        <i class="fab fa-buysellads"></i>
                                    </div>
                                    <div>Annonce</div>
                                </div>
                                <div class="page-title-actions">
                                     
                                       
                                             <a href="?action=ajouter"  class="btn-shadow  btn btn-info"> Ajouter Annonce</a> 
                                    
                                </div>   
                                
                                 </div>
                        
                        </div>            
                        
                        
				<div class="table100 ver1 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="column1">ID</th>
									<th class="column2">Titre</th>
									<th class="column3"></th>
									<th class="column4"></th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<c:forEach items="${annonces}" var="annonce">
								<tr class="row100 body">
									
									<td class="cell100 column1"><c:out value="${annonce.id}" /></td>
									
									<td class="column2"><c:out value="${annonce.titre}" /></td>
									
									<td class="cell100 column4">
										<a href="?action=modifier&id=<c:out value='${annonce.id}' />">
											<button class="mb-2 mr-2 border-0 btn-transition btn btn-outline-success">
                                            	  Modifier
                                        	</button>
                                       </a>
									</td>
									
									<td class="cell100 column5">
										<button class="mb-2 mr-2 border-0 btn-transition btn btn-outline-danger" data-toggle="modal" data-target="#confirm-delete" data-href="?action=supprimer&id=<c:out value="${annonce.id }"/>">
                                          	 Supprimer
                                        </button>
									</td>
								
								</tr>
								</c:forEach>
 	 
							 
							</table>
						</div>
					</div> 
				</div>
			</div>
		</div>
       </div>
                  
	<!-- Delete Confirmation Dialog -->

    <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="confirm-delete" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
            	<div class="modal-header mb-3">
                    <div class="logo-delete">
                        <i class="fas fa-times"></i>
                    </div>
                </div>
                <div class="modal-body text-center mt-4">
                	<i class="fas fa-exclamation-triangle"></i>
                    <b>Êtes vous sure ?</b>
                    <span class="d-block mt-2">
                        Êtes vous sure de supprimer cette annonce ?
                    </span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary btn-cancel" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary btn-delete btn-ok">
                        <i class="fas fa-trash-alt mr-3"></i>Delete
                    </a>
                </div>
            </div>
        </div>
    </div>
	
	 
	
	 

			
<c:import url="/inc/inc_Dashboard/footer.jsp" />
<!--===============================================================================================-->
	<script src="inc/inc_Dashboard/js/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="inc/inc_Dashboard/js/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
		
		$('a[href="#myModal"]').on('click',function(){
			   var id = $(this).attr('data-id');
			  $('input[name="idPublication"]').val(id);
			});
			
		
	</script>
	
	 
</body>
</html>