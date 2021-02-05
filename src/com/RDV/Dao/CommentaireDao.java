package com.RDV.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.RDV.beans.Commentaires;
import com.RDV.util.HibernateUtil;




public class CommentaireDao {
	
	public void deleteCommentaires(int id) {

		Transaction transaction = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			// start a transaction
			transaction = session.beginTransaction();

			// Delete a user object
			Commentaires commentaires = session.get(Commentaires.class, id);
			if (commentaires != null) {
				session.delete(commentaires);
				System.out.println("commentaire is deleted");
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
	public Commentaires getCommentaires(int id) {

		Transaction transaction = null;
		Commentaires commentaires = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			// start a transaction
			transaction = session.beginTransaction();
			// get an user object
			commentaires = session.get(Commentaires.class, id);
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return commentaires;
	}
	@SuppressWarnings("unchecked")
	public List<Commentaires> getAllCommentaires() {

		Transaction transaction = null;
		List<Commentaires> listOfCommentaires = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			// start a transaction
			transaction = session.beginTransaction();
			// get an user object
			
			listOfCommentaires = session.createQuery("from Commentaires").getResultList();
			
			// commit transaction
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return listOfCommentaires;
	}

}
