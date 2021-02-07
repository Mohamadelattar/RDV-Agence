package com.RDV.beans;
 

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table( name = "publication" )
public class Publication {
	
	@Id
	@GeneratedValue( strategy = GenerationType.IDENTITY)
    private int  id;
	@Column(name="titre")
	private String titre;
	@Column(name="contenu")
	private String contenu;
	@Column(name="image")
	private String image;
	@Column(name="date")
	private LocalDate date;
	@Column(name="idEmploye")
	private int idEmploye;

	public Publication() {
		// TODO Auto-generated constructor stub
	}

	
	public Publication(int id, String titre, String contenu, String image, LocalDate date, int idEmploye) {
		super();
		this.id = id;
		this.titre = titre;
		this.contenu = contenu;
		this.image = image;
		this.date = date;
		this.idEmploye = idEmploye;
	}


	public Publication(int id, String titre, String contenu, String image, int idEmploye) {
		super();
		this.id = id;
		this.titre = titre;
		this.contenu = contenu;
		this.image = image;
		//this.date = date;
		this.idEmploye = idEmploye;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	public String getContenu() {
		return contenu;
	}

	public void setContenu(String contenu) {
		this.contenu = contenu;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}


	public int getIdEmploye() {
		return idEmploye;
	}

	public void setIdEmploye(int idEmploye) {
		this.idEmploye = idEmploye;
	}
	
	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	
}
