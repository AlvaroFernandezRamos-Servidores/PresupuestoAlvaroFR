<%-- 
    Document   : contenido
    Created on : Oct 15, 2018, 5:21:40 PM
    Author     : atomsk
--%>

<%@page import="es.albarregas.presupuestoalvarofr.EleccionModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession();
    EleccionModel elec = (EleccionModel) sesion.getAttribute("eleccion");
    elec.setContenido(false);
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Perrito perito</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/style.css" rel="stylesheet">
    </head>
    <body role="main">
	<section>
	    <h1>Inserte sus datos</h1>
	    <form action="<%=request.getContextPath()%>/Contenido" method="post">
		<fieldset>
		    <input type="checkbox" name="accidentalDam" value="accidentalDam" id="accidentalDam" checked><label for="accidentalDam" >Cubrir daños accidentales</label>
		    <label>Cantidad que quiere asegurar</label>
		    <select name="cantidadAseg">
			<option value="10000">10.000</option>
			<option value="20000">20.000</option>
			<option value="30000">30.000</option>
			<option value="50000">50.000</option>
			<option value="100000">100.000</option>
		    </select>
		    <br>
		    <label>Franquicia</label>
		    <label>Ninguna</label><input type="radio" name="frank" value="0" checked>
		    <label>500</label><input type="radio" name="frank" value="500">
		    <label>1.000</label><input type="radio" name="frank" value="1000">
		</fieldset>
		<input type="submit" value="Enviar">
	    </form>
	</section>
	<div class="shapes">
	    <div class="shape2"></div>
	</div>
    </body>
</html>
