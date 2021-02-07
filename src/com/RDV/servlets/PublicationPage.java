package com.RDV.servlets;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.RDV.Dao.EmployeDAO;
import com.RDV.Dao.PublicationDao;
import com.RDV.beans.Employe;
import com.RDV.beans.Publication;

/**
 * Servlet implementation class PublicationPage
 */
@WebServlet("/post")
public class PublicationPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE_PUBLICATION="/WEB-INF/Front/publication.jsp";
	private static final String ATT_PUBLICATION="publication";
	private static final String ATT_PUBLICATIONS="publications";
	private static final String ATT_EMPLOYE="employe";
	private static final String ATT_PREVPUB = "prevPublication";
	private static final String ATT_NEXTPUB = "nextPublication";
	private static final String ATT_MIN ="minId";
	private static final String ATT_MAX ="maxId";
	private PublicationDao publicationDao;
	private EmployeDAO employeDao;
    /**
     * @see HttpServlet#HttpServlet()
     */
	 public void init() {
	    	publicationDao = new PublicationDao(Publication.class);
	    	employeDao     = new EmployeDAO(Employe.class);
	    }
    public PublicationPage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	 
	 
	@SuppressWarnings("unused")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt( request.getParameter( "id" ) );
		int idEmp = Integer.parseInt(request.getParameter( "idEmp" ));
        Publication publication = (Publication) publicationDao.getById(id);
        //List<LocalDate> dates = publicationDao.ListDate();
        Publication prevPublication = null;
        Publication nextPublication = null;
        Employe employe = (Employe) employeDao.getById(idEmp);
         
        List < Publication > publications = (List<Publication>) publicationDao.publications(id);
        
        
        int [] result  = publicationDao.maxMinPublication();
         
         if(id==result[0]) {
        	 nextPublication = (Publication) publicationDao.getById(id+1);
        	 if(nextPublication == null)
        	 {
        		 nextPublication = (Publication) publicationDao.getById(id+2);
        	 }
         }
         else if(id == result[1]) {
        	 prevPublication = (Publication) publicationDao.getById(id-1);
        	 if(prevPublication==null)
        	 {
        		 prevPublication = (Publication) publicationDao.getById(id-2);
        	 }
         }
         else
         {
        	 prevPublication = (Publication) publicationDao.getById(id-1);
        	 if(prevPublication==null)
        	 {
        		 prevPublication = (Publication) publicationDao.getById(id-2);
        	 }
        	 nextPublication = (Publication) publicationDao.getById(id+1);
        	 if(nextPublication == null)
        	 {
        		 nextPublication = (Publication) publicationDao.getById(id+2);
        	 }
         }
         
         if(prevPublication!=null)
         {
        	 request.setAttribute(ATT_PREVPUB, prevPublication);
         }
         
         if(nextPublication != null)
         {
        	 request.setAttribute(ATT_NEXTPUB, nextPublication);
         }
        request.setAttribute(ATT_MIN, result[0]);
        request.setAttribute(ATT_MAX, result[1]);
		request.setAttribute(ATT_PUBLICATIONS, publications);
		request.setAttribute(ATT_EMPLOYE, employe);
        request.setAttribute( ATT_PUBLICATION, publication);
		this.getServletContext().getRequestDispatcher( VUE_PUBLICATION ).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
