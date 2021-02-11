package com.RDV.Dao;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.RDV.beans.Reservation;
import com.RDV.util.HibernateUtil;

@SuppressWarnings("rawtypes")
public class ReservationDAO extends DaoFactory{
	
	@SuppressWarnings("unchecked")
	public ReservationDAO(Class persistentClass) {
		super(persistentClass);
		// TODO Auto-generated constructor stub
	}
	
	@SuppressWarnings("unchecked")
	public List<Reservation> getAllReservations(String query) {
		// TODO Auto-generated method stub
		Transaction transaction = null;
        ArrayList < Reservation > items = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object
            System.out.println(query);
            
            System.out.println("Ana hona");
            items = (ArrayList<Reservation>) session.createQuery(query).getResultList();
            System.out.println("Ana hona2");
            
            // commit transaction
            transaction.commit();
            session.close();
        } catch (Exception e) {
        	 transaction.rollback();
            if (transaction != null) {
                
            }
            e.printStackTrace();
        }

        return items;
	}
	
	public List<Reservation> getReservationWithType(String statut){
		// TODO Auto-generated method stub
		List<Reservation> items = null;
		
		items = getAllReservations("FROM Reservation Where statut='"+statut+"'");
        return items;
	}
	
	public List<Reservation> getReservationsByIdClient(int id, String statut){
		// TODO Auto-generated method stub
		List<Reservation> items = null;
		
		items = getAllReservations("FROM Reservation Where idClient='"+id+"' and statut='"+statut+"'");
        return items;
	}
	
}
