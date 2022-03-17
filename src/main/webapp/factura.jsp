<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulario Factura</title>
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
	background-color: #cfd8dc;
}

.list-group-item {
	background-color: #cfd8dc;
}
</style>

</head>

<body>

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


	<div class="container mt-5">
		<div class="row">
			<div class="col-6">
				<div class="card" style="width: 18rem;">
					<ul class="list-group list-group-flush">
						<li class="list-group-item fw-bold">Información de Cliente</li>
						<li class="list-group-item">${nombre}</li>
						<li class="list-group-item">${empresa}</li>
						<li class="list-group-item">${ciudad}, ${pais}</li>
						<li class="list-group-item">${direccion}</li>
					</ul>
				</div>
			</div>

			<div class="col-6 d-flex justify-content-end">
				<div class="card" style="width: 18rem;">
					<ul class="list-group list-group-flush">
						<li class="list-group-item fw-bold">Detalles de pago</li>
						<li class="list-group-item">NUM FACTURA: 1425782</li>
						<li class="list-group-item">ID FACTURA: 10253642</li>
						<li class="list-group-item">TIPO PAGO: Dinero</li>
						<li class="list-group-item">EMPRESA: Importadora</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="container mt-5 ">
		<table class="table table-dark table-hover table-striped">
			<thead>
				<tr>
					<th scope="col">ITEM</th>
					<th scope="col">DESCRIPCION</th>
					<th scope="col" class="text-end">VALOR UNITARIO</th>
					<th scope="col" class="text-end">CANTIDAD</th>
					<th scope="col" class="text-end">VALOR TOTAL</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach var="producto" items="${listaProductos}">
					<tr>
						<td><c:out value="${producto.producto}"></c:out></td>
						<td><c:out value="${producto.descripcion}"></c:out></td>
						<td class="text-end">$ <fmt:formatNumber value="${producto.valorUnitario}" pattern="#,##0" /></td>
						<td class="text-end"><c:out value="${producto.cantidad}"></c:out></td>
						<td class="text-end">$ <fmt:formatNumber value="${producto.valorTotal}" pattern="#,##0" /></td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
	</div>

	<div class="container mt-5 ">
		<table class="table table-dark table-hover table-striped">
			<thead>
				<tr>
					<th scope="col" class="text-end">VALOR TOTAL NETO</th>
					<th scope="col" class="text-end">Descuento</th>
					<th scope="col" class="text-end">VALOR TOTAL</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td class="text-end">$ <fmt:formatNumber value="${valorNeto}" pattern="#,##0" /></td>
					<td class="text-end">10%</td>
					<td class="text-end">$ <fmt:formatNumber value="${valorTotal}" pattern="#,##0" /></td>
				</tr>
			</tbody>

		</table>
	</div>

	<c:out value=""></c:out>
	<a></a>

	<br>
	<br>
	<hr>
	<br>
	<div class="container mt-5 ">
		<input type="button" class="btn btn-danger mb-4 p-2"
			value="ir a la página anterior" onClick="history.go(-1);">
	</div>
	<br>
	<br>

	<!-- Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js "
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p "
		crossorigin="anonymous "></script>

</body>
</html>