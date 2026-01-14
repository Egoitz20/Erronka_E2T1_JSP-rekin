<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% 
    /**
     * Sistemako menu nagusia saioa hasi ondoren.
     * Sistemako funtzionalitate guztietara sarbidea ematen du.
     * 
     * @sessionAttribute erabiltzailea Saioa hasitako erabiltzailearen izena
     * @links 
     *   - erabiltzaileGehiketa/erabiltzaileaGehitu.jsp
     *   - xml/xmlSortu.jsp
     *   - datuBaseEguneraketa/datuBaseEguneratu.jsp
     *   - taulakErakutsi/datuakErakutsi.jsp
     *   - irten.jsp
     */
     
    String erabiltzailea = (String) session.getAttribute("erabiltzailea"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu printzipala</title>
</head>
<body>
	<div>
        <h1>Menu Nagusia</h1>
        <div>
            <h2>Ongi etorri, <%= erabiltzailea %>!</h2>
        </div>
        
        <ul>
            <li><a href="../erabiltzaileGehiketa/erabiltzaileaGehitu.jsp">1. Erabiltzailea gehitu</a></li>
            <li><a href="../xml/xmlSortu.jsp">2. XML-a sortu</a></li>
            <li><a href="../datuBaseEguneraketa/datuBaseEguneratu.jsp">3. Datu-basea eguneratu</a></li>
            <li><a href="../taulakErakutsi/datuakErakutsi.jsp">4. Datuak erakutsi</a></li>
            <li><a href="irten.jsp">5. Irten</a></li>
        </ul>
    </div>
</body>
</html>