package kontrolagailua;

import java.sql.Connection;
import java.sql.*;
import java.util.ArrayList;

import datubasea.BezeroBean;
import datubasea.BiltegiBean;
import datubasea.ErabiltzaileBean;
import datubasea.Konexioa;
import datubasea.LangileBean;
import datubasea.ProduktuBean;

/**
 * Taula guztietako datuak berreskuratzeko Kontrolagailu nagusia.
     * Facade patroia inplementatzen du sistemako entitate guztiak kontsultatzeko
     * interfaze bateratu bat eskaintzeko.
 * 
 * @version 1.0
 */

public class TaulakHandler {
	
	// Informazio ikuspegiak kontsultatzeko SQL konstanteak
	
	private static final String ERABILTZAILE_TAULA_BISTARATU = "SELECT * FROM ERABILTZAILE_INFO";
	private static final String BEZERO_TAULA_BISTARATU = "SELECT * FROM BEZERO_INFO";
	private static final String BILTEGI_TAULA_BISTARATU = "SELECT * FROM BILTEGI_INFO";
	private static final String PRODUKTU_TAULA_BISTARATU = "SELECT * FROM PRODUKTU_INFO";
	private static final String LANGILE_TAULA_BISTARATU = "SELECT * FROM LANGILE_INFO";

	/**
     * Eraikitzaile lehenetsia.
     */
	
	public TaulakHandler() {
	}

	/**
     * Sistemako erabiltzaile guztiak eskuratzen ditu.
     * 
     * @return ErabiltzaileBean-eko ArrayList erabiltzaile guztiekin
     */
	
	public ArrayList<ErabiltzaileBean> getErabiltzaile() {

		Konexioa db = new Konexioa();
		Connection konexioa = null;
		Statement stmt = null;
		ResultSet rs = null;
		ErabiltzaileBean erregistro;
		ArrayList<ErabiltzaileBean> taulaErabiltzaile = new ArrayList<ErabiltzaileBean>();

		try {

			konexioa = db.konexioaBd();
			stmt = konexioa.createStatement();
			rs = stmt.executeQuery(ERABILTZAILE_TAULA_BISTARATU);

			while (rs.next()) {
				erregistro = new ErabiltzaileBean();

				erregistro.setId(rs.getInt("ID"));
				erregistro.setIzena(rs.getString("IZENA"));
				erregistro.setPasahitza(rs.getString("PASAHITZA"));

				taulaErabiltzaile.add(erregistro);

			}

			rs.close();
			stmt.close();
			konexioa.close();

		} catch (SQLException e) {
			System.out.println("Errorea: " + e);
			System.out.println("Errorea: " + e.getCause());

		}

		return taulaErabiltzaile;

	}
	
	/**
     * Sistemako bezero guztiak eskuratzen ditu.
     * 
     * @return BezeroBean-eko ArrayList bezero guztiekin
     */
	
	public ArrayList<BezeroBean> getBezero() {

		Konexioa db = new Konexioa();
		Connection konexioa = null;
		Statement stmt = null;
		ResultSet rs = null;
		BezeroBean erregistro;
		ArrayList<BezeroBean> taulaBezero = new ArrayList<BezeroBean>();

		try {

			konexioa = db.konexioaBd();
			stmt = konexioa.createStatement();
			rs = stmt.executeQuery(BEZERO_TAULA_BISTARATU);

			while (rs.next()) {
				erregistro = new BezeroBean();

				erregistro.setId(rs.getInt("ID"));
				erregistro.setIzena(rs.getString("IZENA"));
				erregistro.setHelbidea(rs.getString("HELBIDEA"));
				erregistro.setEmaila(rs.getString("EMAILA"));
				erregistro.setTlf(rs.getString("ZENBAKIA"));

				taulaBezero.add(erregistro);

			}

			rs.close();
			stmt.close();
			konexioa.close();

		} catch (SQLException e) {
			System.out.println("Errorea: " + e);
			System.out.println("Errorea: " + e.getCause());

		}

		return taulaBezero;

	}
	
	/**
     * Sistemako biltegi guztiak eskuratzen ditu.
     * 
     * @return BiltegiBean-eko ArrayList biltegi guztiekin
     */
	
