package com.RDV.metier;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.RDV.Dao.ClientDao;
import com.RDV.beans.Client;
import com.RDV.beans.Reservation;

public class ValidationReservation {
    private static final String CHAMP_CIN = "cin";
    private static final String CHAMP_DATE = "date";
    private static final String CHAMP_HEURE = "heure";
    
    private String resultat;
    private Map<String, String> erreurs = new HashMap<String, String>();

    public Reservation creerReservation( HttpServletRequest request ,String statut) throws IOException, ServletException {
    	System.out.println("Etape 1");
    	Reservation reservation = new Reservation();
    	String cin = request.getParameter(CHAMP_CIN);
    	
    	DateTimeFormatter formatterDate = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    	String datee = request.getParameter(CHAMP_DATE);
    	LocalDate date = LocalDate.parse(datee, formatterDate);
    	datee = date.toString();
    	
    	DateTimeFormatter formatterHeure = DateTimeFormatter.ofPattern("HH:mm");
    	String heuree = request.getParameter(CHAMP_HEURE);
    	LocalTime heure = LocalTime.parse(heuree, formatterHeure);
    	heuree = heure.toString();
    	
    	System.out.println("Request bslama "+heuree+"      "+datee);
    	
    	try {
    		validationCin(cin);
    	}catch (Exception e) {
    		erreurs.put(CHAMP_CIN, e.getMessage());
	    }
    	reservation.setCinClient(cin);
    	
    	ClientDao clientdao = new ClientDao(Client.class);
    	Client client = clientdao.getClient(cin);
    	
    	try {
    		validationDateHeure(date, heure);
    	}catch (Exception e) {
    		erreurs.put(CHAMP_DATE, e.getMessage());
	    }
    	reservation.setDateReservation(datee);
    	reservation.setHeureReservation(heuree);
    	
    	reservation.setStatutReservation(statut);
    	reservation.setIdClient(client.getId());
    	
    	System.out.println("Salina L validation");
    	
    	return reservation;
    }
    
    public Reservation takeReservation( HttpServletRequest request ,String statut) throws Exception {
    	System.out.println("Etape 1");
    	Reservation reservation = new Reservation();
    	
    	String cin = request.getParameter(CHAMP_CIN);
    	System.out.println(cin);
    	String date = request.getParameter(CHAMP_DATE);
    	String heure = request.getParameter(CHAMP_HEURE);
    	
    	System.out.println("Request bslama "+heure+"      "+date);
    	
    	try {
    		cinExists(cin);
    	}catch (Exception e) {
    		erreurs.put(CHAMP_CIN, e.getMessage());
	    }
    	reservation.setCinClient(cin);
    	
    	ClientDao clientdao = new ClientDao(Client.class);
    	
    	Client client = clientdao.getClient(cin);
    	 
    	reservation.setDateReservation(date);
    	
    	reservation.setHeureReservation(heure);
    	
    	reservation.setStatutReservation(statut);
    	
    	reservation.setIdClient(client.getId());
    	
    	System.out.println("Salina L validation");
    	
    	return reservation;
    }

    public void validationCin(String cin) throws Exception
	{
		if(cin.length()!=7) {
			throw new Exception("Merci de saisir un CIN qui contient 7 caracteres");
		}
	}
    
    public void validationIdClient(int id) throws Exception{
    	if(id == 0 ) {
    		throw new Exception ("Ce client n'existe Pas dans notre base de donnes !");
    	}
    }
    
    public void validationDateHeure(LocalDate date, LocalTime heure) throws Exception
	{
		 
	}
    
    public Map<String, String> getErreurs() {
        return erreurs;
    }

    public String getResultat() {
        return resultat;
    }
    
    private LocalDate StringToDate(String date) {
    	 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("d/MM/yyyy");

    	  //convert String to LocalDate
    	  LocalDate localDate = LocalDate.parse(date, formatter);
    	  
    	  return localDate;
    }
    
    private java.sql.Time StringtoTime(String time) {
    	DateFormat formatter = new SimpleDateFormat("HH:mm");
    	java.sql.Time timeValue = null;
		try {
			timeValue = new java.sql.Time(formatter.parse(time).getTime());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return timeValue;
    }
    
    public String endDateReservation(Reservation reservation) {
    	String date = reservation.getDateReservation();
    	String heure = reservation.getHeureReservation();
		SimpleDateFormat df = new SimpleDateFormat("HH:mm");
		Date d=null;
		try {
			d = df.parse(heure);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		Calendar cal = Calendar.getInstance();
		cal.setTime(d);
		cal.add(Calendar.MINUTE, 20);
		String newTime = df.format(cal.getTime());
    	
    	String result = date + "T" + newTime+":00";
    	
    	return result;
    }
    
    public String confirmedReservationToJavaScript(Reservation reservation) {
    	String date = reservation.getDateReservation();
    	String heure = reservation.getHeureReservation();
    	
    	String result = date + "T" + heure+":00";
    	
    	return result;
    }
    
    public boolean cinExists(String cin) throws Exception{
    	ClientDao clientdao = new ClientDao(ClientDao.class);
    	if(!clientdao.existsClient(cin)) {
    		throw new Exception("Aucun client n'existe dans notre Base de donnes avec cet Cin ! ");
    	}else {
    		return true;
    	}
    }
}
