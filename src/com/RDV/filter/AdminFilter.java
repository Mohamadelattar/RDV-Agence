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

import com.RDV.beans.Employe;

/**
 * Servlet Filter implementation class AdminFilter
 */
@WebFilter(servletNames = {"DashboardEmploye"},
urlPatterns= {"/dash-employe"})
public class AdminFilter implements Filter {
	public static final String ATT_EMPLOYE = "employe";
	private static final String VUE_DASHBOARD = "/WEB-INF/Dashboard/login.jsp";

    /**
     * Default constructor. 
     */
    public AdminFilter() {
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

		
		if(session.getAttribute(ATT_EMPLOYE)!=null) {
			Employe employe = (Employe) session.getAttribute(ATT_EMPLOYE);
			if(employe.getIsAdmin()==0) {
				request.getRequestDispatcher( VUE_DASHBOARD ).forward( request, response );
			}
			

 
		}
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
