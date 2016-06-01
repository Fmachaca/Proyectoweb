<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="pw.*"%>
<%@ page import="Clases.*"%>
<%@ page import="java.util.*;"%>
<%
	List<Mensajes> mensajes = (List<Mensajes>) request.getAttribute("mensajes");
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
			<h2 align="center">Mensajes</h2>
			<%
				if (mensajes.size() != 0) {
			%>

			<%
				for (Mensajes r : mensajes) {
			%>

			<div id="contenidos">
				<div id="columna1">Asunto :</div>
				<div id="columna2">
					<%
						out.print(r.getAsunto());
					%>
				</div>
			</div>

			<div id="contenidos">
				<div id="columna1">Remitente :</div>
				<div id="columna2">
					<%
						out.print(r.getRemitente());
					%>
				</div>
			</div>
			<div id="contenidos">
				<div id="columna1">Contenido :</div>
				<div id="columna2">
					<%
						out.print(r.getCuerpo());
					%>
				</div>
			</div>
			<div id="contenidos">
				<div id="columna1">Fecha :</div>
				<div id="columna2">
					<%
						out.print(r.getFecha());
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