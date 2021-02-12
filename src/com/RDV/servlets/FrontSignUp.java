package com.RDV.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.RDV.Dao.ClientDao;
import com.RDV.beans.Client;
import com.RDV.metier.FormulaireClient;

 
public class FrontSignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE_SIGNUP = "/WEB-INF/Front/registration.jsp";
	//private static final String CHAMP_ERREUR ="erreur";
	public static final String CLIENT = "client";
    private static final String FORMULAIRE       = "formulaire";
    public static final String ATT_FORM   = "form";
    //private static final String VUE_SUCCES = "/WEB-INF/Front/index.jsp";
	private static final String VUE_LOGIN = "/WEB-INF/Front/mainpage.jsp";
    private ClientDao          clientDao;
 
	
       
 
    public FrontSignUp() {
        super();
         
    }

    public void init() {
        clientDao = new ClientDao(null);
    }

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
		 this.getServletContext().getRequestDispatcher( VUE_SIGNUP ).forward( request, response );
	}

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
	            insertClient(request, response);
	        } catch (Exception e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
		 
	 
	}
	private void insertClient( HttpServletRequest request, HttpServletResponse response )
	            throws ServletException, IOException {
		    HttpSession session = request.getSession();
	        FormulaireClient formulaire = new FormulaireClient();

	        Client client = formulaire.validerClient( request );
	        if ( formulaire.getErreurs().isEmpty() ) {
	            clientDao.saveClient( client );
	            request.setAttribute( FORMULAIRE, formulaire );
		        request.setAttribute( CLIENT, client );
		        session.setAttribute(CLIENT, client);

		        this.getServletContext().getRequestDispatcher( VUE_LOGIN ).forward( request, response );
	        }
	         else {
	      
	        	     request.setAttribute( FORMULAIRE, formulaire );
    	             RequestDispatcher dispatcher = request.getRequestDispatcher(VUE_SIGNUP);
                     dispatcher.forward(request, response);
    }
	        
	    }
 
}
