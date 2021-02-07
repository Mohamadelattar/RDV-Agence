<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="app-sidebar sidebar-shadow 1" id="div-sidebar">

                  
     <div class="app-header__logo">
         <div class="logo-src"></div>
         <div class="header__pane ml-auto">
             <div>
                 <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                     <span class="hamburger-box">
                         <span class="hamburger-inner"></span>
                     </span>
                 </button>
             </div>
         </div>
     </div>
     <div class="app-header__mobile-menu">
         <div>
             <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                 <span class="hamburger-box">
                     <span class="hamburger-inner"></span>
                 </span>
             </button>
         </div>
     </div>
     <div class="app-header__menu">
         <span>
             <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                 <span class="btn-icon-wrapper">
                     <i class="fa fa-ellipsis-v fa-w-6"></i>
                 </span>
             </button>
         </span>
     </div>
         <div class="scrollbar-sidebar ps ps--active-y">
             <div class="app-sidebar__inner">
                 <ul class="vertical-nav-menu metismenu">
                     <li class="app-sidebar__heading">Dashboard</li>
                     <li>
                         <a href="dashboard" class="slide-element">
                             <i class="fas fa-home"></i>
                             Acceuil
                         </a>
                     </li>
                     <li class="app-sidebar__heading">Reservation</li>
                     <li>
                         <a href="dash-reservations" class="slide-element">
                             <i class="fas fa-calendar-alt"></i>
                             Calendrier de réservation
                         </a>
                     </li>
                     <li>
                         <a href="dash-reservations?do=lister" class="slide-element">
                             <i class="fas fa-calendar-alt"></i>
                             Toutes les réservations
                         </a>
                     </li>
                     <li>
                         <a href="dash-reservations?do=lister&conf=oui" class="slide-element">
                             <i class="fas fa-calendar-alt"></i>
                             Réservations confirmées
                         </a>
                     </li>
                     <li>
                         <a href="dash-reservations?do=lister&conf=non" class="slide-element">
                             <i class="fas fa-calendar-alt"></i>
                             Réservations non confirmées
                         </a>
                     </li>
                     <c:if test="${employe.isAdmin=='1'}">
                     <li class="app-sidebar__heading">Employe</li>
                     <li>
                         <a href="dash-employe" class="slide-element">
                             <i class="fas fa-chalkboard-teacher"></i>
                            Employe
                         </a>
                     </li>
                     </c:if>
                     <li class="app-sidebar__heading">Publication</li>
                            <li>
                                <a href="dash-publication" class="slide-element">
                                    <i   class="fas fa-edit"></i>
                                     Publication
                                </a>
                            </li>
                            <li>
                                <a href="dash-annonce" class="slide-element">
                                    <i class="fab fa-buysellads"></i>
                                     Annonce
                                </a>
                            </li>
                            <li>
                                    <a href="dash-portfolio" class="slide-element">
                                    	<i class="fas fa-comment-dots"></i>
                                        Portfolio
                                    </a>
                                </li>
                            <li class="app-sidebar__heading">Clients</li>
                                <li>
                                    <a href="dash-client" class="slide-element">
	                                    <i class="fas fa-user-friends"></i>
	                                        Liste de clients
                                    </a>
                                </li>
                                <li>
                                    <a href="dash-commentaires" class="slide-element">
                                    	<i class="fas fa-comment-dots"></i>
                                        Commentaires
                                    </a>
                                </li>
                               
                                 
                 </ul>
             </div>
         <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; height: 597px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 527px;"></div>
      	</div>
     </div>
</div>

