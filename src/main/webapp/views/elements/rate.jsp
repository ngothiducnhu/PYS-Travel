<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<link rel="stylesheet" href="/views/css/rate.css">
<div class="rate p-3">
	<div class="row g-0">
		<div class="col-md-2">
			<img src="/views/static/customers/${param.userID}/${param.userAvatar}" class="float-center" alt="...">
			<div class="star">
				<i class="fa fa-star"></i> 
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i> 
				<i class="fa fa-star"></i> 
				<i class="fa fa-star"></i>
			</div>
		</div>
		<div class="col-md-8">
			<div class="card-body">
				<h5 class="card-title">"${param.userName}": </h5>
				<p class="card-text my-1">${param.rateContent}</p>
				<a href="">Xem Thêm</a>
			</div>
		</div>
	</div>
</div>