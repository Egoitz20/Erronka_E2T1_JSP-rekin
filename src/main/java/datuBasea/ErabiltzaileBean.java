package datubasea;

/**
 * Sistemako Erabiltzaile entitatea irudikatzen duen JavaBean klasea.
 * Sistemako erabiltzaile baten atributu oinarrizkoak ditu.
 * 
 * @version 1.0
 */

public class ErabiltzaileBean {

	private int id;           /** Erabiltzailearen identifikatzaile bakarra */
	private String izena;     /** Saioa hasteko erabiltzaile-izena */
	private String pasahitza; /** Enkriptatutako edo testu lauko pasahitza */
	    
	/**
	 * Erabiltzaile huts bat hasieratzen duen eraikitzaile lehenetsia.
	 */
	
	public ErabiltzaileBean() {
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

	public String getPasahitza() {
		return pasahitza;
	}

	public void setPasahitza(String pasahitza) {
		this.pasahitza = pasahitza;
	}

	
	
}
