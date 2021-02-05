package com.RDV.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.RDV.Dao.StatistiqueDao;


/**
 * Servlet implementation class Dashboard
 */
@WebServlet("/dashboard")
public class Dashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE_DASHBOARD = "/WEB-INF/Dashboard/index.jsp";
	private static final String STAT_CONGE = "conges";
	private static final String SOMME_CONGE  = "somme";
	private static final String PUB ="publications";
	private static final String PUB_SOMME ="pubSomme";
	private static final String CLIENTS ="clients";
	private static final String CLIENT_SOMME ="clientSomme";
	private static final String URL_REDIRECTION = "/login";
	//private static final String PUB_FEV ="pubFevrier";
	
	private StatistiqueDao statistiqueDao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Dashboard() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init() {
        statistiqueDao = new StatistiqueDao();
        System.out.println("Statistique Publication ");
        //statistiqueDao.publication();
        
        
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String url = request.getParameter("url");
		if(url==null) {
			/* Statistique Employe */
			ArrayList<Integer> isConge = statistiqueDao.employe();
	 
			session.setAttribute(SOMME_CONGE, isConge.get(0) + isConge.get(1));
			
			session.setAttribute(STAT_CONGE, isConge);
			
			/* Statistique Publication */
			ArrayList<Integer> result = statistiqueDao.publication();
	 
			session.setAttribute(PUB_SOMME, result.get(0) + result.get(1)+result.get(2)+result.get(3)+result.get(4)+result.get(5)+result.get(6)+result.get(7)+result.get(8)+result.get(9)+result.get(10)+result.get(11));
			session.setAttribute(PUB, result);
			
			/*Statistique Client */
			ArrayList<Integer> resultClient = statistiqueDao.client();
			session.setAttribute(CLIENT_SOMME, resultClient.get(0)+resultClient.get(1)+resultClient.get(2)+resultClient.get(3)+resultClient.get(4)+resultClient.get(5)+resultClient.get(6)+resultClient.get(7)+resultClient.get(8)+resultClient.get(9)+resultClient.get(10)+resultClient.get(11));
			session.setAttribute(CLIENTS, resultClient);
			
			this.getServletContext().getRequestDispatcher( VUE_DASHBOARD ).forward( request, response );
		}
		else {
			session.invalidate();
			response.sendRedirect(request.getContextPath()+ URL_REDIRECTION );
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
