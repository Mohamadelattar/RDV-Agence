package com.RDV.metier;


import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.Part;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.RDV.Dao.ClientDao;
import com.RDV.beans.Client;

public class FormulaireClient {
    private static final String CHAMP_ID            = "id";
    private static final String CHAMP_CIN           = "cin";
    private static final String CHAMP_NOM           = "nom";
    private static final String CHAMP_PRENOM        = "prenom";
    private static final String CHAMP_VILLE         = "ville";
    private static final String CHAMP_EMAIL         = "email";
    private static final String CHAMP_PASSWORD      = "password";
    private static final String CHAMP_NUM_TELEPHONE = "numTelephone";
    private static final String CHAMP_DATE_DEBUT    = "dateDebut";
    private static final String CHAMP_PHOTO_PROFIL  = "photoProfil";
    private static final String FOLDER_NAME_UPLOAD  = "/inc/inc_Front/images";

    private static final int    TAILLE_TAMPON       = 10485760;                          // 10
    // MO
    
    private String              resultat;
    private Map<String, String> erreurs             = new HashMap<String, String>();
    private ClientDao          clientDao;

    public String getResultat() {
        return resultat;
    }

    public Map<String, String> getErreurs() {
        return erreurs;
    }

    public Client validerClient( HttpServletRequest request ) throws IOException, ServletException {
        /* R�cup�ration des champs du formulaire */
        String cin = getValeurChamp( request, CHAMP_CIN );
        String nom = getValeurChamp( request, CHAMP_NOM );
        String prenom = getValeurChamp( request, CHAMP_PRENOM );
        String ville = getValeurChamp( request, CHAMP_VILLE );
        String email = getValeurChamp( request, CHAMP_EMAIL );
        String password = getValeurChamp( request, CHAMP_PASSWORD );
        String numTelephone = getValeurChamp( request, CHAMP_NUM_TELEPHONE );
        String dateDebut = getValeurChamp( request, CHAMP_DATE_DEBUT );
        ServletContext context = request.getServletContext();
        String uploadPath = context.getRealPath( FOLDER_NAME_UPLOAD );
        System.out.println( FOLDER_NAME_UPLOAD );
        System.out.println( uploadPath );

        Client client = new Client();

        /* Validation du champ cin. */
        try {
            validationCin( cin );
        } catch ( Exception e ) {
            setErreur( CHAMP_CIN, e.getMessage() );
        }
        client.setCin( cin );

        /* Validation du nom. */
        try {
            validationNom( nom );
        } catch ( Exception e ) {
            setErreur( CHAMP_NOM, e.getMessage() );
        }
        client.setNom( nom );

        /* Validation du prenom. */
        try {
            validationPrenom( prenom );
        } catch ( Exception e ) {
            setErreur( CHAMP_PRENOM, e.getMessage() );
        }
        client.setPrenom( prenom );

        /* Validation du champ ville. */
        try {
            validationVille( ville );
        } catch ( Exception e ) {
            setErreur( CHAMP_VILLE, e.getMessage() );
        }
        client.setAdresse( ville );

        /* Validation du champ email. */
        try {
            validationEmail( email );
        } catch ( Exception e ) {
            setErreur( CHAMP_EMAIL, e.getMessage() );
        }
        client.setEmail( email );

        /* Validation du champ mot de passe. */
        try {
            validationMotDePasse( password );
        } catch ( Exception e ) {
            setErreur( CHAMP_PASSWORD, e.getMessage() );
        }
        client.setPassword( crypterMotDePasse( password ));
        client.setOldPassword( crypterMotDePasse( password ));

        /* Validation du numero de telephone. */
        try {
            validationNumTelephone( numTelephone );
        } catch ( Exception e ) {
            setErreur( CHAMP_NUM_TELEPHONE, e.getMessage() );
        }
        client.setNumTele( numTelephone );
        
        client.setDate_debut( dateDebut );
        
        String nomFichier = null;
        InputStream contenuFichier = null;
        try {
            Part part = request.getPart( CHAMP_PHOTO_PROFIL );
        
            nomFichier = getNomFichier( part );

         
            if ( nomFichier != null && !nomFichier.isEmpty() ) {
            
                nomFichier = nomFichier.substring( nomFichier.lastIndexOf( '/' ) + 1 ).substring( nomFichier.lastIndexOf( '\\' ) + 1 );

                 
                contenuFichier = part.getInputStream();

            }
        } catch ( IllegalStateException e ) {
            
            e.printStackTrace();
            setErreur( CHAMP_PHOTO_PROFIL, "Les données envoyées sont trop volumineuses." );
        } catch ( IOException e ) {
            
            e.printStackTrace();
            setErreur( CHAMP_PHOTO_PROFIL, "Erreur de configuration du serveur." );
        } catch ( ServletException e ) {
             
            e.printStackTrace();
            setErreur( CHAMP_PHOTO_PROFIL,
                    "Ce type de requête n'est pas supporté, merci d'utiliser le formulaire prévu pour envoyer votre fichier." );
        }

         
        if ( erreurs.isEmpty() ) {
            try {
                validationFichier( nomFichier, contenuFichier );
            } catch ( Exception e ) {
                setErreur( CHAMP_PHOTO_PROFIL, e.getMessage() );
            }
            client.setPhotoProfile( nomFichier );
        }

        
        if ( erreurs.isEmpty() ) {
             
            try {
                ecrireFichier( contenuFichier, nomFichier, uploadPath );
            } catch ( Exception e ) {
                setErreur( CHAMP_PHOTO_PROFIL, "Erreur lors de l'écriture du fichier sur le disque." );
            }
        }

         
        if ( erreurs.isEmpty() ) {
            resultat = "client ajouté avec succés";
        } else {
            resultat = "Echec lors de l'ajout d'un client";
        }

        return client;
    }

