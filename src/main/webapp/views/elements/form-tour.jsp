<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  
</head>
<body>
	<form action="/manage-tour/insert">
		<div class="container mt-5">
		  <div class="row">
		    <div class="col-sm-3" style="">
		    
		      	<div class="mb-3 mt-2" style="border: 1px solid black; height: 200px">
				    <img alt="" src="/views/static/Tours/Tour${tour.tourId}/${tour.poster}" style="width: 100%;height: 100%; ">				    
			    </div>
		      	
		      	<div class="row">
				    <div class="col-7">				    	
				    	<button type="submit" class="btn btn-primary w-100">ContentFile</button>
				    </div>
				    <div class="col-5 mt-1">
				    	<div class="form-check form-switch">
						      <input class="form-check-input mt-2" type="checkbox" id="Hot" name="Hot" value="yes" ${tour.hot?'checked':''}>
						      <label class="form-check-label mt-1" for="Hot">Hot</label>
					    </div>
				    </div>
				 </div>
				 
				 <div class="mb-3 mt-2">
				    <input type="text" class="form-control form-control-sm" name="content" value="" readonly>	
				    <input type="text" class="form-control form-control-sm mt-2" name="poster" value="" readonly>			    
				 </div>		      	
		    </div>
		    
		    <div class="col-sm-9">		    
		    	<div class="row mt-2">
				    <div class="col">
				    	<h6>Tour ID:</h6>
				      	<input type="text" class="form-control" placeholder="Enter ID tour" name="TourID" value="${tour.tourId}" disabled="disabled">
				    </div>
				 </div>
			     
			     <div class="row mt-2">
				    <div class="col">
				    	<h6>Tour Name:</h6>
				    	<input type="text" class="form-control" placeholder="Enter Name tour" name="TourName" value="${tour.tourName}">
				    </div>
				 </div>
				 
			     <div class="row mt-2">
				    <div class="col">
				    	<h6>Tour Price:</h6>
				      	<input type="number" class="form-control" placeholder="Enter price" name="Price">
				    </div>
				    <div class="col">
				    	<h6>TotalQuantity:</h6>
				      	<input type="number" class="form-control" placeholder="Enter Quantity" name="TotalQuantity" value="${tour.price}">
				    </div>
				 </div>
			  	
			  	 <div class="row mt-2">
				    <div class="col">
				    	<h6>From:</h6>
				      	<input type="text" class="form-control" placeholder="From" name="From" value="${tour.fromTo}">
				    </div>
				    <div class="col">
				    	<h6>Destination:</h6>
				      	<input type="text" class="form-control" placeholder="To" name="Destination" value="${tour.destination}">
				    </div>
				 </div>
				 
				 <div class="row mt-2">
				    <div class="col">
				    	<h6>Itinerary:</h6>
				      	<input type="text" class="form-control" placeholder="Enter Itinerary" name="Itinerary" value="${tour.itinerary}">
				    </div>
				    <div class="col">
				    	<h6>DepartureDate:</h6>
				      	<input type="text" class="form-control" placeholder="Enter DepartureDate" name="DepartureDate" value="${tour.departureDate}">
				    </div>
				 </div>		    
				  
				    <div class="col">
				    	<h6>Children Categories:</h6>
				      	<select class="form-select" name="">
				      		<option></option>
				      		<option></option>
					    </select>
				    </div>
				 </div>
				 
				 <div class="row mt-4">
				    <div class="col">
				      	<button type="submit" class="btn btn-primary w-100">Submit</button>
				    </div>
				    <div class="col">
				    	<button type="submit" class="btn btn-primary w-100">Update</button>
				    </div>
				 </div>			
		    </div>
		  </div>
		</div>		
	</form>	
	
	
</body>
</html>