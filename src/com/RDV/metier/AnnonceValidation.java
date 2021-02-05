package com.RDV.metier;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.RDV.Dao.AnnonceDao;
import com.RDV.beans.Annonce;

public class AnnonceValidation {

	public AnnonceValidation() {
		// TODO Auto-generated constructor stub
	}
	
	private static final String CHAMP_ID        = "id";
	private static final String CHAMP_TITRE     = "titre";
    private static final String CHAMP_CONTENU   = "contenu";
    private static final String CHAMP_IMAGE     = "image";
    private static final int    TAILLE_TAMPON       = 10485760;
	private static final String CHEMIN_IMAGE = "/inc/inc_Dashboard/assets/images";
	
	private AnnonceDao annonceDao;
	private String resultat;
    private Map<String, String> erreurs = new HashMap<String, String>();

    public Map<String, String> getErreurs() {
        return erreurs;
    }

    public String getResultat() {
        return resultat;
    }
    
    public Annonce crrerAnnonce( HttpServletRequest request ) throws IOException, ServletException {
    	
    	Annonce annonce = new Annonce();
    	
    	String titre = getValeurChamp( request,CHAMP_TITRE );
        System.out.println(titre);
    	String contenu = getValeurChamp(request, CHAMP_CONTENU);
    	System.out.println(contenu);
    	ServletContext context = request.getServletContext();
        String uploadPath = context.getRealPath( CHEMIN_IMAGE );
        System.out.println( CHEMIN_IMAGE );
        System.out.println( uploadPath );
 
        
        try {
         	validationTitre(titre);
         } catch ( Exception e ) {
         setErreur( CHAMP_TITRE, e.getMessage() );
         }
        annonce.setTitre(titre);
        
        try {
         	validationContenu(contenu);
         } catch ( Exception e ) {
         setErreur( CHAMP_CONTENU, e.getMessage() );
         }
        annonce.setContenu(contenu);
        
        HttpSession session = request.getSession();
 
		annonce.setIdEmploye((int) session.getAttribute("idEmploye"));
		String nomFichier = null;
        InputStream contenuFichier = null;
        
        try {
       	 Part part = request.getPart(CHAMP_IMAGE);
             System.out.println(part.toString());
            nomFichier = getNomFichier(part);

            
            if ( nomFichier != null && !nomFichier.isEmpty() ) {
                
                  
                nomFichier = nomFichier.substring( nomFichier.lastIndexOf( '/' ) + 1 ).substring( nomFichier.lastIndexOf( '\\' ) + 1 );
                
                annonce.setImage(nomFichier);	
                 
                contenuFichier = part.getInputStream();

            }
        } catch ( IllegalStateException e ) {
            
            e.printStackTrace();
            setErreur( CHAMP_IMAGE, "Les données envoyées sont trop volumineuses." );
        } catch ( IOException e ) {
             
            e.printStackTrace();
            setErreur( CHAMP_IMAGE, "Erreur de configuration du serveur." );
        } catch ( ServletException e ) {
            
            e.printStackTrace();
            setErreur( CHAMP_IMAGE, "Ce type de requête n'est pas supporté, merci d'utiliser le formulaire prévu pour envoyer votre fichier." );
        }
        ecrireFichier( contenuFichier, nomFichier, uploadPath );
       return annonce;
    }
    
    /* Cette fonction pour valider les champs lors du modification */

