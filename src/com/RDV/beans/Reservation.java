package com.RDV.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table( name = "reservation2" )
public class Reservation {

	@Id
    @GeneratedValue( strategy = GenerationType.AUTO )
	private int idReservation;
	@Column( name = "cin" )
	private String cinClient;
	@Column( name = "date" )
	private String dateReservation;
	@Column( name = "heure" )
	private String heureReservation;
	@Column( name = "idClient" )
	private int	idClient;
	@Column( name = "statut" )
	private String statutReservation;
	
	public Reservation() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Reservation(int idReservation, String dateReservation, String heureReservation, int idClient,
			String statutReservation) {
		super();
		this.idReservation = idReservation;
		this.dateReservation = dateReservation;
		this.heureReservation = heureReservation;
		this.idClient = idClient;
		this.statutReservation = statutReservation;
	}

	public int getIdReservation() {
		return idReservation;
	}

	public void setIdReservation(int idReservation) {
		this.idReservation = idReservation;
	}
	
	public String getCinClient() {
		return cinClient;
	}

	public void setCinClient(String cinClient) {
		this.cinClient = cinClient;
	}

	public String getDateReservation() {
		return dateReservation;
	}

	public void setDateReservation(String dateReservation) {
		this.dateReservation = dateReservation;
	}

	public String getHeureReservation() {
		return heureReservation;
	}

	public void setHeureReservation(String heureReservation) {
		this.heureReservation = heureReservation;
	}

	public int getIdClient() {
		return idClient;
	}

	public void setIdClient(int idClient) {
		this.idClient = idClient;
	}

	public String getStatutReservation() {
		return statutReservation;
	}

	public void setStatutReservation(String statutReservation) {
		this.statutReservation = statutReservation;
	}

}
