<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Registro</title>
<meta name="generator" content="Bootply" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css"
	rel="stylesheet">
<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
<link href="css/styles.css" rel="stylesheet">
</head>
</head>
<body>


	<div class="container">

		<c:forEach items="${generics}" var="artifact">
				<div class="panel panel-default">
					<div class="panel-body">
						${aritfact.title}
						<form action="detailRequirement" class="form-signin" method="POST">
								<input type="hidden" name="requirement.id" value="${artifact.id}">
								<input type="submit" value="Verificar">
						</form>
						<br>
						<form action="excludeRequirement" class="form-signin" method="POST">
								<input type="hidden" name="requirement.id" value="${artifact.id}">
								<input type="submit" value="Excluir">
						</form>						
						<br>
						<form action="modifyRequirement" class="form-signin" method="POST">
								<input type="hidden" name="requirement.id" value="${artifact.id}">
								<input type="submit" value="Alterar">
						</form>						
						<br>
					</div>
				</div>
		</c:forEach>
		
		<c:forEach items="${useCases}" var="UseCase">
				<div class="panel panel-default">
					<div class="panel-body">
						${useCase.title}
						<form action="detailRequirement" class="form-signin" method="POST">
								<input type="hidden" name="requirement.id" value="${requirement.id}">
								<input type="submit" value="Verificar">
						</form>
						<br>
						<form action="excludeRequirement" class="form-signin" method="POST">
								<input type="hidden" name="requirement.id" value="${requirement.id}">
								<input type="submit" value="Excluir">
						</form>						
						<br>
						<form action="modifyRequirement" class="form-signin" method="POST">
								<input type="hidden" name="requirement.id" value="${requirement.id}">
								<input type="submit" value="Alterar">
						</form>						
						<br>
					</div>
				</div>
		</c:forEach>
		
		<c:forEach items="${userHistories}" var="UserHistory">
				<div class="panel panel-default">
					<div class="panel-body">
						${userHistory.title}
						<form action="detailRequirement" class="form-signin" method="POST">
								<input type="hidden" name="requirement.id" value="${requirement.id}">
								<input type="submit" value="Verificar">
						</form>						
						<br>
						<form action="excludeRequirement" class="form-signin" method="POST">
								<input type="hidden" name="requirement.id" value="${requirement.id}">
								<input type="submit" value="Excluir">
						</form>						
						<br>
						<form action="modifyRequirement" class="form-signin" method="POST">
								<input type="hidden" name="requirement.id" value="${requirement.id}">
								<input type="submit" value="Alterar">
						</form>						
						<br>							
					</div>
				</div>
		</c:forEach>
		
		<c:forEach items="${epic}" var="epic">
				<div class="panel panel-default">
					<div class="panel-body">
						${epic.title}
						<form action="detailRequirement" class="form-signin" method="POST">
								<input type="hidden" name="requirement.id" value="${requirement.id}">
								<input type="submit" value="Verificar">
						</form>						
						<br>
						<form action="excludeRequirement" class="form-signin" method="POST">
								<input type="hidden" name="requirement.id" value="${requirement.id}">
								<input type="submit" value="Excluir">
						</form>						
						<br>
						<form action="modifyRequirement" class="form-signin" method="POST">
								<input type="hidden" name="requirement.id" value="${requirement.id}">
								<input type="submit" value="Alterar">
						</form>						
						<br>							
					</div>
				</div>
		</c:forEach>
		
		<c:forEach items="${feature}" var="feature">
				<div class="panel panel-default">
					<div class="panel-body">
						${feature.title}
						<form action="detailRequirement" class="form-signin" method="POST">
								<input type="hidden" name="requirement.id" value="${requirement.id}">
								<input type="submit" value="Verificar">
						</form>						
						<br>
						<form action="excludeRequirement" class="form-signin" method="POST">
								<input type="hidden" name="requirement.id" value="${requirement.id}">
								<input type="submit" value="Excluir">
						</form>						
						<br>
						<form action="modifyRequirement" class="form-signin" method="POST">
								<input type="hidden" name="requirement.id" value="${requirement.id}">
								<input type="submit" value="Alterar">
						</form>						
						<br>							
					</div>
				</div>
		</c:forEach>
		
		<a href="." class="btn btn-info btn-lg">Voltar</a>

	</div>
</body>
</html>