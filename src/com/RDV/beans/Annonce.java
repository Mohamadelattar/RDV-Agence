package com.RDV.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table( name = "annonce" )
public class Annonce {
	
	@Id
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    private int    id;
	@Column(name="titre")
	private String titre;
	@Column(name="contenu")
	private String contenu;
	@Column(name="image")
	private String image;
	//@Column(name="date")
	//private Date date;
	@Column(name="idEmploye")
	private int idEmploye;

	public Annonce() {
		// TODO Auto-generated constructor stub
	}

	public Annonce(int id, String titre, String contenu, String image, int idEmploye) {
		super();
		this.id = id;
		this.titre = titre;
		this.contenu = contenu;
		this.image = image;
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
	
	

}
