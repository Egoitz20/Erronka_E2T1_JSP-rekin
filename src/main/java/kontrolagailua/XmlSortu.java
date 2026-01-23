package kontrolagailua;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import datubasea.Konexioa;

/**
 * Langileen informazioa duten XML dokumentuak sortzeko Kontrolagailu klasea.
 * Ikuspegi berezi bat kontsultatzen du eta XML dokumentu ongi osatua sortzen du.
 * 
 * @version 1.0
 */

public class XmlSortu {

	private static final String LANGILE_INFORMAZIOA = "SELECT * FROM BISTA_LANGILE_INFORMAZIOA";
	  
    /**
     * Eraikitzaile lehenetsia.
     */
	
	public XmlSortu() {
	}

	/**
     * Langile guztien informazio osoa duen XML dokumentua sortzen du.
     * XML-ak datu pertsonalak, lan informazioa eta hierarkia egitura ditu.
     * 
     * @return String XML dokumentu osoarekin
     * @throws SQLException datu-basea kontsultatzean errorea gertatzen bada
     */
	
	public String xml() {
		StringBuilder xml = new StringBuilder();
		xml.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n");
		xml.append("<langileak>\n");

		Konexioa db = new Konexioa();
		Connection konexioa = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			konexioa = db.konexioaBd();
			stmt = konexioa.createStatement();
			rs = stmt.executeQuery(LANGILE_INFORMAZIOA);

			while (rs.next()) {
				xml.append("<langile id=\"").append(rs.getInt("ID")).append("\">\n");
				xml.append("    <izena>").append(escapeXML(rs.getString("IZENA"))).append("</izena>\n");
				xml.append("    <abizena>").append(escapeXML(rs.getString("ABIZENA"))).append("</abizena>\n");
				xml.append("    <emaila>").append(escapeXML(rs.getString("EMAILA"))).append("</emaila>\n");
				xml.append("    <telefonoa>").append(escapeXML(rs.getString("TELEFONOA"))).append("</telefonoa>\n");
				xml.append("    <kontratazio_data>").append(rs.getDate("KONTRATAZIO_DATA"))
						.append("</kontratazio_data>\n");

				if (rs.getInt("ID_NAGUSI") != 0) {
					xml.append("    <nagusia>\n");
					xml.append("        <izena>").append(escapeXML(rs.getString("NAGUSI_IZENA"))).append("</izena>\n");
					xml.append("        <abizena>").append(escapeXML(rs.getString("NAGUSI_ABIZENA")))
							.append("</abizena>\n");
					xml.append("    </nagusia>\n");
				} else {
					xml.append("    <nagusia>Ez du nagusirik</nagusia>\n");
				}

				String lanpostuDesc = rs.getString("LANPOSTU_DESK");
				String erabiltzailea = rs.getString("ERABILTZAILEA");

				if (lanpostuDesc != null && !lanpostuDesc.isEmpty()) {
					xml.append("    <mota>bulegari</mota>\n");
					xml.append("    <lanpostu_informazioa>\n");
					xml.append("        <id_lanpostu>").append(rs.getInt("ID_LANPOSTU")).append("</id_lanpostu>\n");
					xml.append("        <deskribapena>").append(escapeXML(lanpostuDesc)).append("</deskribapena>\n");
					xml.append("    </lanpostu_informazioa>\n");
				} else if (erabiltzailea != null && !erabiltzailea.isEmpty()) {
					xml.append("    <mota>saltzaile</mota>\n");
					xml.append("    <erabiltzaile_informazioa>\n");
					xml.append("        <erabiltzailea>").append(escapeXML(erabiltzailea)).append("</erabiltzailea>\n");
					xml.append("        <egiaztagiria>").append(escapeXML(rs.getString("PASAHITZA")))
							.append("</egiaztagiria>\n");
					xml.append("    </erabiltzaile_informazioa>\n");
				} else {
					xml.append("    <mota>bestelakoa</mota>\n");
				}

				xml.append("</langile>\n");
			}

			rs.close();
			stmt.close();
			konexioa.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		xml.append("</langileak>");
		return xml.toString();
	}
	
	 /**
     * XML karaktere bereziak ihesarazteko laguntzaile metodoa.
     * &, <, >, ", ' karakterak bere HTML/XML entitate baliokideetan bihurtzen ditu.
     * 
     * @param input Ihesarazi beharreko testua
     * @return Karaktere bereziak ihesarazitako testua
     * @private
     */

	private String escapeXML(String input) {
		if (input == null)
			return "";
		return input.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;").replace("\"", "&quot;")
				.replace("'", "&apos;");
	}
}