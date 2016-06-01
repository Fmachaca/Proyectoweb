<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="pw.*"%>
<%@ page import="Clases.*"%>
<%@ page import="java.util.*;"%>
<%
	List<Persona> mensajes = (List<Persona>) request.getAttribute("comensales");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>
	<div>
		<jsp:include page="include/cabecera.jsp" flush="true|false" />
	</div>


	<div id="registro">
		<div id="table">
			<h2 align="center">Lista Comensales</h2>
			<%
				if (mensajes.size() != 0) {
			%>

			<%
				for (Persona r : mensajes) {
			%>

			<div id="contenidos">
				<div id="columna1">Nombre :</div>
				<div id="columna2">
					<%
						out.print(r.getNombre());
					%>
				</div>
			</div>

			<div id="contenidos">
				<div id="columna1">Apellido :</div>
				<div id="columna2">
					<%
						out.print(r.getApellido());
					%>
				</div>
			</div>
			<div id="contenidos">
				<div id="columna1">CUI :</div>
				<div id="columna2">
					<%
						out.print(r.getCUI());
					%>
				</div>
			</div>
			
			<br>

			<%
					}
				%>

			<input type="submit" value="Borrar" class="primero"> 	
		
			<input type="submit" name="rest" value="Volver" class="segundo">
		<br>
		</div>
	</div>
	</section>


	<%
			} else {
		%>
	<br>
	<b> NO EXISTE PERSONAS <a href='contacto.jsp'> registrar</a></b>
	<br>
	<%
		}
	%>
	<br>
</body>
</html>