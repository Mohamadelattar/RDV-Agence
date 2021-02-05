package com.RDV.Dao;

 
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.RDV.beans.Publication;
import com.RDV.util.HibernateUtil;

/**
 * CRUD database operations
 *  
 *
 */

@SuppressWarnings("rawtypes")
public class PublicationDao extends DaoFactory {
 
	    @SuppressWarnings("unchecked")
		public PublicationDao( Class persistentClass) {
		super(persistentClass);
		// TODO Auto-generated constructor stub
	}
 
	    
	    /* La liste de Nos Publica	tions la partie Front */
	    @SuppressWarnings({ "unchecked", "unused" })
		public List<Publication> publications(int id) {
	    	Transaction transaction = null;
	        Query query;
	        String sql;
	        List<Publication> publications;
	         
	    	 try(Session session = HibernateUtil.getSessionFactory().openSession()){
	         	transaction = session.beginTransaction();
	         	 
	         	query =  session.createQuery("from Publication where id!=:i ").setParameter("i", id);
	         	query.setMaxResults(3);
	         	publications = query.getResultList();
	         }
	    	 
	    	  
	    	  
	    	return publications;
	    }
	    
	    @SuppressWarnings("unused")
		public int [] maxMinPublication()
	    {
	    	Transaction transaction = null;
	        Query query;
	        Integer max;
	        Integer min;
	        try(Session session = HibernateUtil.getSessionFactory().openSession()){
	         	transaction = session.beginTransaction();
	         	 
	         	min =    (Integer) session.createSQLQuery("SELECT MIN(id) FROM `publication` WHERE 1").uniqueResult();
	         	max = (Integer) session.createNativeQuery("SELECT MAX(id) FROM `publication` WHERE 1").uniqueResult();
	         	 
	         }
	        int [] result = {min.intValue(),max.intValue()};
	        
	        return result;
	    }
	    
	     
	    
	    
	    
 

	     
	}


