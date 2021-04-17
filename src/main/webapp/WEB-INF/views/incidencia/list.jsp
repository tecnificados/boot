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
			 <form class="form-inline my-2 my-lg-0" action="<c:url value='/logout' />" method="post">	
			 	<a class="nav-link">
						${pageContext.request.remoteUser}
					</a>
		     	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		      	<button class="btn btn-secondary my-2 my-sm-0" type="submit">Desconectar</button>
		    </form>
		</div>
	</nav>


		
		<div class="container">
		
				
		<h1 id="title">Incidencias</h1>
		
		<c:choose>
				<c:when test="${empty list}">
					<div class="row">
						<h4>No hay Incidencias</h4>
					</div>
				</c:when>
				<c:otherwise>
					
					<table class="table">
					  <thead>
					    <tr>
					      <th scope="col">#</th>
					      <th scope="col">Título</th>
					      <th scope="col">Descripción</th>
					      <th scope="col">Autor</th>
					      <th scope="col">Operaciones</th>
					    </tr>
					  </thead>
					  <tbody>
					  <c:forEach var="entidad" items="${list}" varStatus="loop">
						<tr>
							<td>${loop.index}</td>
							<td>${entidad.titulo}</td>
							<td>${entidad.descripcion}</td>
							<td>${entidad.autor}</td>
							<td>
								<a class="operationLink" href="/incidencia/record/${entidad.id}"><i class="fas fa-eye text-primary"></i></a>						
								<a class="operationLink" href="/incidencia/edit/${entidad.id}"><i class="fas fa-edit text-primary"></i></a>	
								<a class="operationLink" href="/incidencia/remove/${entidad.id}"><i class="fas fa-trash text-danger"></i></a>									
							</td>
							</div>							
						</tr>
					  </c:forEach>					    
					  </tbody>
					</table>
					
					
					
					
				</c:otherwise>
			</c:choose>
		
		
		</div>
	




<footer class="footer">
  <div class="container">
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


</body>
</html>