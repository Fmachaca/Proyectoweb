<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Comedor UNSA</title>
<link rel="stylesheet" href="css/virtual.css"/>
<link rel="stylesheet" href="css/login.css"/>
</head>
<body>
<div id="imagen">
<img src="img/unsa.png">
</div>
<div id="header">
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
		<li><a href="contacto.jsp">Contactenos</a></li>
	</ul>
		</li>
		<li><a href="login.jsp">Login</a></li>
		<li><a href="">Modificar Datos</a></li>
		<li><a href="">Reserva</a></li>
		<li><a href="">Comensales</a>
	<ul>
		<li><a href="">Buscar Comensal</a></li>
		<li><a href="registrarAlumno.jsp">Registrar Comensal</a></li>
		<li><a href="">Bloquear Comensal</a></li>
		<li><a href="">Eliminar Comensal</a></li>
	</ul>  	
		</li>
		<li><a href="">Actualizar Menu</a></li>
		<li><a href="">Noticias</a>
	<ul>
		<li><a href="vermensaje">Leer Mensajes</a></li>
	</ul>	
		</li>
		<li><a href="">N°Comensales</a></li>
	</ul>
</div>
<div id="registro">
<form action="login" method="get">
<div>
<label> Usuario </label> 
<input id="usuario" name="username"  type="text">
</div>
<div>
<label> Contraseña </label> 
<input id="password" name="password"  type="password">
</div>
<div id="boton">
<input type="submit" value="Iniciar Sesión">
</div>
</form>
</div>

</body>
</html>