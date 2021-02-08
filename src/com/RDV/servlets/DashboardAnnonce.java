package com.RDV.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.RDV.Dao.AnnonceDao;
import com.RDV.beans.Annonce;
import com.RDV.metier.AnnonceValidation;


/**
 * Servlet implementation class DashboardAnnonce
 */
 
public class DashboardAnnonce extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE_ANNONCE = "/WEB-INF/Dashboard/Annonce/annonce.jsp";
	private static final String VUE_AJOUTER = "/WEB-INF/Dashboard/Annonce/ajouterAnnonce.jsp";
	private static final String VUE_MODIFIER = "/WEB-INF/Dashboard/Annonce/modifierAnnonce.jsp";
	private static final String ATT_FORM   = "form";
	private static final String ATT_ANNONCES = "annonces";
	private static final String ATT_ANNONCE = "annonce";
	private static final String PATH = "dash-annonce";
	
	private AnnonceDao annonceDao ;
	
	 public void init() {
	        annonceDao = new AnnonceDao(Annonce.class);
	    }
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DashboardAnnonce() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
    	if(action == null) {
    		try {
				listAnnonces(request, response);
			} catch (SQLException | IOException | ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	}else {
    		switch(action)
            {
            case "ajouter":
                ajouterForm(request, response);
                break;
            case "supprimer":
                try {
					supprimerPublication(request, response);
				} catch (SQLException | IOException e2) {
					// TODO Auto-generated catch block
					e2.printStackTrace();
				}
                break;
            case "modifier":
                try {
					modifierForm(request, response);
				} catch (SQLException | ServletException | IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
                break;
           
            default:
                try {
					listAnnonces(request, response);
				} catch (SQLException | IOException | ServletException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
                break;
            }}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
	    System.out.println( action );
	        switch ( action ) {

            case "enregistrer":
                try {
					enregistrerAnnonce(request, response);
				} catch (SQLException | IOException e2) {
					 
					e2.printStackTrace();
				}
                break;
	        case "update":
	            try {
	   				modifierAnnonce(request, response);
	   			} catch (SQLException | IOException e1) {
	   				 
	   				e1.printStackTrace();
	   			}
	            break;
		
	
	}
	}
	
	@SuppressWarnings("unchecked")
	private void listAnnonces(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		ArrayList < Annonce > annonces = (ArrayList<Annonce>) annonceDao.getAll("from Annonce");
        request.setAttribute(ATT_ANNONCES,annonces);
        this.getServletContext().getRequestDispatcher( VUE_ANNONCE ).forward( request, response );
    }

    private void ajouterForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	 this.getServletContext().getRequestDispatcher( VUE_AJOUTER ).forward( request, response );
    }

    private void modifierForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        
    	int id = Integer.parseInt( request.getParameter( "id" ) );
        Annonce annonce = (Annonce) annonceDao.getById(id);

        request.setAttribute( ATT_ANNONCE, annonce);

        this.getServletContext().getRequestDispatcher( VUE_MODIFIER ).forward( request, response );

    }
    
    @SuppressWarnings("unchecked")
	private void enregistrerAnnonce(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
   	 AnnonceValidation formulaire = new AnnonceValidation();

        Annonce annonce = formulaire.crrerAnnonce(request);
        
        request.setAttribute( ATT_FORM, formulaire );
        request.setAttribute( ATT_ANNONCE, annonce );

        if ( formulaire.getErreurs().isEmpty() ) {
            annonceDao.save(annonce);
            response.sendRedirect( request.getContextPath() + "/" + PATH );
        }
        else
        {
       	 this.getServletContext().getRequestDispatcher( VUE_AJOUTER ).forward( request, response );
        }
        
        

   }

   @SuppressWarnings("unchecked")
private void modifierAnnonce(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
   	AnnonceValidation formulaire = new AnnonceValidation();

       Annonce annonce = formulaire.modifierAnnonce(request);
       
       request.setAttribute( ATT_FORM, formulaire );
       request.setAttribute( ATT_ANNONCE, annonce );
       
       if ( formulaire.getErreurs().isEmpty() ) {
           annonceDao.update(annonce);
           response.sendRedirect( request.getContextPath() + "/" + PATH );
       }
       else {
       	this.getServletContext().getRequestDispatcher( VUE_MODIFIER ).forward( request, response );
       }
      
       
   }

   private void supprimerPublication(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
       int id = Integer.parseInt(request.getParameter("id"));
       System.out.println(id);
       annonceDao.delete(id);
       response.sendRedirect( request.getContextPath() + "/" + PATH );
   }

}
