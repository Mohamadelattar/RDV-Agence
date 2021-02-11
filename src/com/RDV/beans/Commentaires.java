package com.RDV.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="commentaire")
public class Commentaires {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	protected int id;
	
	@Column(name="contenu")
	protected String contenu;
	
	@Column( name = "idClient" )
	private int	idClient;
	
	public Commentaires() {
	}
	
	public int getIdClient() {
		return idClient;
	}

	public void setIdClient(int idClient) {
		this.idClient = idClient;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public String getContenu() {
		return contenu;
	}

	public void setContenu(String contenu) {
		this.contenu = contenu;
	}


	public Commentaires(String contenu) {
		super();
		this.contenu = contenu;
	}
	}
