package kontrolagailua;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import datuBasea.Konexioa;

/**
 * Datu-basearen egitura aldatzeko Kontrolagailu klasea.
 * Zehazki, SOLDATA zutabea gehitzen du LANGILE taulan.
 * 
 * @version 1.0
 * @warning Klase honek DDL eragiketak exekutatzen ditu datu-basearen egitura aldatzen
 */

public class EremuaGehitu {

	private static final String SOLDATA_EREMUA_EZABATU = "ALTER TABLE LANGILE DROP COLUMN SOLDATA";
	private static final String SOLDATA_EREMUA_GEHITU = "ALTER TABLE LANGILE ADD SOLDATA INT";

	 /**
     * Eraikitzaile lehenetsia.
     */
	
	public EremuaGehitu() {

	}

	 /**
     * SOLDATA eremua sortzen du LANGILE taulan.
     * Lehenik zutabea ezabatzen du existitzen bada, gero berriz sortzen du.
     * Eragiketa hau idempotentea da.
     * 
     * @throws SQLException taula ez bada existitzen edo baimen errore bat badago
     */
	
	public void sortuSoldataEremua() {
		Konexioa db = new Konexioa();
		Connection konexioa = null;
		PreparedStatement stmt = null;

		try {
			konexioa = db.konexioaBd();
			stmt = konexioa.prepareStatement(SOLDATA_EREMUA_EZABATU);
			stmt.executeUpdate();
			stmt = konexioa.prepareStatement(SOLDATA_EREMUA_GEHITU);
			stmt.executeUpdate();
			System.out.println("SOLDATA eremua gehitu da.");

			stmt.close();
			konexioa.close();

		} catch (SQLException e) {
			System.out.println("ERROREA: " + e);
			System.out.println("ERROREA: " + e.getCause());
		}

	}

}
