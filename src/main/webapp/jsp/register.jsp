<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<!--
	Introspect by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->

<html>
	<head>
		<title>Mm Arts & Culture</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login_main.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/ylh.css">
<!--===============================================================================================-->
		
	</head>
	<body>
<c:if test="${not empty existingAcc }">
	<div class="alert alert-danger alert-dismissible custom_alert" id="alert_container">
 ${existingAcc }
</div>
</c:if>
<c:if test="${not empty errors }">
 	<div class="alert alert-danger alert-dismissible custom_alert" id="alert_container">
		 ${errors }
		</div>


</c:if>
		<div class="register-container">
			<div class="register-title">
				Register with Email
			</div>
			<form action="register" method="post" modelAttribute="user1">
			<div class="register-container-inner">
				<div class="register-input-div">
		        <input class="register-input no-border" name="email" type="email" placeholder="Email" required>
						</input>
				 </div>
				 <div class="register-input-div">
						<input class="name-input name-margin" name="first_name" type="text" placeholder="Firstname" required>
						</input>
						<input class="name-input" type="text" name="last_name" placeholder="Lastname" required>
						</input>
					</div>
					<div class="register-input-div">
						<select class="register-input"name="gender">
								<option value="" selected disabled hidden>Gender</option>
								<option value="male">Male</option>
								<option value="female">Female</option>
						</select>
					</div>
					<div class="register-input-div">
			        <input class="register-input  no-border" name="password" type="password" placeholder="Password" required>
							</input>
					 </div>
					 <div class="register-input-div">
							 <input class="register-input  no-border" name="confirm_password" type="password" placeholder="Retype-password" required>
							 </input>
						</div>

			</div>
			<div class="register-container-inner extra">

				<div class="register-input-div">
						<input class="register-input  no-border" name="phone_no" type="text" placeholder="Phone number" required>
						</input>
				 </div>
				 <!-- <div class="register-input-div">
					 <select class="register-input"name="user_type">
							 <option value="" selected disabled hidden>Register as:</option>
							 <option value="saab">Artist</option>
							 <option value="fiat">User</option>
					 </select>
				</div> -->
				<div class="register-input-div">
					<textarea class="input-textarea" name="address" placeholder="Address"></textarea>
				 </div>
				 <div class="register-input-div">
					 <button type="submit" class="input-submit" name="register_submit" data-toggle="modal" data-target="#myModal">
						 Create Account
					 </button>
 				 </div>
				 <div class="register-input-signin">
					 <a class="signin-link" href="login.jsp">
							Login with Your Account
						</a>
				 </div>
			</div>
			</form>
		</div>
		<c:if test="${not empty message}">
		
		
       </c:if>
       
    <!--  <script type="text/javascript">
     $(document).ready(function(){
     alert("thi si");
     $(".myCustom_modal").addClass("open");
     });
</script> -->
<script type="text/javascript">
                $(window).on('load',function(){
                    $('#myModal').modal('show');
                });
            </script>



<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/controller.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/vendor/bootstrap/js/popper.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/vendor/tilt/tilt.jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/bootstrap/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/bootstrap/jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/js/login_main.js"></script>
	<script src="${pageContext.request.contextPath}/js/hla.js"></script>
	</body>
</html>
