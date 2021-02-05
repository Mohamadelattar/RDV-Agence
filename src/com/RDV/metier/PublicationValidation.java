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
 
import com.RDV.Dao.PublicationDao;
import com.RDV.beans.Publication;
 

public final class PublicationValidation {
	private static final String CHAMP_ID        = "id";
    private static final String CHAMP_TITRE     = "titre";
    private static final String CHAMP_CONTENU   = "contenu";
    private static final String CHAMP_IMAGE     = "image";
    private static final int    TAILLE_TAMPON       = 10485760;
	private static final String CHEMIN_IMAGE = "/inc/inc_Dashboard/assets/images";
	
	
	private PublicationDao publicationDao;
    private String resultat;
    private Map<String, String> erreurs = new HashMap<String, String>();

    public Map<String, String> getErreurs() {
        return erreurs;
    }

    public String getResultat() {
        return resultat;
    }

    public Publication creerPublication( HttpServletRequest request ) throws IOException, ServletException {
    	HttpSession session = request.getSession();
    	Publication publication = new Publication();
    	
    	String titre = request.getParameter( CHAMP_TITRE );
    	String contenu = request.getParameter( CHAMP_CONTENU);
    	ServletContext context = request.getServletContext();
        String uploadPath = context.getRealPath( CHEMIN_IMAGE );
        System.out.println( CHEMIN_IMAGE );
        System.out.println( uploadPath );
        String nomFichier = null;
        InputStream contenuFichier = null;
    	
 
 
    	 try {
         	validationTitre(titre);
         } catch ( Exception e ) {
         setErreur( CHAMP_TITRE, e.getMessage() );
         }
         publication.setTitre(titre);
         

    	 try {
         	validationContenu(contenu);
         } catch ( Exception e ) {
         setErreur( CHAMP_CONTENU, e.getMessage() );
         }
         publication.setContenu(contenu);
         
 
  
         
         publication.setIdEmploye((int) session.getAttribute("idEmploye"));
         
          
          
         try {
        	 Part part = request.getPart(CHAMP_IMAGE);
 
             	nomFichier = part.getSubmittedFileName();

          
             if ( nomFichier != null && !nomFichier.isEmpty() ) {
           
                   
                 nomFichier = nomFichier.substring( nomFichier.lastIndexOf( '/' ) + 1 ).substring( nomFichier.lastIndexOf( '\\' ) + 1 );
                 
                 publication.setImage(nomFichier);	
                 
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
          
         if ( erreurs.isEmpty() ) {
             
             try {
                 ecrireFichier( contenuFichier, nomFichier, uploadPath );
             } catch ( Exception e ) {
                 setErreur( CHAMP_IMAGE, "Erreur lors de l'écriture du fichier sur le disque." );
             }
         }
        return publication;
    }
    
    /* Cette fonction pour valider les champs lors du modification */

    public Publication modifierPublication( HttpServletRequest request ) throws IOException, ServletException {
    	HttpSession session = request.getSession();

        /* Récupération des champs du formulaire */
        int id = Integer.parseInt( request.getParameter(CHAMP_ID));
        String titre = request.getParameter( CHAMP_TITRE );
    	String contenu = request.getParameter( CHAMP_CONTENU);
    	ServletContext context = request.getServletContext();
        String uploadPath = context.getRealPath( CHEMIN_IMAGE );
        System.out.println( CHEMIN_IMAGE );
        System.out.println( uploadPath );
        String nomFichier = null;
        InputStream contenuFichier = null;
 
        // String photoProfil = getValeurChamp( request, CHAMP_PHOTO_PROFIL );

        Publication publication = new Publication();
        publicationDao = new PublicationDao(Publication.class);
        publication = (Publication) publicationDao.getById(id);

        try {
         	validationTitre(titre);
         } catch ( Exception e ) {
         setErreur( CHAMP_TITRE, e.getMessage() );
         }
         publication.setTitre(titre);
         

    	 try {
         	validationContenu(contenu);
         } catch ( Exception e ) {
         setErreur( CHAMP_CONTENU, e.getMessage() );
         }
         publication.setContenu(contenu);
 
         
          
		publication.setIdEmploye((int) session.getAttribute("idEmploye"));
		
		try {
       	 Part part = request.getPart(CHAMP_IMAGE);

            	nomFichier = part.getSubmittedFileName();

         
            if ( nomFichier != null && !nomFichier.isEmpty() ) {
          
                  
                nomFichier = nomFichier.substring( nomFichier.lastIndexOf( '/' ) + 1 ).substring( nomFichier.lastIndexOf( '\\' ) + 1 );
                
                publication.setImage(nomFichier);	
                
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

 
 
 

        /* Initialisation du résultat global de la validation. */
        if ( erreurs.isEmpty() ) {
        	try {
                ecrireFichier( contenuFichier, nomFichier, uploadPath );
            } catch ( Exception e ) {
                setErreur( CHAMP_IMAGE, "Erreur lors de l'écriture du fichier sur le disque." );
            }
        }  

        return publication;
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
            sortie = new BufferedOutputStream(new FileOutputStream(new File(chemin + File.separator + nomFichier )), TAILLE_TAMPON);

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
    
    private void setErreur( String champ, String message ) {
        erreurs.put( champ, message );
    }

     
}