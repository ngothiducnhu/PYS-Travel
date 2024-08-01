<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/views/css/signup.css">
</head>

<body>
	 <div class="bg-img">
        <div class="content">
        
            <h3 class="mb-4 text-white text-center">Signup Form</h3> 
            <form:form action="/account/sign-up" modelAttribute="cus" method="post">
            
                <div class="field">
                    <span class="fa fa-user"></span>
                    <input type="text" name="customerName" placeholder="Username" >                                    	                  
                </div>
                <form:errors path="customerName" element="span" cssClass="error"></form:errors> 
                
                <div class="field mt-3">
                    <span><i class="fa fa-phone"></i></span>
                    <input type="text" name="phoneNumber" placeholder="PhoneNumber">
                </div>
                <form:errors path="phoneNumber" element="span" cssClass="error"></form:errors>
                 
                <div class="field mt-3">
                    <span><i class="fa fa-envelope-square"></i></span>
                    <input type="text" name="email" placeholder="Email"> <br>                  
                </div>
                 <form:errors path="email" element="span" cssClass="error"></form:errors> 
                 
                <div class="field mt-3">
                    <span class="fa fa-lock"></span>
                    <input type="password" name="password" placeholder="Password">   
                </div>
				 <form:errors path="password" element="span" cssClass="error"></form:errors> 
                <div class="field mt-3">
                    <input type="submit" value="SIGNUP">
                </div>
                <div class="text-white my-2 text-center">Or signup with</div>
                <div class="link text-center">
                    <div class="facebook">
                        <i class="fa fa-facebook-square"></i><span class="mx-1"><i>Facebook</i></span></i>
                    </div>
                    <div class="instagram">
                        <i class="fa fa-instagram"></i><span class="mx-1"><i>Instagram</i></span></i>
                    </div>
                </div>
                <div class="login text-white text-center">Don't have account?
                    <a href="/account/sign-in"><i>Login Now</i></a>
                </div>
                <div class="text-white text-center">
                	<h5 class="text-center mt-3">${message }</h5>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>