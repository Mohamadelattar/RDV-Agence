package com.RDV.Dao;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.RDV.beans.Employe;
import com.RDV.util.HibernateUtil;

@SuppressWarnings("rawtypes")
public class PortfolioDao extends DaoFactory {

	@SuppressWarnings("unchecked")
	public PortfolioDao(Class persistentClass) {
		super(persistentClass);
		// TODO Auto-generated constructor stub
	}
	
	public Employe isAdmin() {
		Transaction transaction = null;
        Employe employe = null;
        Query query;
         
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            employe =  (Employe) session.createQuery("FROM Employe E WHERE E.isAdmin = :isAdmin").setParameter("isAdmin", 1).uniqueResult();
            
             
            
            
            }
            
         
        return employe;
	}

}
