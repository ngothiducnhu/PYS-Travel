<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/views/css/header.css">
<header class="container-fluid position-relative p-0">
	<div class="p-0 m-0 nav-top-background position-absolute top-0 left-0"></div>
	<div class="container nav-top-infor">
		<div class="row d-flex justify-content-between">
			<div class="col-md-4 phone d-flex justify-content-between">
				<a href="#"><i class="fa fa-phone"></i> 0999999999 (Hà Nội)</a>
				<p>|</p>
				<a href="#"><i class="fa fa-phone"></i> 0888888888 (TP Hồ Chí
					Minh)</a>
			</div>
			<div
				class="col-md-3 offset-md-3 infor d-flex justify-content-between">
				<a href="#"><i class="fa fa-star-o"></i> Tuyển dụng</a> <a href="#"><i
					class="fa fa-wechat"></i> Gốc khách hàng</a> <a href="#"><i
					class="fa fa-address-book-o"></i> Về PYS Travel</a>
			</div>
		</div>
	</div>
	<div class="row p-0 m-0" id="nav-menu">
		<div class="background p-0 m-0 w-100 position-relative">
			<img src="/views/img/Background.webp" alt=""
				class="position-absolute top-0 left-0 w-100 h-100 p-0 m-0">
			<div class="container">
				<div class="row my-5 d-flex justify-content-between p-0 mx-0">
					<div class="col-md-2 logo p-0">
						<img src="/views/img/Logo.png" alt="">
					</div>
					<div
						class="col-md-10 d-flex justify-content-end header-menu m-0 p-0">
						<ul class="nav d-flex">
							<li class="nav-item align-self-center"><a
								href="#TH-Trong-Nuoc">Tour Trong Nước</a>
								<div class="ruler"></div></li>
							<li class="nav-item align-self-center"><a
								href="#TH-Nuoc-Ngoai">Tour Nước Ngoài</a>
								<div class="ruler"></div></li>
							<li class="nav-item align-self-center"><a href="#San-Pham">Team
									Building</a>
								<div class="ruler"></div></li>
							<li class="nav-item align-self-center"><a href="">Lịch
									Khỏi Hành</a>
								<div class="ruler"></div></li>
							<li class="nav-item align-self-center"><c:if
									test="${user == null}">
									<a href="/account/sign-in">Đăng Nhập</a>
									<div class="ruler"></div>
								</c:if> <c:if test="${user != null}">
									<div class="dropdown align-self-center h-100">
										<a class="dropdown-toggle " href="#" role="button"
											data-bs-toggle="dropdown" aria-expanded="false"> 
											<img alt="" src="/${avatar}" style="height: 30px; width: 30px;border-radius: 50% "> ${user.name}
										</a>

										<ul class="dropdown-menu bg-dark">
											<li class="m-0"><a class="dropdown-item" href="/account/edit-profile">Thay đổi thông tin</a></li>
											<li class="m-0"><a class="dropdown-item" href="#">Đổi mật khẩu</a></li>
											<li class="m-0"><a class="dropdown-item" href="#">Tour đã đặt</a></li>
											<li class="m-0"><a class="dropdown-item" href="/account/log-out">Đăng xuất</a></li>
										</ul>
									</div>
								</c:if>
							</li>
						</ul>
					</div>
				</div>

				<div class="row">
					<div class="col-md-12 text-center title">
						<h1>Thèm đi lắm rồi, mình lên đường thôi!</h1>
						<h5>
							Đặt tour và yên tâm tận hưởng chuyến đi của bạn với sự đồng hành
							của đội ngũ <br> chuyên gia du lịch PYS Travel
						</h5>
					</div>
					<form action="/tours/search/name" method="get" class="w-100 input-group mt-5 search-menu col-12 d-flex justify-content-center">
						<input class="px-4" type="text" placeholder="Bạn muốn đi đâu?" name="nameKW" value="${nameKW.get()}">
						<button type="submit" class="btn btn-primary search-button">
							<i class="fa fa-search"></i>TÌM TOUR NGAY
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</header>