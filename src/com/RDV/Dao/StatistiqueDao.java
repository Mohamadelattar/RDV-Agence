package com.RDV.Dao;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.RDV.beans.Employe;
import com.RDV.util.HibernateUtil;

public class StatistiqueDao {
	
    @SuppressWarnings({ "unused", "unchecked" })
	public ArrayList<Integer> employe(){
    	System.out.println("Ana hnaaaa Statistique 1");
        Transaction transaction = null;
      
        
      
        int conge=0;
        int work =0;
        
        try(Session session = HibernateUtil.getSessionFactory().openSession()){
        	transaction = session.beginTransaction();
        	EmployeDAO  employeDao = new EmployeDAO(Employe.class);
			ArrayList<Employe> employes = (ArrayList<Employe>) employeDao.getAll("from Employe");
			for ( Employe employe : employes ) {
	            if(employe.getIsConge()==1) {
	            	conge++;
	            }
	        }
			
			work = employes.size() - conge;
        
        }
        ArrayList<Integer> isConge = new ArrayList<Integer>() ;
        isConge.add(work);
        isConge.add(conge);
 
    	return isConge;
    }
    
    @SuppressWarnings({ "unused"})
	public ArrayList<Integer> publication(){
    	
        Transaction transaction = null;
        Query query;
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        
        System.out.println("year"+calendar.get(Calendar.YEAR));
        
        int year = calendar.get(Calendar.YEAR);
        
        BigInteger janvier;
        BigInteger fevrier;
        BigInteger mars;
        BigInteger avril;
        BigInteger mai;
        BigInteger juin;
        BigInteger juillet;
        BigInteger aout;
        BigInteger septembre;
        BigInteger october;
        BigInteger november;
        BigInteger decembre;
        
        
        try(Session session = HibernateUtil.getSessionFactory().openSession()){
        	transaction = session.beginTransaction();
        	/*
        	janvier = (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `client` WHERE `date`>'"+year+"-01-01 00:00:00' AND `date`<'"+year+"-01-31 23:59:00'").uniqueResult();
        	fevrier = (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `client` WHERE `date`>'"+year+"-02-01 00:00:00' AND `date`<'"+year+"-02-28 23:59:00'").uniqueResult();
       	 mars    = (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `client` WHERE `date`>'"+year+"-03-01 00:00:00' AND `date`<'"+year+"-03-31 23:59:00'").uniqueResult();
       	 avril   = (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `client` WHERE `date`>'"+year+"-04-01 00:00:00' AND `date`<'"+year+"-04-30 23:59:00'").uniqueResult();
       	 mai     = (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `client` WHERE `date`>'"+year+"-05-01 00:00:00' AND `date`<'"+year+"-05-31 23:59:00'").uniqueResult(); 
       	 juin    = (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `client` WHERE `date`>'"+year+"-06-01 00:00:00' AND `date`<'"+year+"-06-30 23:59:00'").uniqueResult();
       	 juillet = (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `client` WHERE `date`>'"+year+"-07-01 00:00:00' AND `date`<'"+year+"-07-31 23:59:00'").uniqueResult();
       	 aout    = (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `client` WHERE `date`>'"+year+"-08-01 00:00:00' AND `date`<'"+year+"-08-31 23:59:00'").uniqueResult();
       	 septembre = (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `client` WHERE `date`>'"+year+"-09-01 00:00:00' AND `date`<'"+year+"-09-30 23:59:00'").uniqueResult();
       	 october = (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `client` WHERE `date`>'"+year+"-10-01 00:00:00' AND `date`<'"+year+"-10-31 23:59:00'").uniqueResult();
       	 november= (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `client` WHERE `date`>'"+year+"-11-01 00:00:00' AND `date`<'"+year+"-11-30 23:59:00'").uniqueResult();
       	 decembre= (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `client` WHERE `date`>'"+year+"-12-01 00:00:00' AND `date`<'"+year+"-12-31 23:59:00'").uniqueResult();
       */
       	 
        	
        	
        }
        ArrayList<Integer> result = new ArrayList<Integer>();
        result.add(2);
        result.add(6);
        result.add(11);
        result.add(3);
        result.add(4);
        result.add(1);
        result.add(8);
        result.add(9);
        result.add(10);
        result.add(3);
        result.add(9);
        result.add(5);
        
 
    	return result;
    }
    
