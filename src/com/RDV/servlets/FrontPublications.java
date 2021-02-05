package com.RDV.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.RDV.Dao.PublicationDao;
import com.RDV.beans.Publication;

/**
 * Servlet implementation class AllPublications
 */
@WebServlet("/publications")
public class FrontPublications extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE_PUBLICATIONS ="/WEB-INF/Front/listPublications.jsp";
	private static final String ATT_PUBLICATIONS="publications";
	private PublicationDao publicationDao;
    
	
	 public void init() {
	    	publicationDao = new PublicationDao(Publication.class);
	    }
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontPublications() {
        super();
        // TODO Auto-generated constructor stub
    }
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings({ "unused", "unchecked" })
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List < Publication > publications = (List<Publication>) publicationDao.getAll("from Publication");
		
		request.setAttribute(ATT_PUBLICATIONS, publications);
		// TODO Auto-generated method stub
		this.getServletContext().getRequestDispatcher( VUE_PUBLICATIONS ).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
