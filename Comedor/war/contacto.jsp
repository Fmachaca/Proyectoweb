<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/registrarmensaje" method="get">
		Correo: <input type="text" name="remitente"><br>
		Asunto: <input type="text" name="asunto"><br>
		<textarea rows="4"cols="55" name="contenido"></textarea>
		<input type="submit" value="Enviar"><br>
		
	</form>

</body>
</html>