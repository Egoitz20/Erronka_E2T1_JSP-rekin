package datubasea;

import java.sql.Date;

/**
 * Sistemako Langile (Enplegatu) entitatea irudikatzen duen JavaBean klasea.
 * Enpresako langileen lanari eta informazio pertsonalari buruzko datuak ditu.
 * 
 * @version 1.0
 */

public class LangileBean {
	
    private int id;                   /** Langilearen identifikatzaile bakarra */
    private String izena;             /** Izen osoa */
    private String erabiltzailea;     /** Sistemako erabiltzailea */
    private String pasahitza;         /** Pasahitza */
    private String emaila;            /** Enpresako posta elektronikoa */
    private String telefonoa;         /** Kontakturako telefonoa */
    private Date kontratazioData;     /** Kontratatze data */
    private int idNagusi;             /** Ikuskatzaile/buruaren IDa */
    private int soldata;              /** Soldata eurotan */
    private String lanpostua;         /** Lanpostua */
    
    /**
     * Langile huts bat hasieratzen duen eraikitzaile lehenetsia.
     */
	
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
