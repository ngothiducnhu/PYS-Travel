<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/views/css/manage-tour.css">

<div class="main-content col-10 d-flex justify-content-between my-5 offset-md-2">
  <h2 class="col-6">DANH SÁCH TOUR</h2>
  <div class="d-flex justify-content-end col-6">
  
	    <div class="col-4 px-1 m-0">
	    	<a href="/admin/manage-tour/insert" class="btn btn-success w-100">Thêm mới tour</a>
	    </div>
  </div>
</div>
<div class="table-responsive col-md-10 offset-md-2">
  <table class="table align-middle">
    <thead class="table-dark">
      <tr>
        <th>Id</th>
        <th>Hình</th>
        <th>Tên</th>
        <th>Hot</th>
        <th>Giá</th>
        <th>Tác vụ</th>
      </tr>
    </thead>
    <tbody>
    	<c:forEach items="${tourList}" var="tour">
   		<form action="/admin/mange-tour/update/${tour.tourId}" method="post">
	       	<tr class="table align-middle w-100"">
		         <td>${tour.tourId}</td>
		         <td><img src="/views/static/Tours/Tour${tour.tourId}/${tour.poster}"  alt=""></td>
		         <td>${tour.tourName}</td>
		         <td><input type="checkbox" ${tour.hot?'checked':'unchecked'} onclick="this.form.submit()"></td>
		         <td>${tour.price}<sup>đ</sup>/khách</td>
		         <td>
		        
		           <a type="submit" class="btn btn-warning px-4 my-1" href="/admin/manage-tour/edit?id=${tour.tourId}" ><i class="fa fa-edit"></i>Sửa</a>
		           <a type="submit" class="btn btn-danger px-4 my-1" href="/admin/manage-tour/delete?id=${tour.tourId}"><i class="fa fa-trash "></i>Xóa</a>
		         </td>
	       	</tr>
      	</form>
   	</c:forEach>
    </tbody>
  </table>
</div>