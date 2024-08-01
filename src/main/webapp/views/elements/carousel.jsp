<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<link rel="stylesheet" href="/views/css/carousel.css">


<div class="container carousel d-flex justify-content-center">
	<div class="w-100 p-0">
		<div id="carouselExampleRide" class="carousel slide w-100 p-0"
			data-bs-ride="true">
			<div class="carousel-inner w-100">
				<div class="carousel-item active mx-auto">
					<div class="w-100 d-flex justify-content-between">
						<img src="/views/img/slide-img-1.png" alt="..."> <img
							src="/views/img/slide-img-2.png" alt="...">
					</div>
				</div>
				<div class="carousel-item">
					<div class="w-100 d-flex justify-content-between">
						<img src="/views/img/slide-img-3.png" alt="..."> <img
							src="/views/img/slide-img-4.png" alt="...">
					</div>
				</div>
				<div class="carousel-item">
					<div class="w-100 d-flex justify-content-between">
						<img src="/views/img/slide-img-5.png" alt="..."> <img
							src="/views/img/slide-img-6.png" alt="...">
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleRide" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleRide" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>
</div>