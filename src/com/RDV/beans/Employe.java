package com.RDV.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table( name = "employe" )
public class Employe {

    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    private int    id;
    @Column( name = "cin" )
    private String cin;
    @Column( name = "nom" )
    private String nom;
    @Column( name = "prenom" )
    private String prenom;
    @Column( name = "num_telephone" )
    private String numTele;
    @Column( name = "ville" )
    private String ville;
    @Column( name = "email" )
    private String email;
    @Column( name = "mot_de_passe" )
    private String password;
    @Column( name = "ancien_mot_de_passe" )
    private String oldPassword;
    @Column( name = "photo_profil" )
    private String photoProfile;
    @Column( name = "date_debut" )
    private String date_debut;
    @Column( name = "isAdmin" )
    private int    isAdmin;
    @Column( name = "isConge" )
    private int    isConge;
    @Column( name = "nombre_de_mois" )
    private int    monthsNumber;
    @Column( name = "statut_payment" )
    private int    paymentStatus;

    private int    showPaymentOption;

    public Employe() {
        super();
        // TODO Auto-generated constructor stub
    }

    public Employe( String cin, String nom, String prenom, String numTele, String ville, String email,
            String photoProfile ) {
        super();
        this.cin = cin;
        this.nom = nom;
        this.prenom = prenom;
        this.numTele = numTele;
        this.ville = ville;
        this.email = email;
        this.photoProfile = photoProfile;
    }

    public int getId() {
        return id;
    }

    public void setId( int id ) {
        this.id = id;
    }

    public String getCin() {
        return cin;
    }

    public void setCin( String cin ) {
        this.cin = cin;
    }

    public String getNom() {
        return nom;
    }

    public void setNom( String nom ) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom( String prenom ) {
        this.prenom = prenom;
    }

    public String getNumTele() {
        return numTele;
    }

    public void setNumTele( String numTele ) {
        this.numTele = numTele;
    }

    public String getVille() {
        return ville;
    }

    public void setVille( String ville ) {
        this.ville = ville;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail( String email ) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword( String password ) {
        this.password = password;
    }

    public String getOldPassword() {
        return oldPassword;
    }

    public void setOldPassword( String oldPassword ) {
        this.oldPassword = oldPassword;
    }

    public String getPhotoProfile() {
        return photoProfile;
    }

    public void setPhotoProfile( String photoProfile ) {
        this.photoProfile = photoProfile;
    }

    public String getDate_debut() {
        return date_debut;
    }

    public void setDate_debut( String date_debut ) {
        this.date_debut = date_debut;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin( int isAdmin ) {
        this.isAdmin = isAdmin;
    }

    public int getIsConge() {
        return isConge;
    }

    public void setIsConge( int isConge ) {
        this.isConge = isConge;
    }

    public int getMonthsNumber() {
        return monthsNumber;
    }

    public void setMonthsNumber( int monthsNumber ) {
        this.monthsNumber = monthsNumber;
    }

    public int getPaymentStatus() {
        return paymentStatus;
    }

    public void setPaymentStatus( int paymentStatus ) {
        this.paymentStatus = paymentStatus;
    }

    public int getShowPaymentOption() {
        return showPaymentOption;
    }

    public void setShowPaymentOption( int showPaymentOption ) {
        this.showPaymentOption = showPaymentOption;
    }

}
