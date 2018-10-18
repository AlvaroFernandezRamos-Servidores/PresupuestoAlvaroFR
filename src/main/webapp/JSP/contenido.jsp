<%-- 
    Document   : contenido
    Created on : Oct 15, 2018, 5:21:40 PM
    Author     : atomsk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    HttpSession sesion = request.getSession();
    //Si no existe el atributo eleccion en sesión es que se ha saltado un paso, así que lo mandamos al index
    if(sesion.getAttribute("eleccion")==null){
	response.sendRedirect(path + "/index.html");
    }
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
		<fieldset class="subform">
		    <div>
			<label>Cubrir daños accidentales</label>
			<input type="checkbox" name="accidentalDam" value="accidentalDam" id="accidentalDam"><label for="accidentalDam" ></label>
		    </div>
		    <div>
			<label>Cantidad que quiere asegurar</label>
			<select name="cantidadAseg">
			    <option value="10000">10.000</option>
			    <option value="20000">20.000</option>
			    <option value="30000">30.000</option>
			    <option value="50000">50.000</option>
			    <option value="100000">100.000</option>
			</select>
		    </div>
		    <div>
			<label>Franquicia</label>
			<label>Ninguna</label><input type="radio" name="frank" value="0" id="0" checked><label for="0" ></label>
			<label>500</label><input type="radio" name="frank" value="500" id="500"><label for="500" ></label>
			<label>1.000</label><input type="radio" name="frank" value="1000" id="1000"><label for="1000" ></label>
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
