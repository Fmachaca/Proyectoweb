<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="pw.*"%>
<%@ page import="javax.servlet.http.*;"%>   
<%	//Ciente cliente = (Cliente) session.getAttribute("usuario");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript" src="js/principal.js"></script>
<link href="css/inicio.css" rel="stylesheet" type="text/css">
<link href="css/virtual.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Restaurante Lonccos</title>
</head>
<body>
	<div id="cabeza">
		<ul class="nav">
	    <li><a href="comedor.jsp">Inicio</a>
	<ul>
		<li><a href="">Menu Semanal</a></li>
		<li><a href="">Ubicacion</a></li>
	</ul>    
	    </li>
	    
	    <li><a href="">Noticias</a></li>
		<li><a href="">Informes</a>
	<ul>
		<li><a href="">Formulario</a></li>
		<li><a href="contacto.jsp" id="contacto">Contactenos</a></li>
	</ul>
		<% if(session.getAttribute("email") == null){%>
	</li>
		<li><a href="login.jsp">Login</a></li>
		<% }else {%>
	</li>
		<li><a href="salir.jsp">Salir</a></li>
		<% }%>
	</div>
	<div id="titulo">
		<br><br><br>
		<% if(session.getAttribute("email") != null){%>
		<div id="sesion">
		<b>Bienvenido</b>
		<% //out.print(session.getAttribute("pass"));%><br>
		<% out.print(session.getAttribute("email"));%><br>
		<% out.print(session.getAttribute("nombre"));%>
		<% out.print(session.getAttribute("paterno")+" ");%>
		<% out.print(session.getAttribute("materno"));%>
		<% if (session.getAttribute("admin").equals("0")){%><br>
			<b>Cliente</b><br>
		<% }%>
		<% if (session.getAttribute("admin").equals("1")){%><br>
			<b>Administrador</b><br>
		<% }%>
		<% if (session.getAttribute("admin").equals("2")){%><br>
			<b>Administrador Principal</b><br>
		<% }%>
		</div>
		<div id="menu_control">
		<% if (session.getAttribute("admin").equals("2") || session.getAttribute("admin").equals("1")){%>
			<div class="menu_Usuario" id="sesionAdmin">MENU ADMINISTRADOR</div>
		<% }%>
		<% if (!session.getAttribute("admin").equals("2")){%>
			<div class="menu_Usuario" id="cambiar_Pass">Cambiar Contraseña</div>
			<div class="menu_Usuario" id="cambiar_Nombre">Cambiar Nombre</div>
			<div class="menu_Usuario" id="cambiar_Paterno">Cambiar Apellido Paterno</div>
			<div class="menu_Usuario" id="cambiar_Materno">Cambiar Apellido Materno</div>
			<div class="menu_Usuario" id="misReservas">Mis Reservas</div>
			<div class="menu_Usuario" id="eliminarReservas">Eliminar Reserva</div>
		<% }%>
		</div>
		<% }%>
	</div>
	<div id="cuerpo">
	</div>
	<div id="pie">
		<img id="proceso" alt="proceso" src="img/proceso.gif">
		<p id="pie_text">Copyright © Lonccos<br>
		Restaurant Lonccos<br>
		Derechos Reservados</p>
	</div>
</body>
</html>