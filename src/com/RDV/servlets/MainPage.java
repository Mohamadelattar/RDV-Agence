package com.RDV.servlets;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.RDV.Dao.ClientDao;
import com.RDV.Dao.PublicationDao;
import com.RDV.Dao.CommentaireDao;
import com.RDV.Dao.ReservationDAO;
import com.RDV.beans.Client;
import com.RDV.beans.Publication;
import com.RDV.beans.Commentaires;
import com.RDV.beans.Reservation;
import com.RDV.metier.ValidationReservation;
import com.RDV.util.Mailer;

/**
 * Servlet implementation class MainPage
 */
@WebServlet("/index")
public class MainPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static final String VUE_MAIN="/WEB-INF/Front/mainpage.jsp";
    private PublicationDao publicationDao;
    private static final String ATT_PUBLICATIONS = "publications";
    
    
    private static final String VUE_LOGIN = "/WEB-INF/Front/mainpage.jsp";
	public static final String ATT_CLIENT = "client";
	public static final String ATT_MAINPAGE = "index";
    public static final String ATT_FORM   = "form";
    public static final String ATT_SESSION_USER = "sessionClient";
    private static final String ATT_COMMENTAIRES = "commentaires";
    private static final String ATT_CLIENTS = "clients";
    private static final String CHAMP_EMAIL     = "email";
    private static final String CHAMP_PASSWORD   = "password";
    private static final String CLIENT_RESERVATIONS   = "clientReservations";
    private static final String CHAMP_ERREUR ="erreur";
    private static final String VUE_CLIENT              = "/WEB-INF/Front/client.jsp";
    private static final String  CLIENT_RESERVATION              = "/WEB-INF/Front/effectuerReservation.jsp";
    
    private static final String RESERVATIONS     = "reservations";
    private static final String VALIDATION     = "validation";
    private static final String RESERVATION     = "reservation";
    private static final String RESERVATION_BTNS     = "reservationBtns";
    private static final String RESERVATION_DONE     = "index?action=effectuerReservation";
    
    private static final String RESERVATIONS_TIME     = "reservationsTime";
    private static final String STATUT_CONFIRM     = "confirm�e";
    
    private ClientDao          clientDao;
    private ReservationDAO 	   reservationDao; 
    private CommentaireDao     commentaireDao;

    /**
     * @see HttpServlet#HttpServlet()
     */
    
    public void init() {
    	publicationDao = new PublicationDao(Publication.class);
    	clientDao = new ClientDao(Client.class);
    	reservationDao = new ReservationDAO(Reservation.class);
    	commentaireDao = new CommentaireDao();

    	
    }
    public MainPage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		String op = request.getParameter("operation");  
		
		if(action == null || action.length() == 0) {
			HttpSession session = request.getSession();
			// TODO Auto-generated method stub
			if ((op == null)) {
				// pourquoi /
				ArrayList < Publication > publications = (ArrayList<Publication>) publicationDao.publications(1);
				session.setAttribute(ATT_PUBLICATIONS, publications);
				ArrayList<Commentaires> commentaires = (ArrayList<Commentaires>) commentaireDao.getAllCommentaires();
				request.setAttribute(ATT_COMMENTAIRES, commentaires);
				ArrayList<Client> clients = clientDao.getAllClient();
				request.setAttribute( ATT_CLIENTS , clients);
			this.getServletContext().getRequestDispatcher( VUE_MAIN ).forward( request, response );
			}
			if("logout".equalsIgnoreCase(op)) {
		      session.invalidate();		      
		      response.sendRedirect(ATT_MAINPAGE);
		    }
		}else {
			switch(action) {
				case "effectuerReservation":
					try {
						effectuerReservation(request,response);
					} catch (ServletException | IOException | ParseException e) {
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String action = request.getParameter("action");
		
		System.out.println(action);
		
		if(action == null || action.length() == 0) {
			try {
	            authenticate(request, response);
	        } catch (Exception e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
		}else {
			switch(action) {
				case "effectuerReservation":
				try {
					insertReservation(request,response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				break;
			}
		}
	}
	
	private void authenticate(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
        String email = request.getParameter(CHAMP_EMAIL);
        String password = request.getParameter(CHAMP_PASSWORD);
        
        Client client = clientDao.validate(email, password);
        System.out.println("Client 1");
        if (client != null) {
        	System.out.println("Client 2");
        	session.setAttribute(ATT_CLIENT, client);
        	session.setAttribute("idClient", client.getId());
        	 
        	response.sendRedirect( request.getContextPath() + "/" + ATT_MAINPAGE );
        	
        	 
        } else {
        	String erreur = "Impossible de se connecter, Verifiez vos donn�es";
        	
        	request.setAttribute(CHAMP_ERREUR, erreur);
        	 RequestDispatcher dispatcher = request.getRequestDispatcher(VUE_LOGIN);
	         dispatcher.forward(request, response);
        }
    }
	
	private void effectuerReservation( HttpServletRequest request, HttpServletResponse response)
            throws Exception{
		
		ArrayList<Reservation> reservations = (ArrayList<Reservation>) reservationDao.getReservationWithType("confirm�e");
		
		List<Map<String,String>> reservationsBtns = new ArrayList<Map<String,String>>();
		
		for(Reservation reservation : reservations) {
        	Map<String,String> btnReservation=new HashMap<String,String>();
        	btnReservation.put("heure",reservation.getHeureReservation());
        	btnReservation.put("date",reservation.getDateReservation());
        	btnReservation.put("statut","non valable");
        	reservationsBtns.add(btnReservation);
        }
		
		List<Reservation> clientReservations = getReservationsByClient(request);
    	request.setAttribute(CLIENT_RESERVATIONS, clientReservations);
		
		request.setAttribute(RESERVATION_BTNS, reservationsBtns);
        request.setAttribute( RESERVATIONS, reservations );

        this.getServletContext().getRequestDispatcher( CLIENT_RESERVATION ).forward( request, response );
	}
	
	@SuppressWarnings("unchecked")
	private void insertReservation( HttpServletRequest request, HttpServletResponse response )
            throws Exception {

        ValidationReservation validation = new ValidationReservation();

        Reservation reservation = validation.takeReservation(request,"ignor�e");
        
        response.setContentType("text/html");  
        
        String cin = reservation.getCinClient();
        String dateReservation = reservation.getDateReservation();
        String heureReservation = reservation.getHeureReservation();
        String statut = reservation.getStatutReservation();
        String to="mohamadelattar99@gmail.com";  
        String subject="Nouvelle reservation";  
        String msg="Vous devez consultez votre dashboard pour confirmer cette r�servation"+"\n"+" Cin :"+cin+"\n"+"Date de r�servation : "+dateReservation+"\n"+"Heure de r�servation : "+heureReservation+"\n"+"Statut : "+statut; 
              
        Mailer.send(to, subject, msg);  
 

        if ( validation.getErreurs().isEmpty() ) {
        	System.out.println("No Errors");
            reservationDao.save(reservation);
            request.setAttribute( VALIDATION, validation );
            request.setAttribute( RESERVATION, reservation );
            this.getServletContext().getRequestDispatcher( CLIENT_RESERVATION ).forward( request, response );
            return;
        }
        System.out.println( reservation.getCinClient() + " " + reservation.getStatutReservation() );

        request.setAttribute( VALIDATION, validation );
        request.setAttribute( RESERVATION, reservation );

        this.getServletContext().getRequestDispatcher( CLIENT_RESERVATION ).forward( request, response );
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
        		List<Reservation> clientReservations = reservationDao.getReservationsByIdClient(id,"confirm�e");
        		return clientReservations;
    		}
    	}else {
    		return null;
    	}
	}

}
