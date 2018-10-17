<%-- 
    Document   : verCuota
    Created on : Oct 16, 2018, 8:27:43 PM
    Author     : atomsk
--%>

<%@page import="es.albarregas.presupuestoalvarofr.ContenidoModel"%>
<%@page import="es.albarregas.presupuestoalvarofr.EdificioModel"%>
<%@page import="es.albarregas.presupuestoalvarofr.CalcularCuota"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession();
    double resultadoEdificio = 0;
    String resultadoEdifShow = "";
    if(sesion.getAttribute("edificio") != null){//Math.round(a * 100.0) / 100.0;
	resultadoEdificio = Math.round(CalcularCuota.calcularEdificio((EdificioModel)sesion.getAttribute("edificio")) * 100.0) / 100.0;
	resultadoEdifShow = "show";
    }
    double resultadoContenido = 0;
    String resultadoContShow = "";
    if(sesion.getAttribute("contenido") != null){
	resultadoContenido = Math.round(CalcularCuota.calcularContenido((ContenidoModel)sesion.getAttribute("contenido")) * 100.0) / 100.0;
	resultadoContShow = "show";
    }
    double totalGrupal = 0;
    String totalGrupalShow = "";
    if(sesion.getAttribute("contenido") != null && sesion.getAttribute("edificio") != null){
	totalGrupal = resultadoEdificio + resultadoContenido;
	totalGrupalShow = "show";
    }
    
    String path = request.getContextPath();
    
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
	    <h1>Visualización de resultados</h1>
	    <article class="<%=resultadoEdifShow%>">
		<h2>Cuota por Edificio</h2>
		<div>
		    <span>El resultado de su cuota para el edificio es: <%=resultadoEdificio%></span>
		</div>
	    </article>
	    <article class="<%=resultadoContShow%>">
		<h2>Cuota por Contenido</h2>
		<div>
		    <span>El resultado de su cuota para el contenido es: <%=resultadoContenido%></span>
		</div>
	    </article>
	    <article class="<%=totalGrupalShow%>">
		<h2>Monto total</h2>
		<div>
		    <span>El resultado total es: <%=totalGrupal%></span>
		</div>
	    </article>
	<a href="<%=path%>/index.html">Volver</a>
	</section>
	<div class="shapes">
	    <div class="shape2"></div>
	</div>
    </body>
</html>
