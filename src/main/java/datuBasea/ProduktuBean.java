package datubasea;

import java.sql.Date;

/**
 * Sistemako Produktu entitatea irudikatzen duen JavaBean klasea.
 * Produktuaren informazio osoa du, saltze, inbentario eta beste entitateekin
 * dituen harremanen datuak barne.
 * 
 * Oharra: Existitzen den kodean inferitutako klasea, ez dago esplizituki definituta.
 * 
 * @version 1.0
 */

public class ProduktuBean {
	
    private int id;                 /** Produktuaren identifikatzaile bakarra */
    private String produktuIzena;   /** Produktuaren izena */
    private String deskribapena;    /** Deskribapen xehatua */
    private double balioa;          /** Kostu balioa */
    private double salneurria;      /** Salmenta prezioa */
    private String kategoriaIzena;  /** Produktuaren kategoria */
    private int kopurua;            /** Stockean dagoen kantitatea */
    private Date eskaeraData;       /** Eskaeraren data */
    private String eskaeraEgoera;   /** Eskaeraren egoera */
    private String bezeroIzena;     /** Erosle bezeroaren izena */
    private String bezeroEmaila;    /** Bezeroaren posta elektronikoa */
    private String saltzaileIzena;  /** Saltzailearen izena */
    private String saltzailea;      /** Saltzailearen erabiltzailea */
    private String langileEmaila;   /** Arduradun langilearen posta elektronikoa */
    private int produktuKopuru;     /** Eskaeran dagoen produktu kopurua */
    private String biltegiIzena;    /** Biltegiaren izena */
    
    /**
     * Produktu huts bat hasieratzen duen eraikitzaile lehenetsia.
     */
	
	public ProduktuBean() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProduktuIzena() {
		return produktuIzena;
	}

	public void setProduktuIzena(String produktuIzena) {
		this.produktuIzena = produktuIzena;
	}

	public String getDeskribapena() {
		return deskribapena;
	}

	public void setDeskribapena(String deskribapena) {
		this.deskribapena = deskribapena;
	}

	public double getBalioa() {
		return balioa;
	}

	public void setBalioa(double balioa) {
		this.balioa = balioa;
	}

	public double getSalneurria() {
		return salneurria;
	}

	public void setSalneurria(double salneurria) {
		this.salneurria = salneurria;
	}

	public String getKategoriaIzena() {
		return kategoriaIzena;
	}

	public void setKategoriaIzena(String kategoriaIzena) {
		this.kategoriaIzena = kategoriaIzena;
	}

	public int getKopurua() {
		return kopurua;
	}

	public void setKopurua(int kopurua) {
		this.kopurua = kopurua;
	}

	public Date getEskaeraData() {
		return eskaeraData;
	}

	public void setEskaeraData(Date eskaeraData) {
		this.eskaeraData = eskaeraData;
	}

	public String getEskaeraEgoera() {
		return eskaeraEgoera;
	}

	public void setEskaeraEgoera(String eskaeraEgoera) {
		this.eskaeraEgoera = eskaeraEgoera;
	}

	public String getBezeroIzena() {
		return bezeroIzena;
	}

	public void setBezeroIzena(String bezeroIzena) {
		this.bezeroIzena = bezeroIzena;
	}

	public String getBezeroEmaila() {
		return bezeroEmaila;
	}

	public void setBezeroEmaila(String bezeroEmaila) {
		this.bezeroEmaila = bezeroEmaila;
	}

	public String getSaltzaileIzena() {
		return saltzaileIzena;
	}

	public void setSaltzaileIzena(String saltzaileIzena) {
		this.saltzaileIzena = saltzaileIzena;
	}
	

	public String getSaltzailea() {
		return saltzailea;
	}

	public void setSaltzailea(String saltzailea) {
		this.saltzailea = saltzailea;
	}

	public String getLangileEmaila() {
		return langileEmaila;
	}

	public void setLangileEmaila(String langileEmaila) {
		this.langileEmaila = langileEmaila;
	}

	public int getProduktuKopuru() {
		return produktuKopuru;
	}

	public void setProduktuKopuru(int produktuKopuru) {
		this.produktuKopuru = produktuKopuru;
	}

	public String getBiltegiIzena() {
		return biltegiIzena;
	}

	public void setBiltegiIzena(String biltegiIzena) {
		this.biltegiIzena = biltegiIzena;
	}

	
}