    /* Cette fonction pour valider les champs lors du modification */

    public Client modifierClient( HttpServletRequest request ) throws IOException, ServletException {
        /* R�cup�ration des champs du formulaire */
        int id = Integer.parseInt( getValeurChamp( request, CHAMP_ID ) );
        String cin = getValeurChamp( request, CHAMP_CIN );
        String nom = getValeurChamp( request, CHAMP_NOM );
        String prenom = getValeurChamp( request, CHAMP_PRENOM );
        String ville = getValeurChamp( request, CHAMP_VILLE );
        String email = getValeurChamp( request, CHAMP_EMAIL );
        String password = getValeurChamp( request, CHAMP_PASSWORD );
        String numTelephone = getValeurChamp( request, CHAMP_NUM_TELEPHONE );
        // String photoProfil = getValeurChamp( request, CHAMP_PHOTO_PROFIL );

        Client client = new Client();
        clientDao = new ClientDao(Client.class);
        client = clientDao.getClient( id );

        /* Validation du champ cin. */
        try {
            validationCin( cin );
        } catch ( Exception e ) {
            setErreur( CHAMP_CIN, e.getMessage() );
        }
        client.setCin( cin );

        /* Validation du nom. */
        try {
            validationNom( nom );
        } catch ( Exception e ) {
            setErreur( CHAMP_NOM, e.getMessage() );
        }
        client.setNom( nom );

        /* Validation du prenom. */
        try {
            validationPrenom( prenom );
        } catch ( Exception e ) {
            setErreur( CHAMP_PRENOM, e.getMessage() );
        }
        client.setPrenom( prenom );

        /* Validation du champ ville. */
        try {
            validationVille( ville );
        } catch ( Exception e ) {
            setErreur( CHAMP_VILLE, e.getMessage() );
        }
        client.setAdresse( ville );

        /* Validation du champ email. */
        try {
            validationEmail( email );
        } catch ( Exception e ) {
            setErreur( CHAMP_EMAIL, e.getMessage() );
        }
        client.setEmail( email );

        /* Validation du champ mot de passe. */
        try {
            if ( password != null ) {
                validationMotDePasse( crypterMotDePasse( password ) );
            }
        } catch ( Exception e ) {
            setErreur( CHAMP_PASSWORD, e.getMessage() );
        }
        client.setOldPassword( client.getPassword() );
        if ( password != null ) {
            client.setPassword( password );
        } else {
            client.setPassword( client.getPassword() );
        }

        /* Validation du numero de telephone. */
        try {
            validationNumTelephone( numTelephone );
        } catch ( Exception e ) {
            setErreur( CHAMP_NUM_TELEPHONE, e.getMessage() );
        }
        client.setNumTele( numTelephone );

        /* Initialisation du r�sultat global de la validation. */
        if ( erreurs.isEmpty() ) {
            resultat = "Client est modifié avec succés";
        } else {
            resultat = "Echec lors de la modification de l'employé";
        }

        return client;
    }

    /**
     * Ajoute un message correspondant au champ spécific à la map des erreurs.
     */
    private void setErreur( String champ, String message ) {
        erreurs.put( champ, message );
    }

    /**
     * Valider le cin saisi.
     */
    private void validationCin( String cin ) throws Exception {
        if ( cin != null ) {
            if ( cin.length() < 6 ) {
                throw new Exception( "Votre cin doit contenir au moins 6 caract�res." );
            } else if ( !( cin.substring( 0, 1 ).matches( "[a-zA-Z]" ) ) ) {
                throw new Exception( "Votre cin doit commencer par une Lettre." );
            }
        } else {
            throw new Exception( "Merci de saisir un cin." );
        }
    }

