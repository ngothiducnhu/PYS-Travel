<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit profile</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/views/css/editprofile.css">
</head>
<body>
	<div class=" container bg-white mt-4">
		<form action="/account/edit-profile" method="post"
			enctype="multipart/form-data">
			<div class="row">
				<div class="col-md-1"> </div>
				<div class="col-md-4 border-right mt-3">
					<div class="d-flex flex-column align-items-center text-center p-3 py-5 mt-5" id="avatar">
						<img src="/${avatar}" alt="" style="width: 200px; height: 200px"> 
						<input name="avatar" type="file" onchange="previewFile()" class="mt-1" style="display: none">							
					</div>
				</div>
				<div class="col-md-5 border-right">
					<div class="p-3 py-5">

						<h4 class="text-center">Edit Profile</h4>

						<div class="col-md-12 mt-3">

							<label class="labels">Full Name</label> 
							<input type="text" class="form-control" name="name" placeholder="Full Name" value="${user.name}">
						</div>

						<div class="col-md-12 mt-2">
							<label class="labels">PhoneNumber</label> 
							<input type="text"	class="form-control" name="phone" placeholder="Phone number" value="${user.phone}">
						</div>
						
						<div class="col-md-12 mt-2">
							<label class="labels">Email</label> 
							<input type="text" class="form-control" name="email" placeholder=" Email" value="${user.email}">
						</div>
						<div class="col-md-12 mt-2">
							<label class="labels">Gender</label> <br> 
							<input type="radio" name="gender" ${user.gender?'checked':''} value="true">Male 
							<input type="radio" name="gender" ${user.gender?'':'checked'} value="false">Female
						</div>

						<div class=" text-center mt-4">
							<button class="btn profile-button text-white" type="submit">
								<b>Save Profile</b>
							</button>
						</div>
					</div>

				</div>
			</div>
		</form>
	</div>

</body>
</html>
<script type="text/javascript">
	inputAvatar = document.getElementsByName('avatar')[0];
	document.getElementById('avatar').addEventListener('click',function() {
		inputAvatar.click();
	})

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#blah').attr('src', e.target.result).width(150).height(200);
			};
			reader.readAsDataURL(input.files[0]);
		}
	}

	function previewFile() {
		var preview = document.querySelector('img');
		var file = document.querySelector('input[type=file]').files[0];
		var reader = new FileReader();

		reader.onloadend = function() {
			preview.src = reader.result;
		}

		if (file) {
			reader.readAsDataURL(file);
		} else {
			preview.src = "";
		}
	}
</script>