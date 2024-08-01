<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<link rel="stylesheet" href="/views/css/menu.css">

  <div class="flex-shrink-0 p-3 bg-white side-bars" style="width: 280px;">
    <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
      <svg class="bi me-2" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
      <span class="fs-5 fw-semibold">Py Travell</span>
    </a>
    <ul class="list-unstyled ps-0">
      <li class="mb-1">
        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">
          Quản Lý
        </button>
        <div class="collapse show" id="home-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="/admin/manage-category" class="link-dark rounded">Quản Lý Danh Mục</a></li>
            <li><a href="/admin/manage-tour" class="link-dark rounded">Quản Lý Tour</a></li>
             <li><a href="/admin/manage-ordered" class="link-dark rounded">Quản Lý Đặt Tour</a></li>
          </ul>
        </div>
      </li>
      <li class="mb-1">
        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
          Thống Kê
        </button>
        <div class="collapse" id="dashboard-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="/admin/charts" class="link-dark rounded">Theo Ngày</a></li>
            <li><a href="#" class="link-dark rounded">Theo Tuần</a></li>
            <li><a href="#" class="link-dark rounded">Theo Tháng</a></li>
            <li><a href="#" class="link-dark rounded">Theo Năm</a></li>
          </ul>
        </div>
      </li>
      <li class="mb-1">
        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
          Khác
        </button>
        <div class="collapse" id="orders-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="link-dark rounded">Tin Tức</a></li>
            <li><a href="#" class="link-dark rounded">Banner</a></li>
            <li><a href="#" class="link-dark rounded">Hình nền</a></li>
          </ul>
        </div>
      </li>
      <li class="border-top my-3"></li>
      <li class="mb-1">
        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
          Account
        </button>
        <div class="collapse" id="account-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="link-dark rounded">Thông Tin</a></li>
            <li><a href="#" class="link-dark rounded">Tùy Chỉnh</a></li>
            <li><a href="#" class="link-dark rounded">Đăng Xuất</a></li>
          </ul>
        </div>
      </li>
    </ul>
  </div>
