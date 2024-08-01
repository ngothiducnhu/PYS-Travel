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
<link rel="stylesheet" href="/views/css/index.css">

</head>
<body>
	<jsp:include page="elements/header.jsp"></jsp:include>
	<jsp:include page="elements/banner.jsp"></jsp:include>
	<jsp:include page="elements/carousel.jsp"></jsp:include>

	<div class="container Tour-Hot" id="TH-Trong-Nuoc">
		<div class="row d-flex justify-content-between mt-5">
			<div class="col-md-4">
				<div class="title">
					<h2>Tour Hot Trong Nước</h2>
				</div>
				<div class="ruler">
					<hr>
				</div>
			</div>
			<div class="col-md-1 p-0">
				<button class="btn btn-outline-warning">Xem Thêm Tour></button>
			</div>
		</div>
		<div class="row">
			<c:forEach items="${tourHotTNList}" var="tour">
				<div class="col-4">
					<jsp:include page="elements/tourV.jsp">
						<jsp:param value="${tour.tourId}" name="id" />
						<jsp:param value="${tour.poster}" name="poster" />
						<jsp:param value="${tour.tourName}" name="name" />
						<jsp:param value="${tour.fromTo}" name="from" />
						<jsp:param value="${tour.departureDate}" name="when" />
						<jsp:param value="${tour.destination}" name="to" />
						<jsp:param value="${tour.itinerary}" name="last" />
						<jsp:param value="${tour.price}" name="price" />
					</jsp:include>
				</div>
			</c:forEach>
		</div>
	</div>

	<div class="container Tour-Hot" id="TH-Nuoc-Ngoai">
		<div class="row d-flex justify-content-between mt-5">
			<div class="col-md-4">
				<div class="title">
					<h2>Tour Hot Nước Ngoài</h2>
				</div>
				<div class="ruler">
					<hr>
				</div>
			</div>
			<div class="col-md-1 p-0">
				<button class="btn btn-outline-warning">Xem Thêm Tour></button>
			</div>
		</div>
		<div class="row">
			<c:forEach items="${tourHotNNList}" var="tour">
				<div class="col-4">
					<jsp:include page="elements/tourV.jsp">
						<jsp:param value="${tour.tourId}" name="id" />
						<jsp:param value="${tour.poster}" name="poster" />
						<jsp:param value="${tour.tourName}" name="name" />
						<jsp:param value="${tour.fromTo}" name="from" />
						<jsp:param value="${tour.departureDate}" name="when" />
						<jsp:param value="${tour.destination}" name="to" />
						<jsp:param value="${tour.itinerary}" name="last" />
						<jsp:param value="${tour.price}" name="price" />
					</jsp:include>
				</div>
			</c:forEach>
		</div>
	</div>

	<div class="container  my-5 Comment">
		<div class="row">
			<div class="col-6">
				<div class="title">
					<h2>Khách Hàng Nói Về PYS Travel</h2>
				</div>
				<div class="ruler w-25">
					<hr>
				</div>
			</div>
			<div id="carouselComment" class="carousel slide rate">
				<div class="carousel-inner">
					<c:forEach items="${fiveStarsRatingList}" var="rate">
						<div class="carousel-item active">
							<jsp:include page="elements/rate.jsp">
								<jsp:param value="${rate.customerID}" name="userID"/>
								<jsp:param value="${rate.customerName}" name="userName" />
								<jsp:param value="${rate.customerAvatar}" name="userAvatar" />
								<jsp:param value="${rate.rateContent}" name="rateContent" />
							</jsp:include>
						</div>
					</c:forEach>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselComment" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselComment" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</div>
	</div>

	<div class="container my-5 Doanh-Nghiep">
		<div class="row">
			<div class="col-md-6">
				<h3>
					<Strong>|</Strong> Khách hàng doanh nghiệp tiêu biểu
				</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
				<a href=""><img src="/views/img/DN-1.png" alt=""></a>
			</div>
			<div class="col-md-2">
				<a href=""><img src="/views/img/DN-2.jpg" alt=""></a>
			</div>
			<div class="col-md-2">
				<a href=""><img src="/views/img/DN-3.jpg" alt=""></a>
			</div>
			<div class="col-md-2">
				<a href=""><img src="/views/img/DN-4.png" alt=""></a>
			</div>
			<div class="col-md-2">
				<a href=""><img src="/views/img/DN-2.jpg" alt=""></a>
			</div>
			<div class="col-md-2">
				<a href=""><img src="/views/img/DN-1.png" alt=""></a>
			</div>
		</div>
		<div class="row align-items-center">
			<div class="col-md-4 offset-md-4">
				<button type="button" class="btn btn-outline-primary">
					<Strong>Xem thêm 500+ đánh giá nữa ></Strong>
				</button>
			</div>
		</div>
	</div>

	<div class="container San-Pham" id="San-Pham">
		<div class="row my-3">
			<div class="col-md-4 offset-md-4">
				<h3 class=" d-flex justify-content-center">Danh Mục Sản Phẩm</h3>
				<div class="ruler  d-flex justify-content-center">
					<hr>
				</div>
			</div>
		</div>
		<div class="row mt-3 d-flex">
			<div class="col-md-4 p-0 m-0">
				<a href="">
					<div class="product position-relative">
						<div class="front"></div>
						<img src="/views/img/TourTB.png" alt="">
						<h4>Tour Team Building</h4>
					</div>
				</a>
			</div>
			<div class="col-md-4 p-0 m-0">
				<a href="">
					<div class="product position-relative">
						<div class="front"></div>
						<img src="/views/img/TourMT.png" alt="">
						<h4>Tour Miền Trung</h4>
					</div>
				</a>
			</div>
			<div class="col-md-4 p-0 m-0">
				<a href="">
					<div class="product position-relative">
						<div class="front"></div>
						<img src="/views/img/TourMN.png" alt="">
						<h4>Tour Miền Nam</h4>
					</div>
				</a>
			</div>
			<div class="col-md-4 p-0 m-0">
				<a href="">
					<div class="product position-relative">
						<div class="front"></div>
						<img src="/views/img/TourMB.png" alt="">
						<h4>Tour Miền Bắc</h4>
					</div>
				</a>
			</div>
			<div class="col-md-4 p-0 m-0">
				<a href="">
					<div class="product position-relative">
						<div class="front"></div>
						<img src="/views/img/TourQT.png" alt="">
						<h4>Tour Quốc Tế</h4>
					</div>
				</a>
			</div>
		</div>

		<div class="row my-3">
			<div class="uu-dai w-100 d-flex flex-column align-content-center">
				<h3 class=" d-flex justify-content-center">Đăng Ký Nhận Ưu Đãi</h3>
				<div class="ruler d-flex justify-content-center">
					<hr>
				</div>
				<p class=" d-flex justify-content-center">Mỗi ngày chúng tôi đều
					gửi đến khách hàng của mình những tin tức thú vị, những ưu đãi hấp
					dẫn</p>
				<div class="input-group mb-3 d-flex justify-content-center w-100">
					<input type="text" placeholder="Nhập email đăng ký">
					<button type="button">ĐĂNG KÝ</button>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="elements/footer.jsp"></jsp:include>

</body>
</html>