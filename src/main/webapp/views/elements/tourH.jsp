<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<div class="row border my-2 p-0">
	<div class="col-md-4 p-1" style="height: 250px">
		<a href="/tour/detail?id=${param.id}">	
			<img src="/views/static/Tours/Tour${param.id}/${param.poster}"	alt="" class="w-100 h-100">
		</a>

	</div>
	<div class="col-md-8 py-2">
		<a href="/tour/detail?id=${param.id}" style="text-decoration: none">	
			<h4 style="color: #07667e;">${param.name}</h4>
		</a>
		<div class="row mt-3">
			<div class="col-md-8">
				<span class="text-secondary">
					<i class="fa fa-home"></i> Điểm khởi hành:</span> ${param.from} <br> 
					<span class="text-secondary"><i class="fa fa-map-marker"></i> Điểm đến:</span> ${param.to} <br> 
					<span class="text-secondary"><i class="fa fa-clock-o"></i> Lịch trình:</span> ${param.last} <br> 
					<span class="text-secondary"><i class="fa fa-calendar"></i> Khởi hành:</span>${param.when }<br>
				<hr class="w-25">
			</div>
			<div class="col-md-4 mt-4">
				<h5 class="text-danger">${param.price}Đ</h5>
				<button class="dat-tour border-0 px-4 py-1 text-white bg-warning">${param.action}</button>
			</div>
		</div>
	</div>
</div>
