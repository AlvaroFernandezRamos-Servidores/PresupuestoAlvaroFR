<%-- 
    Document   : edificio
    Created on : Oct 15, 2018, 5:21:34 PM
    Author     : atomsk
--%>

<%@page import="es.albarregas.presupuestoalvarofr.EleccionModel"%>
<%@page import="es.albarregas.presupuestoalvarofr.Eleccion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
	    <form action="<%=request.getContextPath()%>/Edificio" method="post">
		<fieldset class="subform">
		    <div>
			<label>Tipo de edificio</label>
			<select name="tipoEdif">
			    <option value="Piso">Piso</option>
			    <option value="Casa">Casa</option>
			    <option value="Adosado">Adosado</option>
			    <option value="Duplex">Duplex</option>
			    <option value="Chalet">Chalet</option>
			</select>
		    </div>
		    <div>
			<label>Número de habitaciones</label>
			<select name="nHab">
			    <option value="1">1</option>
			    <option value="2">2</option>
			    <option value="3">3</option>
			    <option value="4">4</option>
			    <option value="5">5 o más</option>
			</select>
		    </div>
		    <div>
			<label>Fecha de construcción</label>
			<select name="fechaCons">
			    <option value="1949">antes de 1950</option>
			    <option value="1950">entre 1950 y 1990</option>
			    <option value="1991">entre 1991 y 2005</option>
			    <option value="2006">entre 2006 y 2015</option>
			    <option value="2016">después de 2015</option>
			</select>
		    </div>
		    <div>
			<label>Tipo de construcción</label>
			<label>Madera</label><input type="radio" name="tipoCons" value="madera" id="madera" checked><label for="madera"></label>
			<label>Hormigon</label><input type="radio" name="tipoCons" value="hormigon" id="hormigon"><label for="hormigon"></label>
		    </div>
		    <div>
			<label>Valor estimado en el mercado</label>
			<select name="valorMerc">
			    <option value="25000">Menos de 50.000</option>
			    <option value="50001">Entre 50.001 y 80.000</option>
			    <option value="80001">Entre 80.001 y 100.000</option>
			    <option value="100001">Entre 100.001 y 150.000</option>
			    <option value="125000">Más de 150.000</option> <!-- No tiene mucho sentido que el valor no sea ni igual al minimo -->
			</select>
		    </div>		    
		</fieldset>
		<input type="submit" value="Enviar">
	    </form>
	</section>
	<div class="shapes">
	    <div class="shape2"></div>
	</div>
    </body>
</html>