	public ArrayList<BiltegiBean> getBiltegi() {

		Konexioa db = new Konexioa();
		Connection konexioa = null;
		Statement stmt = null;
		ResultSet rs = null;
		BiltegiBean erregistro;
		ArrayList<BiltegiBean> taulaBiltegi = new ArrayList<BiltegiBean>();

		try {

			konexioa = db.konexioaBd();
			stmt = konexioa.createStatement();
			rs = stmt.executeQuery(BILTEGI_TAULA_BISTARATU);

			while (rs.next()) {
				erregistro = new BiltegiBean();

				erregistro.setId(rs.getInt("ID"));
				erregistro.setIzena(rs.getString("IZENA"));
				erregistro.setHelbidea(rs.getString("HELBIDEA"));
				erregistro.setPostaKodea(rs.getString("POSTAKODEA"));
				erregistro.setUdalerria(rs.getString("UDALERRIA"));
				erregistro.setProbintzia(rs.getString("PROBINTZIA"));
				erregistro.setIdHerrialde(rs.getString("ID_HERRIALDE"));
				erregistro.setHerrialde(rs.getString("HERRIALDE"));
				erregistro.setKontinente(rs.getString("KONTINENTE"));

				taulaBiltegi.add(erregistro);

			}

			rs.close();
			stmt.close();
			konexioa.close();

		} catch (SQLException e) {
			System.out.println("Errorea: " + e);
			System.out.println("Errorea: " + e.getCause());

		}

		return taulaBiltegi;

	}
	
	  
	 /**
     * Sistemako produktu guztiak eskuratzen ditu.
     * Bezeroekin, saltzaileekin eta biltegiekin lotutako informazioa barne.
     * 
     * @return ProduktuBean-eko ArrayList produktu guztiekin
     */
	
	public ArrayList<ProduktuBean> getProduktu() {

		Konexioa db = new Konexioa();
		Connection konexioa = null;
		Statement stmt = null;
		ResultSet rs = null;
		ProduktuBean erregistro;
		ArrayList<ProduktuBean> taulaProduktu = new ArrayList<ProduktuBean>();

		try {

			konexioa = db.konexioaBd();
			stmt = konexioa.createStatement();
			rs = stmt.executeQuery(PRODUKTU_TAULA_BISTARATU);

			while (rs.next()) {
				erregistro = new ProduktuBean();

				erregistro.setId(rs.getInt("ID"));
				erregistro.setProduktuIzena(rs.getString("PRODUKTU_IZENA"));
				erregistro.setDeskribapena(rs.getString("DESKRIBAPENA"));
				erregistro.setBalioa(rs.getDouble("BALIOA"));
				erregistro.setSalneurria(rs.getDouble("SALNEURRIA"));
				erregistro.setKategoriaIzena(rs.getString("KATEGORIA_IZENA"));
				erregistro.setKopurua(rs.getInt("KOPURUA"));
				erregistro.setEskaeraData(rs.getDate("ESKAERA_DATA"));
				erregistro.setEskaeraEgoera(rs.getString("ESKAERA_EGOERA"));
				erregistro.setBezeroIzena(rs.getString("BEZERO_IZENA"));
				erregistro.setBezeroEmaila(rs.getString("BEZERO_EMAILA"));
				erregistro.setSaltzaileIzena(rs.getString("SALTZAILE_IZENA"));
				erregistro.setSaltzailea(rs.getString("SALTZAILEA"));
				erregistro.setLangileEmaila(rs.getString("LANGILE_EMAILA"));
				erregistro.setProduktuKopuru(rs.getInt("PRODUKTU_KOPURUA"));
				erregistro.setBiltegiIzena(rs.getString("BILTEGI_IZENA"));

				taulaProduktu.add(erregistro);

			}

			rs.close();
			stmt.close();
			konexioa.close();

		} catch (SQLException e) {
			System.out.println("Errorea: " + e);
			System.out.println("Errorea: " + e.getCause());

		}

		return taulaProduktu;

	}
	
	/**
     * Sistemako langile guztiak eskuratzen ditu.
     * Lanari eta soldatari buruzko informazio osoa barne.
     * 
     * @return LangileBean-eko ArrayList langile guztiekin
     */
	
	public ArrayList<LangileBean> getLangile() {

		Konexioa db = new Konexioa();
		Connection konexioa = null;
		Statement stmt = null;
		ResultSet rs = null;
		LangileBean erregistro;
		ArrayList<LangileBean> taulaLangile = new ArrayList<LangileBean>();

		try {

			konexioa = db.konexioaBd();
			stmt = konexioa.createStatement();
			rs = stmt.executeQuery(LANGILE_TAULA_BISTARATU);

			while (rs.next()) {
				erregistro = new LangileBean();

				erregistro.setId(rs.getInt("ID"));
				erregistro.setIzena(rs.getString("IZEN_ABIZENAK"));
				erregistro.setErabiltzailea(rs.getString("ERABILTZAILEA"));
				erregistro.setPasahitza(rs.getString("PASAHITZA"));
				erregistro.setEmaila(rs.getString("EMAILA"));
				erregistro.setTelefonoa(rs.getString("TELEFONOA"));
				erregistro.setKontratazioData(rs.getDate("KONTRATAZIO_DATA"));
				erregistro.setIdNagusi(rs.getInt("ID_NAGUSI"));
				erregistro.setSoldata(rs.getInt("SOLDATA"));
				erregistro.setLanpostua(rs.getString("LANPOSTUA"));

				taulaLangile.add(erregistro);

			}

			rs.close();
			stmt.close();
			konexioa.close();

		} catch (SQLException e) {
			System.out.println("Errorea: " + e);
			System.out.println("Errorea: " + e.getCause());

		}

		return taulaLangile;

	}
	
	
}
