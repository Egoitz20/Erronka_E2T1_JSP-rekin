package datuBasea;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Konexioa {

	private String url;
	private String erabiltzaile;
	private String pasahitza;

	public Konexioa() {
		// Konexioaren datuak
		this.url = "jdbc:mysql://localhost:3306/e2t1dbaplikazioa?useSSL=false&serverTimezone=UTC";// Datu Base URL-a
		this.erabiltzaile = "root"; // Datu-Baseko erabiltzailea
		this.pasahitza = "root"; // Datu-Baseko pasahitza
	}

	public Konexioa(String url, String erabiltzaile, String pasahitza) {
		this.url = url;
		this.erabiltzaile = erabiltzaile;
		this.pasahitza = pasahitza;
	}

	public Connection konexioaBd() {
		Connection konexioa = null;

		try {
			// 1. Cargar driver
			Class.forName("com.mysql.cj.jdbc.Driver");

			// 2. Establecer conexión
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
