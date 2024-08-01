<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Signin</title>
<link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/views/css/signin.css">
</head>
<body>
	<div class="bg-img">
        <div class="content">
        
            <h3 class="mb-4 text-white text-center">Signin Form</h3>
            <form:form action="/account/sign-in" modelAttribute="cus" method="post">
                <div class="field">
                    <span><i class="fa fa-envelope-square"></i></span>
                    <input type="text" name="email" placeholder="Email">
                </div>
                <form:errors path="email" element="span" cssClass="error"></form:errors> 
                <div class="field mt-3">
                    <span class="fa fa-lock"></span>
                    <input type="password" name="password" placeholder="Password">   
                </div>
                <form:errors path="password" element="span" cssClass="error"></form:errors> 
                <div class="pass my-2 w-50">
                    <a href="#"><i>Forgot Password?</i></a>
                </div>
                <div class="field mt-3">
                    <input type="submit" value="SIGNIN">
                  
                </div>
                <div class="text-white my-2 text-center">Or signin with</div>
                <div class="link text-center">
                    <div class="facebook">
                        <i class="fa fa-facebook-square"></i><span class="mx-1"><i>Facebook</i></span></i>
                    </div>
                    <div class="instagram">
                        <i class="fa fa-instagram"></i><span class="mx-1"><i>Instagram</i></span></i>
                    </div>
                </div>
                <div class="signup text-white text-center">Don't have account?
                    <a href="/account/sign-up"><i>SignUp Now</i></a>
                </div>
                <h5 class="text-white text-center mt-3">${message }</h5>
            </form:form>
        </div>
    </div>
</body>
</html>