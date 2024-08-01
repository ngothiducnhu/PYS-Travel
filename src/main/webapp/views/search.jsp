<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="/views/css/detail.css">
</head>
<body>
	<jsp:include page="elements/header.jsp"></jsp:include>
	
	<div class="container my-5">
		<jsp:include page="elements/search-menu.jsp"></jsp:include>
	</div>
	<c:if test="${not empty page.content}">
		<div class="container">
			<c:forEach items="${page.content}" var="tour">
				<jsp:include page="elements/tourH.jsp">
						<jsp:param value="${tour.tourId}" name="id" />
						<jsp:param value="${tour.poster}" name="poster" />
						<jsp:param value="${tour.tourName}" name="name" />
						<jsp:param value="${tour.fromTo}" name="from" />
						<jsp:param value="${tour.departureDate}" name="when" />
						<jsp:param value="${tour.destination}" name="to" />
						<jsp:param value="${tour.itinerary}" name="last" />
						<jsp:param value="${tour.price}" name="price" />
						<jsp:param value="Đặt tour ngay" name="action"/>
				</jsp:include>
			</c:forEach>
			
			<div class="row mt-3 d-flex justify-content-center">
				<c:forEach var="i" begin="0" end="${page.totalPages -1}">
					<a href="?p=${i}" class="btn border p-0 mx-1 text-center" style="height: 35px; width: 35px; line-height: 35px; ">${i+1}</a>
				</c:forEach>
			</div>
		</div>
	</c:if>
	<c:if test="${empty page.content}">
		<h1 class="text-center">Không tìm thấy tour nào như yêu cầu</h1>
	</c:if>
	
	
	
	<jsp:include page="elements/footer.jsp"></jsp:include>
</body>
</html>