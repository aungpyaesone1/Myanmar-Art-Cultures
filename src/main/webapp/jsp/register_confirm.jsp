<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<c:if test="${not empty successful }">
		<div class="alert alert-danger alert-dismissible custom_alert" id="alert_container">
		 ${successful }
		</div>
		
		</c:if>
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
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ylh.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/bootstrap.min.css" />
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	</head>
	<body>

		<div class="register-container-confirm">
			<div class="register-title">
				Email Confirmation
        <p>A 6-Digit Confirmation Code is Sent to Your Email Address</p>
			</div>
			<form action="toActivee" method="post">
        <div class="register-input-div">
            <input class="register-input-confirm no-border" name="activate_code" type="number" placeholder="Enter 6-Digit Code" required>
            </input>
         </div>
         <div class="register-input-div">
					 <input type="submit" value="CONFIRM" class="confirm-input-submit" name="register_submit">
						
					 
 				 </div>
				 <div class="register-input-signin">
				 	<span style="color : #ede082;">Code doesn't recieve?</span>
					 <a class="signin-link" href="login.jsp">
							Resend Code...
						</a>
				 </div>

			</form>
		</div>


	<!-- Modal -->



		<script type="text/javascript" src="${pageContext.request.contextPath}/js/ylh.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/hla.js"></script>
	</body>
</html>
