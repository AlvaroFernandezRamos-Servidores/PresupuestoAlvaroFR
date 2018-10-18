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
    //Inicializamos las variables que podríamos necesitar
    double resultadoEdificio = 0;
    String resultadoEdifShow = "";
    EdificioModel edif = null;
    ContenidoModel cont = null;
    //Si recibimos un atributo edificio en sesión 
    if(sesion.getAttribute("edificio") != null){//Math.round(a * 100.0) / 100.0;
	//Calculamos el resultado de esa parte
	resultadoEdificio = Math.round(CalcularCuota.calcularEdificio((EdificioModel)sesion.getAttribute("edificio")) * 100.0) / 100.0;
	edif = (EdificioModel)sesion.getAttribute("edificio");//asignamos el objeto edificio en sesión en la variable anterior
	resultadoEdifShow = "show";//definimos un parametro para saber si hemos pasado por aqui
    }
    //Hacemos lo mismo con contenido si viene en sesion
    double resultadoContenido = 0;
    String resultadoContShow = "";
    if(sesion.getAttribute("contenido") != null){
	resultadoContenido = Math.round(CalcularCuota.calcularContenido((ContenidoModel)sesion.getAttribute("contenido")) * 100.0) / 100.0;
	cont = (ContenidoModel)sesion.getAttribute("contenido");
	resultadoContShow = "show";
    }
    //Si vienen los dos nos preparamos para hacer un sumatorio de ambos
    double totalGrupal = 0;
    String totalGrupalShow = "";
    if(sesion.getAttribute("contenido") != null && sesion.getAttribute("edificio") != null){
	totalGrupal = resultadoEdificio + resultadoContenido;
	totalGrupalShow = "show";
    }
    
    sesion.invalidate();
    
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
	    <%
		if(resultadoEdifShow.length()>0){
	    %>
	    <article class="<%=resultadoEdifShow%>">
		<h2>Cuota por Edificio</h2>
		<div>
		    <span>Cuota básica</span> : <span><%=edif.getValorMercado()%> €</span><br>
		    <span>Tipo de edificio</span> : <span><%=edif.getTipoEdificio()%></span><br>
		    <span>Fecha de construcción</span> : <span><%=edif.getFechaCons()%></span><br>
		    <span>Tipo de Construcción</span> : <span><%=edif.getTipoCons()%></span><br>
		    <span>El resultado de su cuota para el edificio es: <%=resultadoEdificio%> €</span>
		</div>
	    </article>
	    <%
		}
	    %>
	    
	    <%
		if(resultadoContShow.length()>0){
	    %>
	    <article class="<%=resultadoContShow%>">
		<h2>Cuota por Contenido</h2>
		<div>
		    <span>Seguro de accidentes</span> : <span><%=cont.isAccidentalDam()%></span><br>
		    <span>Cantidad asegurada</span> : <span><%=cont.getCantidadAseg()%> €</span><br>
		    <span>Franquicia</span> : <span><%=cont.getFrank()%></span><br>
		    <span>El resultado de su cuota para el contenido es: <%=resultadoContenido%> €</span>
		</div>
	    </article>
	    <%
		}
	    %>
	    
	    
	    <%
		if(resultadoEdifShow.length()>0 && resultadoContShow.length()>0){
	    %>
	    <article class="<%=totalGrupalShow%>">
		<h2>Monto total</h2>
		<div>
		    <span>El resultado total es: <%=totalGrupal%> €</span>
		</div>
	    </article>
		
	    <%
		}
	    %>
	<a href="<%=path%>/index.html">Volver</a>
	</section>
	<div class="shapes">
	    <div class="shape2"></div>
	</div>
    </body>
</html>
