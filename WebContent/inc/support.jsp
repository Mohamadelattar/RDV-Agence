<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="/css/support.css" />
    </head>
    <body>
    <!-- Trigger Button-->
            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                <button type="button" class="btn btn-primary btn-lg triggerbtn" id="btndisclaimer" data-toggle="modal" data-target="#myModal">Support</button>
            </div>
    <!-- Modal -->
    <div class="modal fade" id="myModal" >
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="titredisc">
                        <div class="titre">Support génial !</div>
                        <p>Aide en direct</p>
                    </div>
                </div>
                <div class="modal-body">
                    <!--Nom-->
                    <section>
                        <input type="text" placeholder="Ecrivez votre nom">
                    </section>
                    <!--EMAIL INPUT-->                
                    <section>
                        <input type="text" placeholder="Write you email here">
                    </section>
                    <!-- TEXT AREA -->
                    <section>
                        <textarea placeholder="Describe Your Issue Here"></textarea>
                    </section>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger padbtn" data-dismiss="modal">Annuler</button>
                    <button type="button" class="btn btn-primary padbtn">Envoyer</button>
                </div>
            </div>
        </div>
    </div>
    <!-- END MODAL -->
</body>
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
<!-- JavaScript Bundle with Popper -->
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/support.js"></script>
</html>