    public Annonce modifierAnnonce( HttpServletRequest request ) throws IOException, ServletException {
        /* Récupération des champs du formulaire */
        int id = Integer.parseInt( getValeurChamp(request,CHAMP_ID));
        System.out.println(id);
        String titre = getValeurChamp( request,CHAMP_TITRE );
        System.out.println(titre);
    	String contenu = getValeurChamp(request, CHAMP_CONTENU);
    	System.out.println(contenu);
    	ServletContext context = request.getServletContext();
        String uploadPath = context.getRealPath( CHEMIN_IMAGE );
        System.out.println( CHEMIN_IMAGE );
        System.out.println( uploadPath );
        String nomFichier = null;
        InputStream contenuFichier = null;
 
        // String photoProfil = getValeurChamp( request, CHAMP_PHOTO_PROFIL );

        Annonce annonce = new Annonce();
        annonceDao = new AnnonceDao(Annonce.class);
        annonce = (Annonce) annonceDao.getById(id);

        try {
         	validationTitre(titre);
         } catch ( Exception e ) {
         setErreur( CHAMP_TITRE, e.getMessage() );
         }
         annonce.setTitre(titre);
         

    	 try {
         	validationContenu(contenu);
         } catch ( Exception e ) {
         setErreur( CHAMP_CONTENU, e.getMessage() );
         }
         annonce.setContenu(contenu);
         
 
  
         
         HttpSession session = request.getSession();
         
 		annonce.setIdEmploye((int) session.getAttribute("idEmploye"));

 
 		try {
 	       	 Part part = request.getPart(CHAMP_IMAGE);
 	             
 	            nomFichier = getNomFichier( part );

 	            
 	            if ( nomFichier != null && !nomFichier.isEmpty() ) {
 	                
 	                  
 	                nomFichier = nomFichier.substring( nomFichier.lastIndexOf( '/' ) + 1 ).substring( nomFichier.lastIndexOf( '\\' ) + 1 );
 	                
 	                annonce.setImage(nomFichier);	
 	                 
 	                contenuFichier = part.getInputStream();

 	            }
 	        } catch ( IllegalStateException e ) {
 	            
 	            e.printStackTrace();
 	            setErreur( CHAMP_IMAGE, "Les données envoyées sont trop volumineuses." );
 	        } catch ( IOException e ) {
 	             
 	            e.printStackTrace();
 	            setErreur( CHAMP_IMAGE, "Erreur de configuration du serveur." );
 	        } catch ( ServletException e ) {
 	            
 	            e.printStackTrace();
 	            setErreur( CHAMP_IMAGE, "Ce type de requête n'est pas supporté, merci d'utiliser le formulaire prévu pour envoyer votre fichier." );
 	        }
 	        ecrireFichier( contenuFichier, nomFichier, uploadPath );
 	       return annonce;
    }
	
    public void validationTitre(String titre) throws Exception
   	{
   		if(titre.length()<10) {
   			throw new Exception("Merci de saisir un titre contiant au moins 10 lettre");
   		}
   	}
       
       public void validationContenu(String contenu) throws Exception
      	{
      		if(contenu.length()<100) {
      			throw new Exception("Merci de saisir un contenu contiant au moins 100 lettre");
      		}
      	}
    
       public void validationImage(String image) throws Exception
   	{
   		if(image.length() == 0) {
   			throw new Exception("Merci de telecharger une image");
   		}
   	}
       private void ecrireFichier( InputStream contenu, String nomFichier, String chemin ) throws IOException {
           BufferedInputStream entree = null;
           BufferedOutputStream sortie = null;
           try {
               entree = new BufferedInputStream(contenu, TAILLE_TAMPON);
               sortie = new BufferedOutputStream(new FileOutputStream(new File(chemin + nomFichier)), TAILLE_TAMPON);

               byte[] tampon = new byte[TAILLE_TAMPON];
               int longueur;
               while ((longueur = entree.read(tampon)) > 0) {
                   sortie.write(tampon, 0, longueur);
               }
           } finally {
               try {
                   sortie.close();
               } catch (IOException ignore) {
               }
               try {
                   entree.close();
               } catch (IOException ignore) {
               }
           }
       }
       private static String getNomFichier( Part part ) {
           /*
            * Boucle sur chacun des paramètres de l'en-tête "content-disposition".
            */
           for ( String contentDisposition : part.getHeader( "content-disposition" ).split( ";" ) ) {
               /* Recherche de l'éventuelle présence du paramètre "filename". */
               if ( contentDisposition.trim().startsWith( "filename" ) ) {
                   /*
                    * Si "filename" est présent, alors renvoi de sa valeur,
                    * c'est-à-dire du nom de fichier sans guillemets.
                    */
                   return contentDisposition.substring( contentDisposition.indexOf( '=' ) + 1 ).trim().replace( "\"", "" );
               }
           }
           /* Et pour terminer, si rien n'a été trouvé... */
           return null;
       }
       private void setErreur( String champ, String message ) {
           erreurs.put( champ, message );
       }

       /**
        * Méthode utilitaire qui retourne null si un champ est vide, et son contenu
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

}
