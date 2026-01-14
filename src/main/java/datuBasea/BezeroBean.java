package datuBasea;

/**
 * Sistemako Bezero (Kliente) entitatea irudikatzen duen JavaBean klasea.
 * Bezero baten kontaktua eta datu pertsonalak ditu.
 * 
 * @version 1.0
 */
public class BezeroBean {
    private int id;           /** Bezeroaren identifikatzaile bakarra */
    private String izena;     /** Bezeroaren izen osoa */
    private String helbidea;  /** Helbide postalak */
    private String emaila;    /** Posta elektronikoa */
    private String tlf;       /** Telefono zenbakia */
    
    /**
     * Bezero huts bat hasieratzen duen eraikitzaile lehenetsia.
     */
	
	public BezeroBean() {
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

	public String getHelbidea() {
		return helbidea;
	}

	public void setHelbidea(String helbidea) {
		this.helbidea = helbidea;
	}

	public String getEmaila() {
		return emaila;
	}

	public void setEmaila(String emaila) {
		this.emaila = emaila;
	}

	public String getTlf() {
		return tlf;
	}

	public void setTlf(String tlf) {
		this.tlf = tlf;
	}

}
