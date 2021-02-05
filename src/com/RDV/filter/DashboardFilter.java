package com.RDV.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class DashboardFilter
 */


@WebFilter(servletNames = {"DashboardClient","DashboardPublication","DashboardAnnonce","DashboardEmploye","DashboardReservation","DashboardClient","Dashboard"},
urlPatterns= {"/dashboard","/dash-publication","/dash-client","/dash-reservations","/dash-employe","/dash-reservations","/dash-annonce","/dash-commentaires"})
public class DashboardFilter implements Filter {
	public static final String ATT_EMPLOYE = "employe";
	private static final String VUE_LOGIN = "/WEB-INF/Dashboard/login.jsp";

    /**
     * Default constructor. 
     */
    public DashboardFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		HttpSession session = request.getSession();

		
		if(session.getAttribute(ATT_EMPLOYE)==null) {
			request.getRequestDispatcher( VUE_LOGIN ).forward( request, response );

		}
		
		// pass the request along the filter chain
		chain.doFilter(req, res);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
