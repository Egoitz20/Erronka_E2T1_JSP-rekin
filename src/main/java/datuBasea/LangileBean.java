package datuBasea;

import java.sql.Date;

public class LangileBean {

	private int id;
	private String izena;
	private String erabiltzailea;
	private String pasahitza;
	private String emaila;
	private String telefonoa;
	private Date kontratazioData;
	private int idNagusi;
	private int soldata;
	private String lanpostua;
	
	
	public LangileBean() {
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getIzena() {
		return izena;
	}


	public void setIzena(String izena) {
		this.izena = izena;
	}


	public String getErabiltzailea() {
		return erabiltzailea;
	}


	public void setErabiltzailea(String erabiltzailea) {
		this.erabiltzailea = erabiltzailea;
	}


	public String getPasahitza() {
		return pasahitza;
	}


	public void setPasahitza(String pasahitza) {
		this.pasahitza = pasahitza;
	}


	public String getEmaila() {
		return emaila;
	}


	public void setEmaila(String emaila) {
		this.emaila = emaila;
	}


	public String getTelefonoa() {
		return telefonoa;
	}


	public void setTelefonoa(String telefonoa) {
		this.telefonoa = telefonoa;
	}


	public Date getKontratazioData() {
		return kontratazioData;
	}


	public void setKontratazioData(Date kontratazioData) {
		this.kontratazioData = kontratazioData;
	}


	public int getIdNagusi() {
		return idNagusi;
	}


	public void setIdNagusi(int idNagusi) {
		this.idNagusi = idNagusi;
	}


	public int getSoldata() {
		return soldata;
	}


	public void setSoldata(int soldata) {
		this.soldata = soldata;
	}


	public String getLanpostua() {
		return lanpostua;
	}


	public void setLanpostua(String lanpostua) {
		this.lanpostua = lanpostua;
	}

	
	
}
