<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
<link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/views/css/changepwd.css">
</head>
<body>
	<div class=" container bg-white mt-5">
	<form action="/account/change-pass" method="post">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-4 border-right mt-3">
                <div class="d-flex">
                    <img class="" src="./img/changepw.jpg">
                </div>
            </div>
            <div class="col-md-5 border-right">
                <div class="p-3 py-5">

                    <h4 class="text-center">Change Password</h4>
			
					 <div class="col-md-12 mt-3">
                        <label class="labels">Email</label>
                        <input type="text" value="${mail}" class="form-control">
                    </div>
                    
                    <div class="col-md-12 mt-3">
                        <label class="labels">Current password</label>
                        <input type="password" name="pass" class="form-control" placeholder="Current password">
                    </div>

                    <div class="col-md-12 mt-2">
                        <label class="labels">New password</label>
                        <input type="password" name="pass1" class="form-control" placeholder="New password">
                    </div>

                    <div class="col-md-12 mt-2">
                        <label class="labels">Confirm password</label>
                        <input type="password" name="pass2" class="form-control" placeholder="Confirm password">
                    </div>

                    <div class=" text-center mt-4">
                        <button class="btn profile-button text-white" type="button"><b>Submit</b></button>
                    </div>
                </div>

            </div>
        </div>
        </form>
    </div>
   
</body>
</html>