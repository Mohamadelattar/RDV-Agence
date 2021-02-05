package com.RDV.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import com.RDV.Dao.PublicationDao;
import com.RDV.beans.Publication;
import com.RDV.metier.PublicationValidation;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
public class DashboardPublication extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE_PUBLICATION = "/WEB-INF/Dashboard/Publication/publication.jsp";
	private static final String VUE_AJOUTER = "/WEB-INF/Dashboard/Publication/ajouterPublication.jsp";
	private static final String VUE_MODIFIER = "/WEB-INF/Dashboard/Publication/modifierPublication.jsp";
	private static final String ATT_FORM   = "form";
	private static final String ATT_PUBLICATIONS = "publications";
	private static final String ATT_PUBLICATION = "publication";
	private static final String PATH = "dash-publication";
    
	
	 private PublicationDao publicationDao;

	     
		public void init() {
	    	publicationDao = new PublicationDao(Publication.class);
	    }
    public DashboardPublication() {
        super();
    }

	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
    	if(action == null) {
    		try {
				listPublications(request, response);
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
					listPublications(request, response);
				} catch (SQLException | IOException | ServletException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
                break;
            }
    	}
    	
	 
	
        
		 
	}
	
	@SuppressWarnings("unchecked")
	private void listPublications(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
				ArrayList < Publication > publications = (ArrayList<Publication>) publicationDao.getAll("from Publication");
				System.out.println(publications);
		        request.setAttribute(ATT_PUBLICATIONS, publications);
		        this.getServletContext().getRequestDispatcher( VUE_PUBLICATION ).forward( request, response );;
		    }

		    private void ajouterForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		        
		    	 this.getServletContext().getRequestDispatcher( VUE_AJOUTER ).forward( request, response );
		    }

		    private void modifierForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		        
		    	int id = Integer.parseInt( request.getParameter( "id" ) );
		        Publication publication = (Publication) publicationDao.getById(id);

		        request.setAttribute( ATT_PUBLICATION, publication);

		        this.getServletContext().getRequestDispatcher( VUE_MODIFIER ).forward( request, response );

		    }

		    @SuppressWarnings("unchecked")
			private void enregistrerPublication(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		    	 PublicationValidation formulaire = new PublicationValidation();

		         Publication publication = formulaire.creerPublication(request);
		         
		         request.setAttribute( ATT_FORM, formulaire );
		         request.setAttribute( ATT_PUBLICATION, publication );

		         if ( formulaire.getErreurs().isEmpty() ) {
		             publicationDao.save(publication);
		             response.sendRedirect( request.getContextPath() + "/" + PATH );
		         }
		         else
		         {
		        	 this.getServletContext().getRequestDispatcher( VUE_AJOUTER ).forward( request, response );
		         }
		         
		         
 
		    }

		    @SuppressWarnings("unchecked")
			private void modifierPublication(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		    	PublicationValidation formulaire = new PublicationValidation();

		        Publication publication = formulaire.modifierPublication(request);
		        
		        System.out.println(publication.getTitre() + publication.getContenu());
		        
		        System.out.println(formulaire.getErreurs());
		        
		        
		        
		        if ( formulaire.getErreurs().isEmpty() ) {
		            publicationDao.update(publication);
		            request.setAttribute( ATT_FORM, formulaire );
		        	request.setAttribute( ATT_PUBLICATION, publication );
		        	response.sendRedirect( request.getContextPath() + "/" + PATH );
		        }
		        else {
		        	this.getServletContext().getRequestDispatcher( VUE_MODIFIER ).forward( request, response );
		        }
 
		        
		    }

		    private void supprimerPublication(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		        int id = Integer.parseInt(request.getParameter("id"));
		        System.out.println(id);
		        publicationDao.delete(id);
		        response.sendRedirect( request.getContextPath() + "/" + PATH );
		    }

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
	    System.out.println( action );
	        switch ( action ) {

            case "enregistrer":
                try {
					enregistrerPublication(request, response);
				} catch (SQLException | IOException e2) {
					 
					e2.printStackTrace();
				}
                break;
	        case "update":
	            try {
	   				modifierPublication(request, response);
	   			} catch (SQLException | IOException e1) {
	   				 
	   				e1.printStackTrace();
	   			}
	            break;
		
	
	}
	}
}
