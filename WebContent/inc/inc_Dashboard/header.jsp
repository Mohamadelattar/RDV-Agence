<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="app-header header-shadow">
            <div class="app-header__logo">
                <div class="logo-src">
                	<img src="inc/inc_Dashboard/assets/images/logo-inverse.png">
                </div>
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
            </div>    <div class="app-header__content">
                <div class="app-header-left">
                     
                           </div>
                <div class="app-header-right">
                    <div class="header-btn-lg pr-0">
                        <div class="widget-content p-0">
                            <div class="widget-content-wrapper">
                                <div class="widget-content-left">
                                    <div class="btn-group">
                                        <a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="p-0 btn">
                                            <img width="42" class="rounded-circle" src="/assets/images/avatars/1.jpg" alt="">
                                            <i class="fa fa-angle-down ml-2 opacity-8"></i>
                                        </a>
                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu dropdown-menu-right">
                                             
                                            <h6 tabindex="-1" class="dropdown-header"> <c:out value="${employe.nom}"/> <c:out value="${employe.prenom}"/></h6>
                                            <button type="button" tabindex="0" class="dropdown-item"></button>
                                            <div tabindex="-1" class="dropdown-divider"></div>
                                            <a href="?url=logout"  tabindex="0" class="dropdown-item" ><i style="margin:10px;" class="fas fa-sign-out-alt"></i>  Se deconnecter </a>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="widget-content-left  ml-3 header-user-info">
                                    <div class="widget-heading">
                                        <c:out value="${employe.nom}"/>
                                        <c:out value="${employe.prenom}"/>
                                    </div>
                                    <div class="widget-subheading">
                                        <c:choose>
										    <c:when test="${employe.isAdmin=='1'}">
										        Admin
										    </c:when>    
										    <c:otherwise>
										         Employe
										    </c:otherwise>
										</c:choose>                                        
                                    </div>
                                </div>
                                 
                            </div>
                        </div>
                    </div>        </div>
            </div>
    </div>
