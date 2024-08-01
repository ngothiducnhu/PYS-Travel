<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<div class="tab-content my-2 border rounded-2">
	<ul class="nav nav-pills nav-justified" role="tablist">
	
		<li class="nav-item"><a class="nav-link ${from.get().equals('')?'active':''}" href="/tours/search/all">Toàn bộ</a></li>
		<li class="nav-item"><a class="nav-link ${from.get().equals('Hà Nội')?'active':''}"  href="/tours/search/fromHN">Từ Hà Nội</a></li>
		<li class="nav-item"><a class="nav-link ${from.get().equals('Hồ Chí Minh')?'active':''}"  href="/tours/search/fromHCM">Từ Tp Hồ Chí Minh</a></li>
	</ul>
</div>


<div class="tab-content my-2">

	<div id="home" class="row tab-pane active ">
		<br>
		<ul class="nav nav-pills nav-justified p-0">
			<li class="nav-item">
				<p class="nav-link disabled">
					<strong>Sắp xếp theo:</strong>
				</p>
			</li>
			<li class="nav-item"><a class="nav-link" href="">PYS Travel gợi ý</a></li>
			<li class="nav-item"><a class="nav-link ${ascending.get()?'active':''}" href="/tours/search/ascending">Giá Tăng dần <i class="fa fa-long-arrow-up"></i></a></li>
			<li class="nav-item"><a class="nav-link ${!ascending.get()?'active':''}" href="/tours/search/descending">Giá Giảm dần <i class="fa fa-long-arrow-down"></i> </a></li>
		</ul>
	</div>
</div>