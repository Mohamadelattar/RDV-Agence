package com.RDV.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Date;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.RDV.Dao.ClientDao;
import com.RDV.beans.Client;




/**
 * Servlet implementation class Client
 */

public class DashboardClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE              = "/WEB-INF/Dashboard/Client/client.jsp";
	private static final String LISTCLIENT    = "listClient";
	
	private  ClientDao clientDao;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public DashboardClient() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void init() {
		clientDao = new ClientDao(Client.class);
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter( "do" );
        String todayDate = getDate();
        request.setAttribute( "todayDate", todayDate );
        if ( action == null ) {

            try {
				listClient( request, response );
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
					deleteClient( request, response );
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
					listClient( request, response );
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
	
	private void listClient(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<com.RDV.beans.Client> listClient = clientDao.getAllClient();
		
		request.setAttribute( LISTCLIENT , listClient);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(VUE);
		
		dispatcher.forward(request, response);
		
	}

	private void deleteClient(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt( request.getParameter( "id" ) );
		clientDao.delete(id);
		response.sendRedirect("Client");
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
