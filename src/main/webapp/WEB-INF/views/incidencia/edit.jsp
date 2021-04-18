<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>





<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<META http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Tecnificados - Incidencias</title>


<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">


<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
	
<link rel="stylesheet"
	href="<c:url value="/resources/css/global.css"/>">

</head>

<body>


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
				<li class="nav-item">
					<a class="nav-link" href="<c:url value="/"/>">Inicio
						<span class="sr-only">(current)</span>
					</a>
				</li>
				<li class="nav-item active">
					<a class="nav-link" href="<c:url value="/incidencia/list"/>">Incidencias
						<span class="sr-only">(current)</span>
					</a>
				</li>
				
			</ul>			
			 <form class="form-inline my-2 my-lg-0" action="<c:url value='/logout' />" method="post"  accept-charset="utf-8">	
			 	<a class="nav-link">
						${pageContext.request.remoteUser}
					</a>
		     	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		      	<button class="btn btn-secondary my-2 my-sm-0" type="submit">Desconectar</button>
		    </form>
		</div>
	</nav>


	<div class="container">
		<h1 id="title">Incidencia</h1>
		<c:choose>
			<c:when test="${empty incidencia}">
				<div class="row">
					<h4>Incidencias no encontrada</h4>
				</div>
			</c:when>
			<c:otherwise>
				<form class="issueForm" action="<c:url value='/incidencia/update/${incidencia.id}' />" method="post">
					<div class="form-group">
						<label for="titulo">Título</label> <input type="text" class="form-control" id="titulo" name="titulo" placeholder="Escribe el título de la incidencia" value="${incidencia.titulo}">
					</div>

					<div class="form-group">
						<label for="descripcion">Descripción</label>
						<textarea class="form-control" id="descripcion" name="descripcion" rows="3">${incidencia.descripcion}</textarea>
					</div>

					<div class="form-group">
						<label for="estado">Estado</label> <select class="form-control" id="estado" name="estado">
							<c:forEach var="entry" items="${estados}">
								<option value="${entry.key}" ${entry.key == incidencia.estado ? 'selected' : ''}><c:out value="${entry.value}" /></option>
							</c:forEach>

						</select>
					</div>

					<div class="form-group">
						<label for="autor">Autor</label> <input type="text" class="form-control" id="autor" name="autor" placeholder="Escribe el nombre del usuario que envía la incidencia" value="${incidencia.autor}">
					</div>
					
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				<button class="btn btn-secondary" type="submit">Actualizar</button>
				</form>
			</c:otherwise>
		</c:choose>

	</div>


	<footer class="footer">
	  <div class="container text-right">
	    <span class="text-muted">&copy; Tecnificados 2021</span>
	  </div>
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
	
	<style>
	.issueForm{
		margin-bottom: 100px;
	}
	</style>

</body>
</html>