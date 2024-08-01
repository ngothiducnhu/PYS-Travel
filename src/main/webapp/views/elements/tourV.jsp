<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<div class="card position-relative mb-3 w-100">

	<img src="/views/static/Tours/Tour${param.id}/${param.poster}"
		class="card-img-top" alt="..." style="height: 250px;">
	<div class="from align-items-center">
		<p class="px-2">Từ ${param.from}</p>
	</div>
	<div class="card-body">
		<div style="height: 75px">
			<a href="/tour/detail?id=${param.id}">
				<h5 class="card-title">${param.name}</h5>
			</a>
		</div>
		<div class="card-body-left">
			<p class="card-text">
				<i class="fa fa-calendar px-1"></i>${param.when}<br> <i
					class="fa fa-clock-o px-1"></i>${param.last}
			</p>
		</div>
		<div class="card-body-right">
			<h5 class="d-flex align-items-end">
				${param.price} <sup>đ</sup>/khách
			</h5>
		</div>
	</div>
</div>