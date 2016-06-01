<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/registro.css" rel="stylesheet" type="text/css">

</head>
<body>
	<div>
		<jsp:include page="include/cabecera.jsp" flush="true|false" />
	</div>

		<section id="cero">
		<div id="uno">
			<div id="table">
				<h2 align="center">Registro</h2>

				<form action="registrarcomensal" method="get">
					<div class="row">
						<div class="cell">Ingrese Nombre :</div>
						<div class="cell">
							<input type="text" name="name" size="40">
						</div>
					</div>
					<div class="row">
						<div class="cell">Ingrese Apellido :</div>
						<div class="cell">
							<input type="text" name="lastname" size="40">
						</div>
					</div>
					<div class="row">
						<div class="cell">CUI</div>
						<div class="cell">
							<input type="text" name="cui" size="10" maxlength="8" />
						</div>
					</div>
					<div class="row">
						<div class="cell">Correo electronico</div>
						<div class="cell">
							<input type="text" name="email" size="40"
								pattern="^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$" />
						</div>
					</div>
					<div class="row">
						<div class="cell">Escuela:</div>
						<div class="cell">
							<select name="escuela">
								<option value="">-- Elija su Escuela --</option>
								<option value="401">AGRONOMIA</option>
								<option value="402">BIOLOGIA</option>
								<option value="403">CIENCIAS DE LA NUTRICION</option>
								<option value="404">INGENIERIA PESQUERA</option>
								<option value="405">ENFERMERIA</option>
								<option value="406">MEDICINA</option>
								<option value="431">ARQUITECTURA</option>
								<option value="432">FISICA</option>
								<option value="433">MATEMATICAS</option>
								<option value="434">QUIMICA</option>
								<option value="435">INGENIERIA GEOFISICA</option>
								<option value="436">INGENIERIA GEOLOGICA</option>
								<option value="437">INGENIERIA ELECTRONICA</option>
								<option value="438">INGENIERIA INDUSTRIAL</option>
								<option value="439">INGENIERIA MECANICA ELECTRICA</option>
								<option value="440">INGENIERIA CIVIL</option>
								<option value="441">INGENIERIA METALURGICA</option>
								<option value="442">INGENIERIA QUIMICA</option>
								<option value="443">INGENIERIA DE MINAS</option>
								<option value="444">INGENIERIA INDUSTRIAS ALIMENTARIAS
								</option>
								<option value="445">INGENIERIA DE MATERIALES</option>
								<option value="446">INGENIERIA DE SISTEMAS</option>
								<option value="447">INGENIERIA ELECTRICA</option>
								<option value="448">INGENIERIA MECANICA</option>
								<option value="449">INGENIERIA AMBIENTAL</option>
								<option value="450">CIENCIA DE LA COMPUTACION</option>
								<option value="451">INGENIERIA SANITARIA</option>
								<option value="452">INGENIERIA EN TELECOMUNICACIONES</option>
								<option value="461">EDUCACION</option>
								<option value="463">HISTORIA</option>
								<option value="464">SOCIOLOGIA</option>
								<option value="465">TRABAJO SOCIAL</option>
								<option value="466">ANTROPOLOGIA</option>
								<option value="467">ADMINISTRACION</option>
								<option value="468">CONTABILIDAD</option>
								<option value="469">DERECHO</option>
								<option value="470">ECONOMIA</option>
								<option value="471">ARTES</option>
								<option value="472">FILOSOFIA</option>
								<option value="473">LITERATURA</option>
								<option value="474">PSICOLOGIA</option>
								<option value="475">RELACIONES INDUSTRIALES</option>
								<option value="478">CIENCIAS DE LA COMUNICACION</option>
								<option value="479">TURISMO Y HOTELERIA</option>
								<option value="486">FINANZAS</option>
								<option value="487">MARKETING</option>
								<option value="488">BANCA Y SEGUROS</option>
								<option value="489">GESTION</option>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="cell"></div>
						<div class="cell">
							<input type="submit" value="Enviar">
						</div>
					</div>

				</form>
			</div>

		</div>
		</section>
</body>
</html>