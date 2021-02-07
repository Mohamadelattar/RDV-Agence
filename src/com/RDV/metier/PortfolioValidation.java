package com.RDV.metier;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.RDV.Dao.PortfolioDao;
import com.RDV.beans.Portfolio;

public class PortfolioValidation {
	private static final String NOM = "nom";
	private static final String PRENOM = "prenom";
	private static final String PRESENTATION = "presentation";
	private static final String FORMATION    = "formation";
	private static final String EXPERIENCE   = "experience";
	
	//private PortfolioDao portfolioDao;
	private String resultat;
    private Map<String, String> erreurs = new HashMap<String, String>();

    public Map<String, String> getErreurs() {
        return erreurs;
    }

    public String getResultat() {
        return resultat;
    }
    
    public Portfolio creerPortfolio(HttpServletRequest request) throws IOException, ServletException {
    	PortfolioDao portfolioDao = new PortfolioDao(Portfolio.class);
    	Portfolio portfolio = (Portfolio) portfolioDao.getById(1);
    	
    	String nom = request.getParameter(NOM);
    	String prenom= request.getParameter(PRENOM);
    	String formation= request.getParameter(FORMATION);
    	String experience= request.getParameter(EXPERIENCE);
    	String presentation = request.getParameter(PRESENTATION);
    	
    	/*
    	String nom = "Nom";
    	String prenom= "Prenom";
    	String formation= "Formation Formation Formation Formation";
    	String experience= "Experience Experience Experience";
    	String presentation = "Presentation Presentation Presentation";
    	*/
    	System.out.println("Nom "+nom);
    	
    	 
    	try {
         	validationNom(nom);
         } catch ( Exception e ) {
         setErreur( NOM, e.getMessage() );
         }
    	portfolio.setNom(nom);
    	
    	try {
    		validationPrenom(prenom);
    	} catch(Exception e) {
    		setErreur(PRENOM, e.getMessage());
    	}
    	portfolio.setPrenom(prenom);
    	
    	try {
    		validationFormation(formation);
    	} catch(Exception e) {
    		setErreur(FORMATION, e.getMessage());
    	}
    	portfolio.setFormation(formation);
    	
    	try {
    		validationExperience(experience);
    	} catch(Exception e) {
    		setErreur(EXPERIENCE, e.getMessage());
    	}
    	portfolio.setExperience(experience);
    	
    	try {
    		validationPresentation(presentation);
    	} catch(Exception e) {
    		setErreur(PRESENTATION,e.getMessage());
    	}
    	portfolio.setPresentation(presentation);
    	
    	if ( erreurs.isEmpty() ) {
            resultat = "Enregistrer avec succée";
        } else {
            resultat = "Merci de vérifier vos informations";
        }
    	
    	return portfolio;
    }
    
    public void validationNom(String nom) throws Exception
   	{
   		if(nom.length()<2) {
   			throw new Exception("Merci de saisir au moins 3 lettre");
   		}
   	}
    
    public void validationPrenom(String prenom) throws Exception
    {
    	if(prenom.length()<2) {
    		throw new Exception("Merci de saisir au moins 3 lettre");
    	}
    }
    
    public void validationFormation(String formation) throws Exception
    {
    	if(formation.length()<10) {
    		throw new Exception("Merci de saisir plus de 100 carachteres");
    	}
    }
    
    public void validationPresentation(String presentation) throws Exception
    {
    	if(presentation.length()<10) {
    		throw new Exception("Merci de saisir plus de 100 carachteres");
    	}
    }
    public void validationExperience(String experience) throws Exception 
    {
    	if(experience.length()<10) {
    		throw new Exception("Merci de saisir plus de 100 carachteres");
    	}
    }
    
 
    
    private void setErreur( String champ, String message ) {
        erreurs.put( champ, message );
    }
}