    /**
     * Valider le nom saisi.
     */
    private void validationNom( String nom ) throws Exception {
        if ( nom != null ) {
            if ( nom.length() < 3 ) {
                throw new Exception( "Votre nom doit contenir au moins 3 caract�res." );
            }
        } else {
            throw new Exception( "Merci de saisir un nom." );
        }
    }

    /**
     * Valider le prenom saisi.
     */
    private void validationPrenom( String prenom ) throws Exception {
        if ( prenom != null ) {
            if ( prenom.length() < 3 ) {
                throw new Exception( "Votre prenom doit contenir au moins 3 caract�res." );
            }
        } else {
            throw new Exception( "Merci de saisir un prenom." );
        }
    }

    /**
     * Valide l'adresse email saisie.
     */
    private void validationEmail( String email ) throws Exception {
        if ( email != null && !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
            throw new Exception( "Merci de saisir une adresse mail valide." );
        }
    }

    /**
     * Valide le mot de passe saisi.
     */
    private void validationMotDePasse( String motDePasse ) throws Exception {
        if ( motDePasse != null ) {
            if ( motDePasse.length() < 3 ) {
                throw new Exception( "Le mot de passe doit contenir au moins 3 caract�res." );
            }
        } else {
            throw new Exception( "Merci de saisir votre mot de passe." );
        }
    }

    /**
     * Valider le numero de telephone saisi.
     */
    private void validationNumTelephone( String numTelephone ) throws Exception {
        if ( numTelephone != null ) {
            if ( numTelephone.length() != 10 ) {
                throw new Exception( "Votre numero de telephone doit contenir 10 chiffres." );
            }
            int cpt = 0;
            int size = numTelephone.length();
            while ( size > 0 ) {
                if ( numTelephone.substring( cpt, cpt + 1 ).matches( "[a-zA-Z]" ) == true ) {
                    throw new Exception( "Votre numero doit contenir que des chiffres." );
                }
                cpt++;
                size--;
            }
        } else {
            throw new Exception( "Merci de saisir un num�ro de telephone." );
        }
    }

    /**
     * Valider la ville saisi.
     */
    private void validationVille( String ville ) throws Exception {
        if ( ville != null ) {
            if ( ville.length() < 3 ) {
                throw new Exception( "Votre ville doit contenir au moins 3 chiffres." );
            }
        } else {
            throw new Exception( "Merci de saisir un adresse." );
        }
    }

