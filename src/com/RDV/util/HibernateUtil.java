package com.RDV.util;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import com.RDV.beans.Annonce;
import com.RDV.beans.Client;
import com.RDV.beans.Commentaires;
import com.RDV.beans.Employe;
import com.RDV.beans.Portfolio;
import com.RDV.beans.Publication;
import com.RDV.beans.Reservation;



public class HibernateUtil {
 private static SessionFactory sessionFactory;

 public static SessionFactory getSessionFactory() {
  if (sessionFactory == null) {
   try {
    Configuration configuration = new Configuration();

    // Hibernate settings equivalent to hibernate.cfg.xml's properties
    Properties settings = new Properties();
    settings.put(Environment.DRIVER, "com.mysql.jdbc.Driver");
    settings.put(Environment.URL, "jdbc:mysql://localhost:3306/rdvagencee?zeroDateTimeBehavior=CONVERT_TO_NULL&serverTimezone=UTC");
    settings.put(Environment.USER, "root");
    settings.put(Environment.PASS, "");
    settings.put(Environment.DIALECT, "org.hibernate.dialect.MySQL5Dialect");
    settings.put(Environment.SHOW_SQL, "true");
    settings.put(Environment.CURRENT_SESSION_CONTEXT_CLASS, "thread");
    settings.put(Environment.HBM2DDL_AUTO, "update");

    configuration.setProperties(settings);
    configuration.addAnnotatedClass(Reservation.class);
    configuration.addAnnotatedClass(Employe.class);
    configuration.addAnnotatedClass(Publication.class);
    configuration.addAnnotatedClass(Client.class);
    configuration.addAnnotatedClass(Commentaires.class);
    configuration.addAnnotatedClass(Annonce.class);
    configuration.addAnnotatedClass(Portfolio.class);

    ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
    System.out.println("Hibernate Java Config serviceRegistry created");
    sessionFactory = configuration.buildSessionFactory(serviceRegistry);
    return sessionFactory;

   } catch (Exception e) {
    e.printStackTrace();
   }
  }
  return sessionFactory;
 }
}
