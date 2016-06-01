<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<div>
		<jsp:include page="include/cabecera.jsp" flush="true|false" />
	</div>
	<div id="registro">
		<form action="/registrarmensaje" method="get">
			<div id="contenidos">
				<div id="columna1">Email:</div>
				<div id="columna2">
					<input type="text" name="remitente"
						pattern="^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$">
				</div>
			</div>
			
				<div id="columna1">Asunto:</div>
				<div id="columna2">
					<input type="text" name="asunto">
				</div>
		
					<textarea rows="4" cols="45" name="contenido"></textarea>
		
		
			<input type="submit" value="Enviar"><br>

		</form>
	</div>
</body>
</html>