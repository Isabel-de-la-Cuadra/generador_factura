<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>login</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="Isabel de la Cuadra Lunas">


<!-- Bootstrap CSS 5.1.3-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<style>
body {
	background-image: linear-gradient(to right, #5f6a6a, #e5e8e8);
}
</style>

</head>
<body>

<!-- 1. Se pide una página JSP que sea capaz de recibir un usuario y un password, para luego
enviarlo al servlet. -->

	<div class="container ">
		<div class="row">
			<div class="col-8 justify-content-center">
				<img
					src="https://blog.desafiolatam.com/wp-content/uploads/2019/02/desafio-latam-logo-orizontal.png"
					title="Soy el Logo de la Empresa" alt="Logo Empresa de Repuestos"
					style="width: 150px; height: 50px; margin-top: 10%; margin-left: 10%;">
			</div>
			<div class="col-4 lh-1 mt-5">
				<p class="text mb-1 fw-bold text-end">Generador Factura 2022</p>
				<p class="text mb-1 fw-bold text-end">Competition Part Ltda.</p>
				<p class="text mb-1 text-end">Año 2022 Marzo ICL</p>
			</div>
		</div>
	</div>
	
	<br>
	<br>
	<br>
	
	<div class="container ms-4">
		<h2 style="margin-left: 15%;">Bienvenido al sistema de creación de facturas de Desafío
			Latam</h2>
		<br>
		<h4 style="margin-left: 15%;">Ingresa tu nombre de usuario y password</h4>
		<br> <br>
	</div>

	<div class="container" style="margin-left: 15%;">

		<c:if test="${msgError !=null}">
			<div class="alert alert-danger" role="alert">
				<c:out value="${msgError}"></c:out>
			</div>
		</c:if>

		<h1>Formulario de Ingreso</h1>

		<form action="procesaLogin" method="post">

			<label for="disabledTextInput" class="form-label">Usuario: </label>
			<input type="text" class="form-control" name="usuario" placeholder="Ingresa tu nombre de usuario">
			
			<br>
			
			<label for="password" class="form-label">Password: </label>
			<input type="password" class="form-control" id="password" name="password" placeholder="Ingresa tu password">
			
			<br>
			<br>

			<!--botones-->
			<button type="submit" class="btn btn-success bg-gradient mb-4 me-4 p-2">Ingresar</button>
			<button type="reset" class="btn btn-danger mb-4 p-2">Limpiar</button>
		</form>
	</div>


	<!-- Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js "
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p "
		crossorigin="anonymous "></script>


</body>

</html>