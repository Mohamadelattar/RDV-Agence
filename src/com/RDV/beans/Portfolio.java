package com.RDV.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table( name = "portfolio" )
public class Portfolio {
	
	@Id
    @GeneratedValue( strategy = GenerationType.IDENTITY)
	private int idPortfolio;
	@Column( name = "nom" )
	private String nom;
	@Column( name = "prenom" )
	private String prenom;
	@Column( name = "presentation" )
	private String presentation;
	@Column( name = "formation" )
	private String formation;
	@Column( name = "experience" )
	private String experience;
	
	public Portfolio(int idPortfolio, String nom, String prenom, String presentation, String formation,String experience) {
		super();
		this.idPortfolio = idPortfolio;
		this.nom = nom;
		this.prenom = prenom;
		this.presentation = presentation;
		this.formation = formation;
		this.experience = experience;
	}
	
	 
	public Portfolio() {
		// TODO Auto-generated constructor stub
	}


	public int getIdPortfolio() {
		return idPortfolio;
	}


	public void setIdPortfolio(int idPortfolio) {
		this.idPortfolio = idPortfolio;
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
	public String getPresentation() {
		return presentation;
	}
	public void setPresentation(String presentation) {
		this.presentation = presentation;
	}
	public String getFormation() {
		return formation;
	}
	public void setFormation(String formation) {
		this.formation = formation;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	
	

}
