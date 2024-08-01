<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<div class="row mt-2 mb-5">
	<ul class="nav nav-underline mb-3 w-100 d-flex justify-content-center"
		id="pills-tab" role="tablist">
		<li class="nav-item" role="presentation">
			<button class="nav-link active" id="pills-home-tab"
				data-bs-toggle="pill" data-bs-target="#doanhso" type="button"
				role="tab" aria-controls="doanhso" aria-selected="true">Doanh
				Số</button>
		</li>
		<li class="nav-item" role="presentation">
			<button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill"
				data-bs-target="#khachhang" type="button" role="tab"
				aria-controls="khachhang" aria-selected="false">Khách Hàng</button>
		</li>
	</ul>
	<div class="tab-content" id="pills-tabContent">
		<div class="tab-pane fade show active" id="doanhso" role="tabpanel"
			aria-labelledby="pills-home-tab" tabindex="0">
			<h2 class="text-center my-3">THỐNG KÊ DOANH SỐ</h2>
			<div class="w-100 d-flex justify-content-center">
				<select class="form-select w-25 mx-1"
					aria-label="Default select example" ng-model="unit"
					ng-change="drawChart()">
					<option value="0">Theo Số Lượng Đặt</option>
					<option value="1">Theo Thành Tiền</option>
				</select> <select class="form-select w-25 mx-1"
					aria-label="Default select example" ng-model="top"
					ng-change="drawChart()">
					<option value="0">Top 2</option>
					<option value="1">Top 5</option>
					<option value="2">Top 10</option>
				</select>
			</div>
			<div class="d-flex justify-content-start mt-5">
				<div class="left m-0 p-5 col-6">
					<canvas id="mainChart"></canvas>
				</div>
				<div class="right m-0 p-5 col-6">
					<canvas id="subChart1" class="p-1"></canvas>
					<canvas id="subChart2" class="p-1"></canvas>
				</div>
			</div>
		</div>
		<div class="tab-pane fade" id="khachhang" role="tabpanel"
			aria-labelledby="pills-profile-tab" tabindex="1">2</div>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="/views/js/charts.js"></script>