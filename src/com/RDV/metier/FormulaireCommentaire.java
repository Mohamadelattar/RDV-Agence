package com.RDV.metier;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.RDV.Dao.CommentaireDao;
import com.RDV.beans.Client;
import com.RDV.beans.Commentaires;

public class FormulaireCommentaire {
	    private static final String CHAMP_CONTENU          = "contenu";

	    private String              resultat;
	    private Map<String, String> erreurs             = new HashMap<String, String>();

	    public String getResultat() {
	        return resultat;
	    }

	    public Map<String, String> getErreurs() {
	        return erreurs;
	    }

	    public Commentaires validerCommentaire( HttpServletRequest request ) throws IOException, ServletException {
	        /* Rï¿½cupï¿½ration des champs du formulaire */
	        String contenu = getValeurChamp( request, CHAMP_CONTENU );
	        HttpSession session = request.getSession();

	        Commentaires commentaire = new Commentaires();
	        Client client = (Client) session.getAttribute("client");
	        /* Validation du commentaire. */
	        try {
	            validationContenu( contenu );
	        } catch ( Exception e ) {
	            setErreur( CHAMP_CONTENU, e.getMessage() );
	        }
	        commentaire.setTitre("commentaire");
	        commentaire.setContenu( contenu );
	        commentaire.setIdClient(client.getId());
	        
	        if ( erreurs.isEmpty() ) {
	            resultat = "commentaire ajouté avec succés";
	        } else {
	            resultat = "Echec lors de l'ajout d'un commentaire";
	        }

	        return commentaire;
	    }
	    
	    /**
	     * Mï¿½thode utilitaire qui retourne null si un champ est vide, et son contenu
	     * sinon.
	     */
	    private static String getValeurChamp( HttpServletRequest request, String nomChamp ) {
	        String valeur = request.getParameter( nomChamp );
	        if ( valeur == null || valeur.trim().length() == 0 ) {
	            return null;
	        } else {
	            return valeur;
	        }
	    }
	    
	    
	    /**
	     * Ajoute un message correspondant au champ spÃ©cific Ã  la map des erreurs.
	     */
	    private void setErreur( String champ, String message ) {
	        erreurs.put( champ, message );
	    }
	    
	    /**
	     * Valider le commentaire saisi.
	     */
	    private void validationContenu( String contenu ) throws Exception {
	        if ( contenu != null ) {
	            if ( contenu.length() < 10 ) {
	                throw new Exception( "Votre commentaire doit contenir au moins 10 caractères." );
	            } else if ( contenu.length() > 500 ) {
	                throw new Exception( "Votre commentaire doit contenir au maximum 500 caractères." );
	            }
	        } else {
	            throw new Exception( "Merci de saisir un commentaire." );
	        }
	    }


}