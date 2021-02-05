package com.RDV.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.RDV.Dao.EmployeDAO;
import com.RDV.beans.Employe;

 
@WebServlet("/login")
public class DashboardLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE_LOGIN = "/WEB-INF/Dashboard/login.jsp";
	public static final String ATT_EMPLOYE = "employe";
    public static final String ATT_FORM   = "form";
    private static final String CHAMP_EMAIL     = "email";
    private static final String CHAMP_PASSWORD   = "password";
    private static final String CHAMP_ERREUR ="erreur";

    private static final String VUE_SUCCES = "/WEB-INF/Dashboard/index.jsp";
    private EmployeDAO          employeDao;
 
	
       
 
    public DashboardLogin() {
        super();
         
    }

    public void init() {
        employeDao = new EmployeDAO(Employe.class);
    }

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
		 this.getServletContext().getRequestDispatcher( VUE_LOGIN ).forward( request, response );
	}

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
			 	
	            authenticate(request, response);
	        } catch (Exception e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
		 
	 
	}
	
	  private void authenticate(HttpServletRequest request, HttpServletResponse response)  throws Exception {
		  
		  			HttpSession session = request.getSession();
			        String email = request.getParameter(CHAMP_EMAIL);
			        String password = request.getParameter(CHAMP_PASSWORD);
			        System.out.println(email);
			        
			        Employe employe = employeDao.validate(email, password);

			        if (employe != null) {
			        	session.setAttribute(ATT_EMPLOYE, employe);
			        	session.setAttribute("idEmploye", employe.getId());
			        	
			            RequestDispatcher dispatcher = request.getRequestDispatcher(VUE_SUCCES);
			            dispatcher.forward(request, response);
			        	
			        	 
			        } else {
			        	String erreur = "Impossible de se connecter, Verifiez vos données";
			        	
			        	request.setAttribute(CHAMP_ERREUR, erreur);
			        	 RequestDispatcher dispatcher = request.getRequestDispatcher(VUE_LOGIN);
				            dispatcher.forward(request, response);
			        }
			    }
	
 
}
