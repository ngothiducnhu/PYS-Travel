<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="/views/css/admin.css">
</head>
<body>
	<div class="contaier-fluid">
		<div class="row p-0 m-0">
			<div class="col-2">
				<jsp:include page="elements/menu-admin.jsp"></jsp:include>
			</div>
			<div class="col-8">
				<jsp:include page="elements/${page}"></jsp:include>
			</div>
		</div>
	</div>

	<div class="container p-0">
		<div class="row px-5"></div>
	</div>
</body>
</html>