    /**
     * M�thode utilitaire qui retourne null si un champ est vide, et son contenu
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
    /*
     * Valide le fichier envoyé.
     */
    private void validationFichier( String nomFichier, InputStream contenuFichier ) throws Exception {
        if ( nomFichier == null || contenuFichier == null ) {
            throw new Exception( "Merci de sélectionner un fichier à envoyer." );
        }
    }
    /*
     * Méthode utilitaire qui a pour but d'écrire le fichier passé en paramètre
     * sur le disque, dans le répertoire donné et avec le nom donné.
     */
    private void ecrireFichier( InputStream contenu, String nomFichier, String chemin ) throws Exception {
        /* Prépare les flux. */
        BufferedInputStream entree = null;
        BufferedOutputStream sortie = null;
        try {
            /* Ouvre les flux. */
            entree = new BufferedInputStream( contenu, TAILLE_TAMPON );
            sortie = new BufferedOutputStream( new FileOutputStream( new File( chemin + File.separator + nomFichier ) ),
                    TAILLE_TAMPON );

            /*
             * Lit le fichier reçu et écrit son contenu dans un fichier sur le
             * disque.
             */
            byte[] tampon = new byte[TAILLE_TAMPON];
            int longueur = 0;
            while ( ( longueur = entree.read( tampon ) ) > 0 ) {
                sortie.write( tampon, 0, longueur );
            }
        } finally {
            try {
                sortie.close();
            } catch ( IOException ignore ) {
            }
            try {
                entree.close();
            } catch ( IOException ignore ) {
            }
        }
    }
    public Client modifierPhotoProfil( HttpServletRequest request ) throws IOException, ServletException {

        /* Récupération des champs du formulaire */
        int id = Integer.parseInt( getValeurChamp( request, CHAMP_ID ) );
        ServletContext context = request.getServletContext();
        String uploadPath = context.getRealPath( FOLDER_NAME_UPLOAD );
        System.out.println( FOLDER_NAME_UPLOAD );
        System.out.println( uploadPath );
        // String photoProfil = getValeurChamp( request, CHAMP_PHOTO_PROFIL );

        Client client = new Client();
        clientDao = new ClientDao(Client.class);
        client = clientDao.getClient( id );

        /* Validation du photo de Profil. */
        String nomFichier = null;
        InputStream contenuFichier = null;
        try {
            Part part = request.getPart( CHAMP_PHOTO_PROFIL );
            /*
             * Il faut déterminer s'il s'agit bien d'un champ de type fichier :
             * on délègue cette opération à la méthode utilitaire
             * getNomFichier().
             */
            nomFichier = getNomFichier( part );

            /*
             * Si la méthode a renvoyé quelque chose, il s'agit donc d'un champ
             * de type fichier (input type="file").
             */
            if ( nomFichier != null && !nomFichier.isEmpty() ) {
                /*
                 * Antibug pour Internet Explorer, qui transmet pour une raison
                 * mystique le chemin du fichier local à la machine du client...
                 * 
                 * Ex : C:/dossier/sous-dossier/fichier.ext
                 * 
                 * On doit donc faire en sorte de ne sélectionner que le nom et
                 * l'extension du fichier, et de se débarrasser du superflu.
                 */
                nomFichier = nomFichier.substring( nomFichier.lastIndexOf( '/' ) + 1 )
                        .substring( nomFichier.lastIndexOf( '\\' ) + 1 );

                /* Récupération du contenu du fichier */
                contenuFichier = part.getInputStream();

            }
        } catch ( IllegalStateException e ) {
            /*
             * Exception retournée si la taille des données dépasse les limites
             * définies dans la section <multipart-config> de la déclaration de
             * notre servlet d'upload dans le fichier web.xml
             */
            e.printStackTrace();
            setErreur( CHAMP_PHOTO_PROFIL, "Les données envoyées sont trop volumineuses." );
        } catch ( IOException e ) {
            /*
             * Exception retournée si une erreur au niveau des répertoires de
             * stockage survient (répertoire inexistant, droits d'accès
             * insuffisants, etc.)
             */
            e.printStackTrace();
            setErreur( CHAMP_PHOTO_PROFIL, "Erreur de configuration du serveur." );
        } catch ( ServletException e ) {
            /*
             * Exception retournée si la requête n'est pas de type
             * multipart/form-data. Cela ne peut arriver que si l'utilisateur
             * essaie de contacter la servlet d'upload par un formulaire
             * différent de celui qu'on lui propose... pirate ! :|
             */
            e.printStackTrace();
            setErreur( CHAMP_PHOTO_PROFIL,
                    "Ce type de requête n'est pas supporté, merci d'utiliser le formulaire prévu pour envoyer votre fichier." );
        }

        /* Si aucune erreur n'est survenue jusqu'à présent */
        if ( erreurs.isEmpty() ) {
            try {
                validationFichier( nomFichier, contenuFichier );
            } catch ( Exception e ) {
                setErreur( CHAMP_PHOTO_PROFIL, e.getMessage() );
            }
            client.setPhotoProfile( nomFichier );
        }

        /* Si aucune erreur n'est survenue jusqu'à présent */
        if ( erreurs.isEmpty() ) {
            /* Écriture du fichier sur le disque */
            try {
                ecrireFichier( contenuFichier, nomFichier, uploadPath );
            } catch ( Exception e ) {
                setErreur( CHAMP_PHOTO_PROFIL, "Erreur lors de l'écriture du fichier sur le disque." );
            }
        }

        /* Initialisation du résultat global de la validation. */
        if ( erreurs.isEmpty() ) {
            resultat = "la photo de profil est modifié avec succès";
        } else {
            resultat = "Echec lors de la modification de la photo de profil";
        }

        return client;
    }
    
    public Client connecterClient( HttpServletRequest request ) {
        /* Récupération des champs du formulaire */
        String email = getValeurChamp( request, CHAMP_EMAIL );
        String motDePasse = getValeurChamp( request, CHAMP_PASSWORD);

        Client client = new Client();

        /* Validation du champ email. */
        try {
            validationEmail( email );
        } catch ( Exception e ) {
            setErreur( CHAMP_EMAIL, e.getMessage() );
        }
        client.setEmail( email );

        /* Validation du champ mot de passe. */
        try {
            validationMotDePasse( motDePasse );
        } catch ( Exception e ) {
            setErreur( CHAMP_PASSWORD, e.getMessage() );
        }
        client.setPassword( motDePasse );

        /* Initialisation du résultat global de la validation. */
        if ( erreurs.isEmpty() ) {
            resultat = "Succès de la connexion.";
        } else {
            resultat = "Échec de la connexion.";
        }

        return client;
    }
    /**
     * Valide le mot de passe saisi.
     */
    private String crypterMotDePasse( String motDePasse ) {
        String sha256hex = org.apache.commons.codec.digest.DigestUtils.sha256Hex( motDePasse );
        return sha256hex;
    }
}
