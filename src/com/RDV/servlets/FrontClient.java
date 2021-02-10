package com.RDV.servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.internal.build.AllowSysOut;

import com.RDV.Dao.ClientDao;
import com.RDV.Dao.ReservationDAO;
import com.RDV.beans.Client;
import com.RDV.beans.Reservation;
import com.RDV.metier.FormulaireClient;

@MultipartConfig
public class FrontClient extends HttpServlet {
    private static final long   serialVersionUID = 1L;

    private static final String VUE              = "/WEB-INF/Front/client.jsp";
    private static final String VUE_1            = "/WEB-INF/Front/client.jsp";
    private static final String VUE_2            = "/WEB-INF/Front/modifierPhotoProfil.jsp";
    private static final String FORMULAIRE       = "formulaire";
    public static final String ATT_CLIENT = "client";
    public static final String CLIENT_RESERVATION = "clientReservations";
    
    private static final String CLIENT          = "client";
    private static final String CLIENTS         = "clients";

    private ClientDao          clientDao;
    private ReservationDAO 	   reservationDao;

    public FrontClient() {
        super();
        // TODO Auto-generated constructor stub
    }

    public void init() {
        clientDao = new ClientDao(Client.class);
    	reservationDao = new ReservationDAO(Reservation.class);
        
    }

    protected void doGet( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {
        String action = request.getParameter( "do" );
        String todayDate = getDate();
        request.setAttribute( "todayDate", todayDate );
        if ( action == null ) {

            try {
            	listClients( request, response);
            } catch ( ServletException e ) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch ( IOException e ) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

        } else {
            switch ( action ) {
            case "modifier":
                try {
					listClient( request, response, VUE_1 );
				} catch (Exception e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
                break;
            case "modifierPhotoProfil":
                try {
					listClient( request, response, VUE_2 );
				} catch (Exception e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
                break;
            default:
                try {
                	listClients( request, response);
                } catch ( ServletException e ) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                } catch ( IOException e ) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                } catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
                break;
            }
        }
    }

    protected void doPost( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {

        String action = request.getParameter( "action" );

        // String action = request.getRequestURL().substring(
        // request.getRequestURL().length() - field.length() - 1,
        // request.getRequestURL().length() );

        System.out.println( action );

        switch ( action ) {

        case "modifier":
            updateClient( request, response );
            break;
        case "modifierPhotoProfil":
            updatePhotoProfil( request, response );
            break;
        }
       

    }

    private String getDate() {
        Date aujourdhui = new Date();

        SimpleDateFormat formater = new SimpleDateFormat( "dd-MM-yyyy" );
        System.out.println( formater.format( aujourdhui ) );
        return formater.format( aujourdhui );
    }


    private void updateClient( HttpServletRequest request, HttpServletResponse response )
            throws IOException, ServletException {

        FormulaireClient formulaire = new FormulaireClient();

        Client client = formulaire.modifierClient( request );
        

        System.out.println( client.getNom() + " " + client.getPhotoProfile() );

        System.out.println( client.getPassword() + " " + client.getOldPassword() );

        if ( formulaire.getErreurs().isEmpty() ) {
            clientDao.updateClient( client );
            System.out.println( "test" );
        }

        request.setAttribute( FORMULAIRE, formulaire );
        request.setAttribute( CLIENT, client );

        this.getServletContext().getRequestDispatcher( VUE_1 ).forward( request, response );
    }

    private void updatePhotoProfil( HttpServletRequest request, HttpServletResponse response )
            throws IOException, ServletException {

        FormulaireClient formulaire = new FormulaireClient();

        Client client = formulaire.modifierPhotoProfil( request );

        System.out.println( client.getNom() + " " + client.getPhotoProfile() );

        System.out.println( client.getPassword() + " " + client.getOldPassword() );

        if ( formulaire.getErreurs().isEmpty() ) {
            clientDao.updateClient( client );
            System.out.println( "test" );
        }

        request.setAttribute( FORMULAIRE, formulaire );
        request.setAttribute( CLIENT, client );
        this.getServletContext().getRequestDispatcher( VUE_1 ).forward( request, response );
    }

    private void listClients( HttpServletRequest request, HttpServletResponse response )
            throws Exception {
    	List<Reservation> clientReservations = getReservationsByClient(request);
    	request.setAttribute(CLIENT_RESERVATION, clientReservations);
    	
		RequestDispatcher dispatcher = request.getRequestDispatcher(VUE);
		
		dispatcher.forward(request, response);
    }
    private void listClient( HttpServletRequest request, HttpServletResponse response, String pageJsp )
            throws Exception {
        int id = Integer.parseInt( request.getParameter( "id" ) );
        Client client = clientDao.getClient( id );
        
        request.setAttribute( CLIENT, client );

        this.getServletContext().getRequestDispatcher( pageJsp ).forward( request, response );
    }
    
    private List<Reservation> getReservationsByClient( HttpServletRequest request)
            throws Exception {
    	HttpSession session = request.getSession();
    	Client client = null;
    	if( session != null) {
    		client = (Client)session.getAttribute(ATT_CLIENT);
    		if(client == null) {
    			return null;
    		}else {
    			int id = client.getId();
        		List<Reservation> clientReservations = reservationDao.getReservationsByIdClient(id,"confirmée");
        		return clientReservations;
    		}
    	}else {
    		return null;
    	}
	}
}
