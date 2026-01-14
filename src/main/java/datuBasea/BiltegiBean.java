package datuBasea;

/**
 * Sistemako Biltegi (Almacén) entitatea irudikatzen duen JavaBean klasea.
 * Biltegeen kokapen geografikoari eta informazioari buruzko datuak ditu.
 * 
 * @version 1.0
 */
public class BiltegiBean {
    private int id;               /** Biltegiaren identifikatzaile bakarra */
    private String izena;         /** Biltegiaren izena */
    private String helbidea;      /** Helbide fisikoa */
    private String postaKodea;    /** Posta kodea */
    private String udalerria;     /** Udalerria */
    private String probintzia;    /** Probintzia */
    private String idHerrialde;   /** Herrialdearen kodea */
    private String herrialde;     /** Herrialdearen izena */
    private String kontinente;    /** Kontinentea */
    
    /**
     * Biltegi huts bat hasieratzen duen eraikitzaile lehenetsia.
     */
	
	public BiltegiBean() {
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

	public String getPostaKodea() {
		return postaKodea;
	}

	public void setPostaKodea(String postaKodea) {
		this.postaKodea = postaKodea;
	}

	public String getUdalerria() {
		return udalerria;
	}

	public void setUdalerria(String udalerria) {
		this.udalerria = udalerria;
	}

	public String getProbintzia() {
		return probintzia;
	}

	public void setProbintzia(String probintzia) {
		this.probintzia = probintzia;
	}

	public String getIdHerrialde() {
		return idHerrialde;
	}

	public void setIdHerrialde(String idHerrialde) {
		this.idHerrialde = idHerrialde;
	}

	public String getHerrialde() {
		return herrialde;
	}

	public void setHerrialde(String herrialde) {
		this.herrialde = herrialde;
	}

	public String getKontinente() {
		return kontinente;
	}

	public void setKontinente(String kontinente) {
		this.kontinente = kontinente;
	}

	
}
