package com.RDV.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Date;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.RDV.Dao.CommentaireDao;



/**
 * Servlet implementation class Commentaires
 */
@WebServlet("/dash-commentaires")
public class DashboardCommentaires extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE              = "/WEB-INF/Dashboard/Client/commentaires.jsp";
	private static final String LISTCOMMENTAIRES    = "listCommentaires";
	private  CommentaireDao commentaireDao;
	
	 public DashboardCommentaires() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
	 public void init() {
			commentaireDao = new CommentaireDao();
		}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stu
		String action = request.getParameter( "do" );
        String todayDate = getDate();
        request.setAttribute( "todayDate", todayDate );
        if ( action == null ) {

            try {
				listCommentaires( request, response );
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

        } else {
            switch ( action ) {
            case "delete":
                try {
					deleteCommentaires( request, response );
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
                break;
            default:
                try {
					listCommentaires( request, response );
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (ServletException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
                break;
            }
        }
	}
	
	private void listCommentaires(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<com.RDV.beans.Commentaires> listCommentaires = commentaireDao.getAllCommentaires();
		request.setAttribute(LISTCOMMENTAIRES, listCommentaires);
		RequestDispatcher dispatcher = request.getRequestDispatcher(VUE);
		dispatcher.forward(request, response);
	}

	private void deleteCommentaires(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException, ServletException {
		int id = Integer.parseInt(request.getParameter("id"));
		commentaireDao.deleteCommentaires(id);
		response.sendRedirect("dash-commentaires");
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private String getDate() {
        Date aujourdhui = new Date();

        SimpleDateFormat formater = new SimpleDateFormat( "dd-MM-yyyy" );
        System.out.println( formater.format( aujourdhui ) );
        return formater.format( aujourdhui );
    }

}
