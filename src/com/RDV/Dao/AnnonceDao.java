package com.RDV.Dao;

 

@SuppressWarnings("rawtypes")
public class AnnonceDao extends DaoFactory {

	@SuppressWarnings("unchecked")
	public AnnonceDao(Class persistentClass)  {
		super(persistentClass);
		// TODO Auto-generated constructor stub
	}
	
	/*public void saveAnnonce(Annonce annonce) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            System.out.println("Kant hna 1 Annonce");
            // save the publication object
            session.save(annonce);
            System.out.println("Kant hna 2 Annonce");
            // commit transaction
            transaction.commit();
            System.out.println("Kant hna 3 Annonce");
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
	
	/**
     * Update User
     * @param user
     */
  /*  public void updateAnnonce(Annonce annonce) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            session.update(annonce);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    /**
     * Delete User
     * @param id
     */
   /* public void deleteAnnonce(int id) {

        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();

            // Delete a user object
            Annonce annonce = session.get(Annonce.class, id);
            if (annonce != null) {
                session.delete(annonce);
                System.out.println("Annonce is deleted");
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

    /**
     * Get User By ID
     * @param id
     * @return
     */
   /* public Annonce getAnnonce(int id) {

        Transaction transaction = null;
        Annonce annonce = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get a publication object
            annonce = session.get(Annonce.class, id);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return annonce;
    }

    /**
     * Get all Users
     * @return
     */
 /*   	
    @SuppressWarnings("unchecked")
    public List <Annonce> getAllAnnonces() {

        Transaction transaction = null;
        ArrayList < Annonce > annonces = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object

            System.out.println("Ana hona");
            annonces = (ArrayList<Annonce>) session.createQuery("from Annonce").getResultList();
            System.out.println("Ana hona2");
            
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }

        return annonces;
    }*/
}
