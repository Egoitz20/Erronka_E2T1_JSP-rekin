package datuBasea;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * MySQL datu-basearekin konexioa kudeatzeko arduraduna den klasea.
 * Datu-basearen konexioak eskaintzeko Singleton patroiaren antzekoa inplementatzen du.
 * 
 * @version 1.0
 * @author Sistemaren Garatzailea
 */

public class Konexioa {
	
	private String url;
	private String erabiltzaile;
	private String pasahitza;

	/**
     * Lehenetsitako balioekin konexioa hasieratzen duen eraikitzailea.
     * URL: jdbc:mysql://localhost:3306/e2t1dbaplikazioa
     * Erabiltzailea: root
     * Pasahitza: root
     */
	
	public Konexioa() {
		
		this.url = "jdbc:mysql://localhost:3306/e2t1dbaplikazioa?useSSL=false&serverTimezone=UTC"; 
		this.erabiltzaile = "root"; 
		this.pasahitza = "root"; 
	}

	 /**
     * Konexio pertsonalizatuak egiteko parametrodun eraikitzailea.
     * 
     * @param url Datu-basearen helbidea
     * @param erabiltzaile Konexiorako erabiltzaile-izena
     * @param pasahitza Konexiorako pasahitza
     */
	
	public Konexioa(String url, String erabiltzaile, String pasahitza) {
		
		this.url = url;
		this.erabiltzaile = erabiltzaile;
		this.pasahitza = pasahitza;
	}

	/**
     * Datu-basearekin konexioa ezartzen eta itzultzen du.
     * MySQL-ren JDBC driverra kargatzen eta konexio erroreak kudeatzen ditu.
     * 
     * @return Connection datu-basearekin konexioa duen objektua
     * @throws SQLException konektatzean errorea gertatzen bada
     * @throws ClassNotFoundException JDBC driverra ez bada aurkitzen
     */
	
	public Connection konexioaBd() {
		Connection konexioa = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			konexioa = DriverManager.getConnection(url, erabiltzaile, pasahitza);

			if (konexioa != null) {
				System.out.println("✅ Konexioa eginda! URL: " + url);
			} else {
				System.err.println("❌ Konexioa NULL da!");
			}

		} catch (ClassNotFoundException e) {
			System.err.println("❌ MySQL Driver-a ez dago: " + e.getMessage());
			e.printStackTrace();
		} catch (SQLException e) {
			System.err.println("❌ SQL errorea: " + e.getMessage());
			System.err.println("❌ URL: " + url);
			System.err.println("❌ Erabiltzaile: " + erabiltzaile);
			e.printStackTrace();
		}

		return konexioa;
	}

	/*
	 * public Connection konektatu() { Connection konekzioa = null; try {
	 * Class.forName("com.mysql.cj.jdbc.Driver"); String url =
	 * "jdbc:mysql://localhost:3306/'datuBaseIzena'"; String erabiltzaile = "root";
	 * String pasahitza = "root";
	 * 
	 * konekzioa = DriverManager.getConnection(url, erabiltzailea, pasahitza); }
	 * catch (Exception e) { e.printStackTrace(); } return konekzioa
	 * 
	 * }
	 */

}
