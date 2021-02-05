package com.RDV.Dao;



 
import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.RDV.beans.Client;
import com.RDV.util.HibernateUtil;

@SuppressWarnings("rawtypes")
public class ClientDao extends DaoFactory<Object>{
	
	@SuppressWarnings("unchecked")
	public ClientDao(Class persistentClass) {
		super(persistentClass);
		// TODO Auto-generated constructor stub
	}

	public void saveClient( Client client ) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession() ) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student obje
            session.save( client );
            // commit transaction
            transaction.commit();
        } catch ( Exception e ) {
            if ( transaction != null ) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public void updateClient( Client client ) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession() ) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            session.update( client );
            // commit transaction
            transaction.commit();
        } catch ( Exception e ) {
            if ( transaction != null ) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
	public Client getClient(int id) {

		Transaction transaction = null;
        Client client = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession() ) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object
            client = session.get( Client.class, id );
            // commit transaction
            transaction.commit();
        } catch ( Exception e ) {
            if ( transaction != null ) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return client;
	}
	
	public Client getClient(String cin) {

		Transaction transaction = null;
        Client client = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession() ) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object
            client =  (Client) session.createQuery("FROM Client C WHERE C.cin = :cin").setParameter("cin", cin).uniqueResult();
            // commit transaction
            transaction.commit();
        } catch ( Exception e ) {
            if ( transaction != null ) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return client;
	}
	
	public boolean existsClient(String cin) {

		Transaction transaction = null;
        Client client = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession() ) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object
            client =  (Client) session.createQuery("FROM Client C WHERE C.cin = :cin").setParameter("cin", cin).uniqueResult();
            // commit transaction
            transaction.commit();
            if(client == null) {
            	return false;
            }
        } catch ( Exception e ) {
            if ( transaction != null ) {
                transaction.rollback();
                return false;
            }
            e.printStackTrace();
            return false;
        }
        return true;
	}
	
	
	@SuppressWarnings( "unchecked" )
    public ArrayList<Client> getAllClient() {

        Transaction transaction = null;
        ArrayList<Client> listOfClient = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession() ) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object

            listOfClient = (ArrayList<Client>) session.createQuery( "from Client" ).getResultList();

            // commit transaction
            transaction.commit();
        } catch ( Exception e ) {
            if ( transaction != null ) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return listOfClient;
    }
	public Client validate(String email, String password) {
        Transaction transaction = null;
        Client client = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            System.out.println("Ana hnaaaa Client taniiiii 1");
 
            client =  (Client) session.createQuery("FROM Client C WHERE C.email = :email").setParameter("email", email).uniqueResult();
            System.out.println("Ana hnaaaa Client taniiiii 2");
            
            if (client != null && client.getPassword().equals(password)) {
            	 System.out.println("Ana hnaaaa Client taniiiii 3");
                return client;
            }
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return null;
    }
	public Client getClientE(String email) {

		Transaction transaction = null;
        Client client = null;
        try ( Session session = HibernateUtil.getSessionFactory().openSession() ) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object
            client = session.get( Client.class, email );
            // commit transaction
            transaction.commit();
        } catch ( Exception e ) {
            if ( transaction != null ) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return client;
}
}
