package com.RDV.servlets;

import java.io.IOException;   
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;

import com.RDV.util.Mailer;  
  
@WebServlet("/SendEmail")
public class SendEmail extends HttpServlet {  
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final String PATH="/publications";

public void doPost(HttpServletRequest request,  
 HttpServletResponse response)  
    throws ServletException, IOException {  
  
    response.setContentType("text/html");  
    
    String nom = request.getParameter("nom");
    String email = request.getParameter("email");
    String website = request.getParameter("website");
    String commentaire = request.getParameter("comment");
    String to="mohamadelattar99@gmail.com";  
    String subject="Commentaire d'un visiteur";  
    String msg="Nom :"+nom+"\n"+"Email : "+email+"\n"+"Website : "+website+"\n"+"Commentaire : "+commentaire; 
          
    Mailer.send(to, subject, msg);  
    response.sendRedirect(request.getContextPath()+ PATH);  
    }  
  
}  