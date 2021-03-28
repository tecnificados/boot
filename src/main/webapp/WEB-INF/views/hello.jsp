<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Tecnificados - Página Inicial</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
	
	<style>
	#saludo_row
	{
		min-height:200px;
	}
	</style>

</head>

<body>Hola con Spring Boot


	<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
		<a class="navbar-brand" href="#">Demo Spring Boot</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExampleDefault"
			aria-controls="navbarsExampleDefault" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExampleDefault">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
					<a class="nav-link" href="<c:url value="/"/>">Inicio
						<span class="sr-only">(current)</span>
					</a>
				</li>
				<li class="nav-item active">
					<a class="nav-link" href="<c:url value="/hello"/>">Saludo
						<span class="sr-only">(current)</span>
					</a>
				</li>
			</ul>
		</div>
	</nav>

	<main role="main">

		<!-- Main jumbotron for a primary marketing message or call to action -->
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">Saludos con Spring Boot y Bootstrap</h1>
				<p>Esta es una plantilla modificada para realizar una pequeña
					demo.</p>
			</div>
		</div>
		
		<div class="container">
		
			<div class="row" id="saludo_row">
				<div class="col-md-6">
					<h4>Saludos ${pageContext.request.remoteUser}</h4>
				</div>
				<div class="col-md-6">
					<form action="<c:url value='/logout' />" method="post">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            			<input type="submit" value="Desconectar"/>
        			</form>	
				</div>
			</div>
		
			
				
		</div>	
		
		
		
	</main>

	<footer class="container">
		<p>&copy; Tecnificados 2021</p>
	</footer>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="<c:url value="/resources/js/vendor/jquery.slim.min.js"/>"><\/script>')
	</script>
	<script src="<c:url value="/resources/js/bootstrap.bundle.min.js"/>"></script>


</body>
</html>