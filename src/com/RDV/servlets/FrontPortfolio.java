package com.RDV.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.RDV.Dao.PortfolioDao;
import com.RDV.beans.Employe;
import com.RDV.beans.Portfolio;

/**
 * Servlet implementation class FrontPortfolio
 */
@WebServlet("/portfolio")
public class FrontPortfolio extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static final String PORTFOLIO = "portfolio";
    private static final String EMPLOYE = "employe";
    private static final String VUE = "/WEB-INF/Front/portfolio.jsp";
    private PortfolioDao portfolioDao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontPortfolio() {
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
		Employe employe = portfolioDao.isAdmin();
		request.setAttribute(PORTFOLIO, portfolio);
		request.setAttribute(EMPLOYE, employe);
		this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
