package kontrolagailua;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import datuBasea.Konexioa;

/**
 * Datu-baseko datuak masiboki eguneratzeko Kontrolagailu klasea.
 * Zehazki, langileen eta saltzaileen soldatak eguneratzen ditu.
 * 
 * @version 1.0
 */

public class TaulaEguneratu {

	private static final String BULEGARI_LAPOSTU_ID_EKARRI = "SELECT ID FROM LANPOSTU";
	private static final String SALTZAILE_SOLDATA_EGUNERATU = "UPDATE LANGILE INNER JOIN SALTZAILE ON LANGILE.ID = SALTZAILE.ID SET LANGILE.SOLDATA = 30000";
	private static final String BULEGARI_SOLDATA_EGUNERATU = "UPDATE LANGILE INNER JOIN BULEGARI ON LANGILE.ID = BULEGARI.ID AND LANGILE.ID = ? SET LANGILE.SOLDATA = ?";

	   
	 /**
     * Eraikitzaile lehenetsia.
     */
	
	public TaulaEguneratu() {
	}

	 /**
     * Saltzaile guztien soldata 30000-ra ezartzen du.
     * Saltzaileak diren langileen LANGILE taula masiboki eguneratzen du.
     * 
     * @throws SQLException eguneraketan errorea gertatzen bada
     */
	
	public void saltzaileSoldata() {

		Konexioa db = new Konexioa();
		Connection konexioa = null;
		PreparedStatement stmt = null;

		try {
			konexioa = db.konexioaBd();
			stmt = konexioa.prepareStatement(SALTZAILE_SOLDATA_EGUNERATU);
			stmt.executeUpdate();

			stmt.close();
			konexioa.close();

		} catch (SQLException e) {
			System.out.println("ERROREA: " + e);
			System.out.println("ERROREA: " + e.getCause());
		}

	}

	 /**
     * Bulegarien (bulegari) soldata progresiboak ezartzen ditu.
     * Lehenengoari 30000 esleitzen dio eta hurrengo bakoitzari 1000 gehitzen dio.
     * 
     * @throws SQLException kontsultan edo eguneraketan errorea gertatzen bada
     */
	
	public void bulegariSoldata() {

		Konexioa db = new Konexioa();
		Connection konexioa = null;
		PreparedStatement stmt = null;
		PreparedStatement stmt2 = null;
		ResultSet rs = null;

		int soldata = 30000;
		int id;

		try {

			konexioa = db.konexioaBd();

			stmt = konexioa.prepareStatement(BULEGARI_LAPOSTU_ID_EKARRI);
			rs = stmt.executeQuery();

			while (rs.next()) {
				id = rs.getInt("ID");
				stmt2 = konexioa.prepareStatement(BULEGARI_SOLDATA_EGUNERATU);
				stmt2.setInt(1, id);
				stmt2.setInt(2, soldata);
				stmt2.executeUpdate();
				System.out.println("lanpostu" + id + "= soldata" + soldata);
				soldata += 1000;
				stmt2.close();
			}

			rs.close();
			stmt.close();
			konexioa.close();

		} catch (SQLException e) {
			System.out.println("ERROREA: " + e);
			System.out.println("ERROREA: " + e.getCause());
		}

	}

}