    @SuppressWarnings({ "unused"})
	public ArrayList<Integer> client(){
    	 
        Transaction transaction = null;
        Query query;
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        
        System.out.println("year"+calendar.get(Calendar.YEAR));
        
        int year = calendar.get(Calendar.YEAR);
        
        BigInteger janvier;
        BigInteger fevrier;
        BigInteger mars;
        BigInteger avril;
        BigInteger mai;
        BigInteger juin;
        BigInteger juillet;
        BigInteger aout;
        BigInteger septembre;
        BigInteger october;
        BigInteger november;
        BigInteger decembre;
        
        
        try(Session session = HibernateUtil.getSessionFactory().openSession()){
        	transaction = session.beginTransaction();
        	/*
        	 janvier = (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `publication` WHERE `date_debut`>'"+year+"-01-01 00:00:00' AND `date_debut`<'"+year+"-01-31 23:59:00'").uniqueResult();
        	 fevrier = (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `publication` WHERE `date_debut`>'"+year+"-02-01 00:00:00' AND `date_debut`<'"+year+"-02-28 23:59:00'").uniqueResult();
        	 mars    = (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `publication` WHERE `date_debut`>'"+year+"-03-01 00:00:00' AND `date_debut`<'"+year+"-03-31 23:59:00'").uniqueResult();
        	 avril   = (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `publication` WHERE `date_debut`>'"+year+"-04-01 00:00:00' AND `date_debut`<'"+year+"-04-30 23:59:00'").uniqueResult();
        	 mai     = (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `publication` WHERE `date_debut`>'"+year+"-05-01 00:00:00' AND `date_debut`<'"+year+"-05-31 23:59:00'").uniqueResult(); 
        	 juin    = (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `publication` WHERE `date_debut`>'"+year+"-06-01 00:00:00' AND `date_debut`<'"+year+"-06-30 23:59:00'").uniqueResult();
        	 juillet = (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `publication` WHERE `date_debut`>'"+year+"-07-01 00:00:00' AND `date_debut`<'"+year+"-07-31 23:59:00'").uniqueResult();
        	 aout    = (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `publication` WHERE `date_debut`>'"+year+"-08-01 00:00:00' AND `date_debut`<'"+year+"-08-31 23:59:00'").uniqueResult();
        	 septembre = (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `publication` WHERE `date_debut`>'"+year+"-09-01 00:00:00' AND `date_debut`<'"+year+"-09-30 23:59:00'").uniqueResult();
        	 october = (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `publication` WHERE `date_debut`>'"+year+"-10-01 00:00:00' AND `date_debut`<'"+year+"-10-31 23:59:00'").uniqueResult();
        	 november= (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `publication` WHERE `date_debut`>'"+year+"-11-01 00:00:00' AND `date_debut`<'"+year+"-11-30 23:59:00'").uniqueResult();
        	 decembre= (BigInteger) session.createSQLQuery("SELECT COUNT(*) FROM `publication` WHERE `date_debut`>'"+year+"-12-01 00:00:00' AND `date_debut`<'"+year+"-12-31 23:59:00'").uniqueResult();
        */
        	
        	 
        }
        ArrayList<Integer> result = new ArrayList<Integer>();
        result.add(10);
        result.add(3);
        result.add(3);
        result.add(2);
        result.add(5);
        result.add(6);
        result.add(1);
        result.add(4);
        result.add(8);
        result.add(2);
        result.add(11);
        result.add(3);
        
 
    	return result;
    }

}
