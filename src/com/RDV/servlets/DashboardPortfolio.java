package com.RDV.servlets;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.RDV.Dao.PortfolioDao;
import com.RDV.beans.Portfolio;
import com.RDV.metier.PortfolioValidation;


/**
 * Servlet implementation class DashboardPortfolio
 */

public class DashboardPortfolio extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE= "/WEB-INF/Dashboard/Portfolio/portfolio.jsp";
	private static final String PORTFOLIO = "portfolio";
	private static final String ATT_FORM = "formulaire";
    private PortfolioDao portfolioDao;
	/**
     * @see HttpServlet#HttpServlet()
     */
    public DashboardPortfolio() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init() {
    	portfolioDao = new PortfolioDao(Portfolio.class);
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Portfolio portfolio = (Portfolio) portfolioDao.getById(1);
		System.out.println("Jay mn SQL" + portfolio.getExperience());
		System.out.println("Jay mn SQL" + portfolio.getFormation());
		
		request.setAttribute(PORTFOLIO, portfolio);
		// TODO Auto-generated method stub
		this.getServletContext().getRequestDispatcher(VUE).forward( request, response );
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
	            	updatePortfolio(request, response);
	   			} catch (IOException e1) {
	   				 
	   				e1.printStackTrace();
	   			}
	            break;
		
	
	}
		
		 
	}
	
	@SuppressWarnings({ "unchecked", "unused" })
	private void updatePortfolio( HttpServletRequest request, HttpServletResponse response ) throws IOException, ServletException {

         System.out.println("Marhba 1");
		PortfolioValidation formulaire = new PortfolioValidation();
		System.out.println("Marhba 2");
		Portfolio portfolio = formulaire.creerPortfolio(request);
		System.out.println("Marhba 3");
 

        if ( formulaire.getErreurs().isEmpty() ) {
            portfolioDao.update(portfolio);
            //System.out.println( "test" );
        }

        request.setAttribute( ATT_FORM, formulaire );
        request.setAttribute(PORTFOLIO, portfolio);

        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }

}
