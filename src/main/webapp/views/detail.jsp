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
	<div class="container mt-5" id="body">
		<div class="mo-dau row">
			<h2>${tour.tourName}</h2>
			<div class="col-lg-9 hinh-anh pt-3">
				<div class="row h-100">
					<div class="hinh-trai col-md-4 overflow-auto h-100">
						<div class="row p-3">
							<c:forEach items="${imgList}" var="img">
								<div class="col-6 p-0">
									<img src="/views/static/Tours/Tour${tour.tourId}/${img.imageName}"
										onmouseover="trinhChieu(this)" alt="">
								</div>
							</c:forEach>
						</div>
					</div>
					<div class="hinh-phai col-lg-8 h-100 py-1">
						<c:if test="${not empty imgList }">
							<img src="/views/static/Tours/Tour${tour.tourId}/${tour.poster}" alt=""
								class="w-100 h-100" id="trinh-chieu">
						</c:if>
					</div>
				</div>
			</div>
			<div class="col-lg-3 thong-tin-tour pt-5">
				<p>Giá tour trọn gói</p>
				<h2>${tour.price}đ</h2>
				<hr>
				<div class="d-block py-1">
					<p class="tua-de">
						<i class="fa fa-home"></i> Khởi hành từ:
					</p>
					<p class="d-inline">${tour.fromTo}</p>
				</div>
				<div class="d-block py-1">
					<p class="tua-de">
						<i class="fa fa-map"></i> Điểm đến:
					</p>
					<p class="d-inline">${tour.destination}</p>
				</div>
				<div class="d-block py-1">
					<p class="tua-de">
						<i class="fa fa-clock-o"></i> Lịch trình:
					</p>
					<p class="d-inline">${tour.itinerary}</p>
				</div>
				<div class="d-block py-1">
					<p class="tua-de">
						<i class="fa fa-calendar"></i> Khởi hành:
					</p>
 				<p class="d-inline">${tour.departureDate}</p>
				</div>
				<hr>
				<ul class="list">
					<li>Tặng áo cờ đỏ sao vàng</li>
					<li>Khuyến mãi đặt xa</li>
					<li>Khuyến mãi đặt theo nhóm</li>
					<li>Khuyến mãi cho khách hàng thân thiết</li>
					<li>Khuyến mãi cho người cao tuổi</li>
				</ul>
				<hr>
				<div class="w-100 d-flex justify-content-center">
					<button type="button" class="btn">
						<p class="p-0 m-0">ĐẶT TOUR NGAY></p>
						Giữa chổ chưa cần thanh toán
					</button>
				</div>
			</div>
		</div>
		<div class="noi-dung row mt-5">
			<div class="noi-dung-chinh col-9 position-relative">
				<div class="menu-noi-dung row mb-3">
					<a href="#gioithieu">Giới Thiệu</a> <a href="#lichtrinh">Lịch
						Trình</a> <a href="#dieukhoan">Bao Gồm và Điều Khoản</a> <a
						href="#danhgia">Đánh Giá Tour</a> <a href="">Bình Luận</a>
				</div>
				<div class="col-11 offset-1">
					${content}
				</div>
				<div class="row mt-5">
					<div id="carouselExample" class="carousel slide ">
						<div class="carousel-inner">
							<c:forEach items="${rateList }" var="rate">
								<div class="carousel-item active">
									<jsp:include page="elements/rate.jsp">
										<jsp:param value="${rate.userName }" name="userName" />
										<jsp:param value="${rate.userAvatar }" name="userAvatar" />
										<jsp:param value="${rate.title}" name="title" />
										<jsp:param value="${rate.content}" name="content" />
									</jsp:include>
								</div>
							</c:forEach>
						</div>
						<button class="carousel-control-prev" type="button"
							data-bs-target="#carouselExample" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#carouselExample" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
				</div>
			</div>
			<div class="tu-van col-3 px-4 py-0">
				<div class="col-lg-12 tuvanchitiet">
					<div class="my-1">
						<div class="tua-de p-2 w-100">Gọi ngay để được tư vấn</div>
						<div class="row px-2">
							<div class="dienthoai p-3 col-lg-3">
								<img src="/views/icon/dienthoai.png" alt="">
							</div>
							<div class="sodienthoai py-3 col-lg-8">
								<p>024.73 07 50 60 (HN)</p>
								<p>028.73 07 50 60 (HCM)</p>
							</div>
						</div>
						<div class="col-lg-12 yeucautuvan px-2">
							<p>Hoặc gửi yêu cầu tư vấn</p>
							<div class="row mb-2">
								<input type="number" placeholder="Số điện thoại của tôi: "
									class="w-50 h-100 mx-2">
								<button class="btn btn-primary w-25 h-100 mx-1">Gửi</button>
							</div>
							<p>PYS Travel sẽ liên hệ với bạn</p>
						</div>
					</div>
					<div class="my-1">
						<div class="row">
							<img src="/views/static/Tours/Tour${tour.tourId}/${tour.poster}" alt="">
							<div class="thongtin p-4">
								<h5>${tour.tourName}</h5>
								<p>
									<i class="fa fa-clock-o"></i> Lịch trình:${tour.itinerary}
								</p>
								<p>
									<i class="fa fa-home"></i> Khởi hành từ:${tour.fromTo }
								</p>
								<p>Giá tour trọn gói</p>
								<h5 style="color: red; font-weight: bolder;">${tour.price }đ/khách</h5>
								<div class="w-100 d-flex justify-content-center mb-3">
									<button type="button" class="btn">
										<p class="p-0 m-0">ĐẶT TOUR NGAY></p>
										Giữa chổ chưa cần thanh toán
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	
	<jsp:include page="elements/footer.jsp"></jsp:include>

</body>
</html>
<script>
	function trinhChieu(img) {
		var hinhChieu = document.getElementById("trinh-chieu");
		hinhChieu.src = (img.src);
	}
</script>