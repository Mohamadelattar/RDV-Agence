package com.RDV.beans;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
@Table(name="client")
public class Client {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column(name="cin")
	private String cin;
	
	@Column(name="prenom")
	private String prenom;
	
	@Column(name="nom")
	private String nom;
	
	@Column(name="adresse")
	private String adresse;
	
	@Column(name="numTele")
	private String numTele;
	
	@Column(name="email")
	private String email;
	
	@Column(name="photoProfile")
	private String photoProfile;
	
	@Column( name = "mot_de_passe" )
    private String password;
	
	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}
	@Column( name = "ancien_mot_de_passe" )
    private String oldPassword;
	
	@Column( name = "date_debut" )
    private String date_debut;
	
	public String getDate_debut() {
		return date_debut;
	}
	public void setDate_debut(String date_debut) {
		this.date_debut = date_debut;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCin() {
		return cin;
	}
	public void setCin(String cin) {
		this.cin = cin;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getNumTele() {
		return numTele;
	}
	public void setNumTele(String numTele) {
		this.numTele = numTele;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getOldPassword() {
		return oldPassword;
	}
	public String getPhotoProfile() {
		return photoProfile;
	}
	public void setPhotoProfile(String photoProfile) {
		this.photoProfile = photoProfile;
	}
	
	public Client () {
	}
	public Client (String cin) {
		this.cin = cin;
	}
	public Client( String cin, String nom, String prenom, String numTele, String adresse, String email,
            String photoProfile ) {
        super();
        this.cin = cin;
        this.nom = nom;
        this.prenom = prenom;
        this.numTele = numTele;
        this.adresse = adresse;
        this.email = email;
        this.photoProfile = photoProfile;
    }
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
}