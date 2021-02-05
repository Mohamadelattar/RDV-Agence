package com.RDV.metier;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.RDV.Dao.EmployeDAO;
import com.RDV.Dao.ReservationDAO;
import com.RDV.beans.Reservation;

public class FormulaireReservation {
	
	private static final String CHAMP_ID            = "id";
    private static final String CHAMP_CIN           = "cin";
    private static final String CHAMP_DATE           = "date";
    private static final String CHAMP_HEURE        = "heure";
    private static final String CHAMP_ID_CLIENT       = "idClient";
    private static final String CHAMP_STATUT        = "statut";
   


    private String              resultat;
    private Map<String, String> erreurs             = new HashMap<String, String>();
    private ReservationDAO          reservationDao;

    public String getResultat() {
        return resultat;
    }

    public Map<String, String> getErreurs() {
        return erreurs;
    }
    
    public Reservation validerReservation( HttpServletRequest request ) throws IOException, ServletException {
    	Reservation reservation = new Reservation();
    	
    	reservation.setCinClient("I897878");
    	reservation.setDateReservation("2021-01-31");
    	reservation.setHeureReservation("12:13");
    	reservation.setIdClient(1);
    	reservation.setStatutReservation("confirmée");
    	
    	return reservation;
    }
}
