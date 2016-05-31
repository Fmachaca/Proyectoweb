<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="pw.*"%>
<%@ page import="Clases.*"%>
<%@ page import="java.util.*;"%>
<% List<Mensajes> mensajes = (List<Mensajes>) request.getAttribute("mensajes");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>
	<div>
		<%if(mensajes.size() != 0) {%>

		<%	for(Mensajes r : mensajes) {	%><br>
			
			<b>---- Remitente : </b><%	out.print(r.getRemitente());%><br>
			<b>---- Asunto :</b> <%	out.print(r.getAsunto());%><br>
	
			<b>---- Cuerpo : </b><%	out.print(r.getCuerpo());%><br>
			<b>---- Fecha :  </b><%	out.print(r.getFecha());%>
			<br>
		<%	}%>
			</div>
		<a href='contacto.jsp'>volver</a>
		<%} else {%>
			<br>
			<b> NO EXISTE PERSONAS <a href='contacto.jsp'> registrar</a></b><br>
		<%}%>
		<br>
	</div>
</body>
</html>