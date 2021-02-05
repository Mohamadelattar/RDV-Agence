package com.RDV.Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
 
import com.RDV.util.HibernateUtil;
 



public class DaoFactory<T> implements DaoInterface<T> {
	
	private Class<T> persistentClass;
	
 

	public DaoFactory(Class<T> persistentClass) {
		super();
		this.persistentClass = persistentClass;
	}
	
 

	public Class<T> getPersistentClass() {
		return persistentClass;
	}
	

	
	public T getById(int id) {
		Transaction transaction = null;
        T entity = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get a publication object
            entity = session.get(this.persistentClass, id);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return entity;
	}
	
	public void save(T entity) {
		 
		 Transaction transaction = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            // start a transaction
	            transaction = session.beginTransaction();
	            System.out.println("Kant hna 1");
	            // save the publication object
	            session.save(entity);
	            System.out.println("Kant hna 2");
	            // commit transaction
	            transaction.commit();
	        
	            System.out.println("Kant hna 3");
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	}
	
	public void update(T entity) {
		Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()
        		) {
            // start a transaction
            transaction = session.beginTransaction();

            // save the student object
            session.update(entity);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
	}
	
 

	
	@Override
	public void delete(int id) {
		System.out.println("Publication is deleted");  
		Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            System.out.println("Publication is deleted");
            // Delete a user object
            T entity = (T) session.get(this.persistentClass, id);
            if (entity != null) {
                session.delete(entity);
                System.out.println("Publication is deleted");
            }

            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
		
	}



	@SuppressWarnings("unchecked")
	@Override
	public List<T> getAll(String table) {
		// TODO Auto-generated method stub
		Transaction transaction = null;
        ArrayList < T > items = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
 
           
            
            items = (ArrayList<T>) session.createQuery(table).getResultList();
       
            
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
}
