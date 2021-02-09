package com.RDV.servlets;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.RDV.Dao.ClientDao;
import com.RDV.Dao.ReservationDAO;
import com.RDV.beans.Client;
import com.RDV.beans.Reservation;
import com.RDV.metier.ValidationReservation;
import com.RDV.util.Mailer;
 

/**
 * Servlet implementation class ReservationServlet
 */
@WebServlet("/dash-reservations")
public class DashboardReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final String VUE              = "/WEB-INF/Dashboard/Reservation/reservation.jsp";
    private static final String VUE_1            = "/WEB-INF/Dashboard/Reservation/listerReservations.jsp";
    private static final String VUE_2            = "/WEB-INF/Dashboard/Reservation/listerReservationsConfirmees.jsp";
    private static final String VUE_3            = "/WEB-INF/Dashboard/Reservation/listerReservationsIgnorees.jsp";
    private static final String VUE_4            = "/WEB-INF/Dashboard/Reservation/testReservation.jsp";
    private static final String RESERVATIONS     = "reservations";
    private static final String VALIDATION     = "validation";
    private static final String RESERVATION     = "reservation";
    private static final String RESERVATION_BTNS     = "reservationBtns";
    
    private static final String RESERVATIONS_TIME     = "reservationsTime";
    private static final String STATUT_CONFIRM     = "confirmée";
    private static final String PATH = "dash-reservations";
    
    private ReservationDAO reservationDao;
       
    
    public DashboardReservation() {
        super();
        // TODO Auto-generated constructor stub
    }

    public void init() {
       reservationDao = new ReservationDAO(Reservation.class);
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter( "do" );
        String reservation = request.getParameter( "conf" );
        if ( action == null ) {
        	try {
				listConfirmReservationstoCalendar(request,response);
			} catch (ServletException | IOException | ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        } else {
        	
            switch ( action ) {
            
            case "lister":
            	
            	if( reservation != null ) {
            		switch(reservation) {
		            	case "oui":
		            		try {
								listReservationsConfirmees(request,response);
							} catch (ServletException | IOException | ParseException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
		            	break;
		            	
		            	case "non":
		            		try {
								listReservationsIgnorees(request,response);
							} catch (ServletException | IOException | ParseException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
		            	break;
	            	}
            	}
            	else {
            		try {
    					listReservations(request,response);
    				} catch (ServletException | IOException | ParseException e) {
    					// TODO Auto-generated catch block
    					e.printStackTrace();
    				}
            	}
            break;
                
            case "confirmer":
            	try {
					confirmReservation(request,response,STATUT_CONFIRM);
				} catch (ServletException | IOException | ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
            break;
            
            case "supprimer" :
				try {
					deleteReservation(request,response);
				} catch (ServletException | IOException | ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			break;
			
            case "tester" :
            	try {
					testReservation(request,response);
				} catch (ServletException | IOException | ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			break;
                
            }
        }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter( "action" );

        System.out.println( action );

        switch ( action ) {

        case "ajouter":
            insertReservation( request, response );
            break;
        }
	}
	
	 @SuppressWarnings("unchecked")
		private void insertReservation( HttpServletRequest request, HttpServletResponse response )
	            throws ServletException, IOException {

	        ValidationReservation validation = new ValidationReservation();

	        Reservation reservation = validation.creerReservation(request,"confirmée");

	        if ( validation.getErreurs().isEmpty() ) {
	        	System.out.println("No Errors");
	            reservationDao.save(reservation);
	            response.sendRedirect( request.getContextPath() + "/" + PATH );
	            return;
	        }
	        System.out.println( reservation.getCinClient() + " " + reservation.getStatutReservation() );

	        request.setAttribute( VALIDATION, validation );
	        request.setAttribute( RESERVATION, reservation );

	        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	    }
	
	private void listReservations( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException, ParseException {

        ArrayList<Reservation> reservations = (ArrayList<Reservation>) reservationDao.getAllReservations("FROM Reservation");

        request.setAttribute( RESERVATIONS, reservations );

        this.getServletContext().getRequestDispatcher( VUE_1 ).forward( request, response );
    }
	
	private void listReservationsConfirmees( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException, ParseException {
		
		System.out.println("confirmeeeees");

        ArrayList<Reservation> reservations = (ArrayList<Reservation>) reservationDao.getReservationWithType("confirmée");

        request.setAttribute( RESERVATIONS, reservations );

        this.getServletContext().getRequestDispatcher( VUE_2 ).forward( request, response );
    }
	
	private void listConfirmReservationstoCalendar( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException, ParseException {
		
		ValidationReservation validation = new ValidationReservation();
		
		 List<Map<String,String>> reservationsTime = new ArrayList<Map<String,String>>();
		
		System.out.println("confirmeeeees");

        ArrayList<Reservation> reservations = (ArrayList<Reservation>) reservationDao.getReservationWithType("confirmée");
        
        for(Reservation reservation : reservations) {
        	Map<String,String> SingleReservation=new HashMap<String,String>();
        	SingleReservation.put("title","Amiri MED");
        	SingleReservation.put("start",validation.confirmedReservationToJavaScript(reservation));
        	SingleReservation.put("end",validation.endDateReservation(reservation));
        	reservationsTime.add(SingleReservation);
        }
        
        request.setAttribute( RESERVATIONS_TIME, reservationsTime);
        request.setAttribute( RESERVATIONS, reservations );

        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }
	
	private void listReservationsIgnorees( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException, ParseException {

        ArrayList<Reservation> reservations = (ArrayList<Reservation>) reservationDao.getReservationWithType("ignorée");

        request.setAttribute( RESERVATIONS, reservations );

        this.getServletContext().getRequestDispatcher( VUE_3 ).forward( request, response );
    }
	
	@SuppressWarnings({ "unchecked", "unused" })
	private void confirmReservation( HttpServletRequest request, HttpServletResponse response ,String statut)
            throws ServletException, IOException, ParseException {
		int id = Integer.parseInt( request.getParameter( "id" ) );
        Reservation reservation = (Reservation) reservationDao.getById( id );
        reservation.setStatutReservation(statut);
        response.setContentType("text/html");  
        ClientDao clientDao = new ClientDao(Client.class);
        Client client = (Client) clientDao.getById(reservation.getIdClient());
        String nom = client.getNom();
        String prenom = client.getPrenom();
        String dateReservation = reservation.getDateReservation();
        String heureReservation = reservation.getHeureReservation();
        String to = client.getEmail();
        String subject="Reservation Validée";  
       String msg="Bonjour Mr/Mme" +nom +" "+prenom+"\n"+"Nous vous informe que votre réservation pour la date :"+dateReservation+" à l'heure:"+heureReservation+"\n"+"est accepté par notre agence soyez biznvenu chez nous  "; 
              
        Mailer.send(to, subject, msg);  
 
        reservationDao.update( reservation );
        response.sendRedirect( request.getContextPath() + "/" + PATH + "?do=lister" );
	}
	
	private void deleteReservation( HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException{
		int id = Integer.parseInt( request.getParameter( "id" ) );
		reservationDao.delete(id);
		response.sendRedirect( request.getContextPath() + "/" + PATH + "?do=lister" );
	}
	
	private void testReservation( HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException{
		
		ArrayList<Reservation> reservations = (ArrayList<Reservation>) reservationDao.getReservationWithType("confirmée");
		
		List<Map<String,String>> reservationsBtns = new ArrayList<Map<String,String>>();
		
		for(Reservation reservation : reservations) {
        	Map<String,String> btnReservation=new HashMap<String,String>();
        	btnReservation.put("heure",reservation.getHeureReservation());
        	btnReservation.put("date",reservation.getDateReservation());
        	btnReservation.put("statut","non valable");
        	reservationsBtns.add(btnReservation);
        }
		
		request.setAttribute(RESERVATION_BTNS, reservationsBtns);
        request.setAttribute( RESERVATIONS, reservations );

        this.getServletContext().getRequestDispatcher( VUE_4 ).forward( request, response );
	}
	
}
