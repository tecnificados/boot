<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Tecnificados - Página Inicial</title>
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">

<link rel="stylesheet" href="<c:url value="/resources/css/signin.css"/>">


<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

</head>

<body class="text-center">
	<form class="form-signin" action="<c:url value='/login' />" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<img class="mb-4" src="<c:url value="/resources/img/logo.png"/>" alt="" width="72" height="72">
		<h1 class="h3 mb-3 font-weight-normal">Por favor entra</h1>
		<label for="username" class="sr-only">Usuario</label>
		<input type="text" id="username" name="username" class="form-control" placeholder="Usuario" required autofocus> 
		<label for="password" class="sr-only">Password</label>
		<input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
		
		
		
		<div class="checkbox mb-3">
			<label> <input type="checkbox" value="remember-me">Recuérdame</label>
		</div>
		<c:if test = "${param.error != null}">
       		<div class="alert alert-danger" role="alert">
			 Usuario y Password no validos.
			</div>
        </c:if>
        <c:if test = "${param.logout != null }">            
        	<div class="alert alert-success" role="alert">
  				Te has desconectado correctamente.
			</div>
        </c:if>
		<button type="submit" class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
		<p class="mt-5 mb-3 text-muted">&copy;Tecnificados Tutorial Spring Boot 2021</p>
		
	</form>


</body>
</html>