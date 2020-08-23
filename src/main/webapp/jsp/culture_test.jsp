<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Mm Arts & Culture</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/hla.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ylh.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/aung.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/controller.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/bootstrap.min.css" />
		<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	</head>
	<body  style="background-color: #dddddd;">

		<!-- Header -->

    <div class="culture_bg" id="bg">
      <div class="header" id="header">
        <span class="title" id="title">MmArts&Culture</span>
				<div id="nav" class="inner">
        <ul>
          <li><a href="/demo/jsp/index">Home</a></li>
          <li><a class="selected" href="#" id="nav2">Culture</a></li>
          <li><a href="arts.jsp" id="nav3">Arts</a></li>
					<li><a href="about_us.jsp" id="nav4">About Us</a></li>
        </ul>
			</div>

				<div id="login" class="inner signin">
						<div id="login_icon" data-v-5830c558="" draggable="true" class="app-icon is-ios11 is-custom-size" style="width: 30px; height: 30px; fill: #0c2b5d;">
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50">
							    <path style="line-height:normal;text-indent:0;text-align:start;text-decoration-line:none;text-decoration-style:solid;text-decoration-color:#000;text-transform:none;block-progression:tb;isolation:auto;mix-blend-mode:normal" d="M 25 2.0078125 C 12.309296 2.0078125 2.0000002 12.317108 2 25.007812 C 2 37.112262 11.38131 47.043195 23.259766 47.935547 C 23.283185 47.93745 23.306613 47.939576 23.330078 47.941406 C 23.882405 47.981205 24.437631 48.007812 25 48.007812 C 25.562369 48.007812 26.117595 47.981205 26.669922 47.941406 C 26.693387 47.939576 26.716815 47.93745 26.740234 47.935547 C 38.61869 47.043195 48 37.112262 48 25.007812 C 48 12.317108 37.690704 2.0078125 25 2.0078125 z M 25 4.0078125 C 36.609824 4.0078125 46 13.397988 46 25.007812 C 46 30.739515 43.704813 35.924072 39.990234 39.710938 C 38.401074 38.55372 36.437194 37.863387 34.677734 37.246094 C 32.593734 36.516094 30.622172 35.824094 30.076172 34.621094 C 29.990172 33.594094 29.997859 32.792094 30.005859 31.871094 L 30.007812 31.480469 C 30.895813 30.635469 32.012531 28.852078 32.394531 27.205078 C 33.054531 26.853078 33.861516 26.009281 34.103516 23.988281 C 34.224516 22.985281 33.939062 22.2085 33.539062 21.6875 C 34.079062 19.8325 35.153484 15.136469 33.271484 12.105469 C 32.475484 10.824469 31.274313 10.016266 29.695312 9.6972656 C 28.808312 8.5992656 27.134484 8 24.896484 8 C 21.495484 8.063 19.002234 9.1047031 17.490234 11.095703 C 15.707234 13.445703 15.370328 16.996297 16.486328 21.654297 C 16.073328 22.175297 15.775438 22.963328 15.898438 23.986328 C 16.141438 26.007328 16.945469 26.851125 17.605469 27.203125 C 17.987469 28.852125 19.103188 30.635469 19.992188 31.480469 L 19.994141 31.861328 C 20.002141 32.786328 20.009828 33.590094 19.923828 34.621094 C 19.375828 35.827094 17.394781 36.526625 15.300781 37.265625 C 13.551886 37.88319 11.599631 38.574586 10.013672 39.716797 C 6.2962191 35.929504 4 30.742023 4 25.007812 C 4.0000002 13.397989 13.390176 4.0078125 25 4.0078125 z" font-weight="400" font-family="sans-serif" white-space="normal" overflow="visible"></path>
							</svg>
						</div>
				</div>
      </div>
     

			<div class="ph_size_nav" id="ph_size_nav">
				<div class="hamburger" id="hamburger">
					<div id="ph_size_menu_icon" data-v-5830c558="" draggable="true" class="app-icon is-m_rounded is-custom-size" style="width: 28px; height: 28px; fill: #0c2b5d;"><!--?xml version="1.0"?-->
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 30 30">
	    				<path style="line-height:normal;text-indent:0;text-align:start;text-decoration-line:none;text-decoration-style:solid;text-decoration-color:#000;text-transform:none;block-progression:tb;isolation:auto;mix-blend-mode:normal" d="M 5 4 A 1.0001 1.0001 0 1 0 5 6 L 25 6 A 1.0001 1.0001 0 1 0 25 4 L 5 4 z M 5 9 A 1.0001 1.0001 0 1 0 5 11 L 17 11 A 1.0001 1.0001 0 1 0 17 9 L 5 9 z M 5 14 A 1.0001 1.0001 0 1 0 5 16 L 25 16 A 1.0001 1.0001 0 1 0 25 14 L 5 14 z M 5 19 A 1.0001 1.0001 0 1 0 5 21 L 17 21 A 1.0001 1.0001 0 1 0 17 19 L 5 19 z M 5 24 A 1.0001 1.0001 0 1 0 5 26 L 25 26 A 1.0001 1.0001 0 1 0 25 24 L 5 24 z" font-weight="400" font-family="sans-serif" white-space="normal" overflow="visible"></path>
						</svg>
					</div>
				</div>

			<div class="ph_size_login_btn">
					<div id="ph_size_login_icon" data-v-5830c558="" draggable="true" class="app-icon is-ios11 is-custom-size" style="width: 28px; height: 28px; fill: #00008b;">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50">
								<path style="line-height:normal;text-indent:0;text-align:start;text-decoration-line:none;text-decoration-style:solid;text-decoration-color:#000;text-transform:none;block-progression:tb;isolation:auto;mix-blend-mode:normal" d="M 25 2.0078125 C 12.309296 2.0078125 2.0000002 12.317108 2 25.007812 C 2 37.112262 11.38131 47.043195 23.259766 47.935547 C 23.283185 47.93745 23.306613 47.939576 23.330078 47.941406 C 23.882405 47.981205 24.437631 48.007812 25 48.007812 C 25.562369 48.007812 26.117595 47.981205 26.669922 47.941406 C 26.693387 47.939576 26.716815 47.93745 26.740234 47.935547 C 38.61869 47.043195 48 37.112262 48 25.007812 C 48 12.317108 37.690704 2.0078125 25 2.0078125 z M 25 4.0078125 C 36.609824 4.0078125 46 13.397988 46 25.007812 C 46 30.739515 43.704813 35.924072 39.990234 39.710938 C 38.401074 38.55372 36.437194 37.863387 34.677734 37.246094 C 32.593734 36.516094 30.622172 35.824094 30.076172 34.621094 C 29.990172 33.594094 29.997859 32.792094 30.005859 31.871094 L 30.007812 31.480469 C 30.895813 30.635469 32.012531 28.852078 32.394531 27.205078 C 33.054531 26.853078 33.861516 26.009281 34.103516 23.988281 C 34.224516 22.985281 33.939062 22.2085 33.539062 21.6875 C 34.079062 19.8325 35.153484 15.136469 33.271484 12.105469 C 32.475484 10.824469 31.274313 10.016266 29.695312 9.6972656 C 28.808312 8.5992656 27.134484 8 24.896484 8 C 21.495484 8.063 19.002234 9.1047031 17.490234 11.095703 C 15.707234 13.445703 15.370328 16.996297 16.486328 21.654297 C 16.073328 22.175297 15.775438 22.963328 15.898438 23.986328 C 16.141438 26.007328 16.945469 26.851125 17.605469 27.203125 C 17.987469 28.852125 19.103188 30.635469 19.992188 31.480469 L 19.994141 31.861328 C 20.002141 32.786328 20.009828 33.590094 19.923828 34.621094 C 19.375828 35.827094 17.394781 36.526625 15.300781 37.265625 C 13.551886 37.88319 11.599631 38.574586 10.013672 39.716797 C 6.2962191 35.929504 4 30.742023 4 25.007812 C 4.0000002 13.397989 13.390176 4.0078125 25 4.0078125 z" font-weight="400" font-family="sans-serif" white-space="normal" overflow="visible"></path>
						</svg>
					</div>
			</div>
			<div class="ph_size_title" id="ph_size_title">
				<span>MmArts&Culture</span>
			</div>
		</div>

			<div id="navPanel" class="navPanel">
				<div class="close_nav">
					<div data-v-5830c558="" draggable="true" class="app-icon is-ios11 is-custom-size" style="width: 25px; height: 25px; fill: #ffffff;"><!--?xml version="1.0"?-->
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 30 30">
							    <path d="M 7 4 C 6.744125 4 6.4879687 4.0974687 6.2929688 4.2929688 L 4.2929688 6.2929688 C 3.9019687 6.6839688 3.9019687 7.3170313 4.2929688 7.7070312 L 11.585938 15 L 4.2929688 22.292969 C 3.9019687 22.683969 3.9019687 23.317031 4.2929688 23.707031 L 6.2929688 25.707031 C 6.6839688 26.098031 7.3170313 26.098031 7.7070312 25.707031 L 15 18.414062 L 22.292969 25.707031 C 22.682969 26.098031 23.317031 26.098031 23.707031 25.707031 L 25.707031 23.707031 C 26.098031 23.316031 26.098031 22.682969 25.707031 22.292969 L 18.414062 15 L 25.707031 7.7070312 C 26.098031 7.3170312 26.098031 6.6829688 25.707031 6.2929688 L 23.707031 4.2929688 C 23.316031 3.9019687 22.682969 3.9019687 22.292969 4.2929688 L 15 11.585938 L 7.7070312 4.2929688 C 7.5115312 4.0974687 7.255875 4 7 4 z"></path>
							</svg>
					</div>
				</div>

					<ul class="ph_screen_contant">
						<li><a href="index.jsp">Home</a></li>
						<li class="ph_size_selected"><a href="#">Culture</a></li>
						<li><a href="about_us.jsp">About Us</a></li>
					</ul>
			</div>
      <div class="culture_intro_text">
        <p class="intro_header">Cultural Posts
				</p>

      </div>
    </div>

		<div class="culture_container">
			<div class="culture_post">

				<div class="culture_img column hover01 hover15">
					<figure>
						<img src="bagan/cover2.jpg"/>
					</figure>
				</div>
				<div class="culture_post_title">
					<p>Myanmar Traditional Food</p>
				</div>
				<div class="culture_post_des">
					<p>Do you know one of the best myanmar food is Mohinkhar.It is very delicious <a class="culture_post_read_more_link"><label style="cursor:pointer;">View detail...</label></a></p>
				</div>
				<div class="culture_post_date_box">

					<div data-v-5830c558="" draggable="true" class="app-icon is-ios7 is-custom-size date_custom" style="width: 24px; height: 24px; fill: rgb(109, 109, 109);"><!--?xml version="1.0" encoding="UTF-8"?-->

						<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 50 50" version="1.1">
							<g id="surface1">
								<path style=" " d="M 12 0 C 10.90625 0 10 0.90625 10 2 L 10 4 L 4 4 C 2.839844 4 2 4.839844 2 6 L 2 13 L 48 13 L 48 6 C 48 4.839844 47.160156 4 46 4 L 40 4 L 40 2 C 40 0.90625 39.09375 0 38 0 L 36 0 C 34.90625 0 34 0.90625 34 2 L 34 4 L 16 4 L 16 2 C 16 0.90625 15.09375 0 14 0 Z M 12 2 L 14 2 L 14 8 L 12 8 Z M 36 2 L 38 2 L 38 8 L 36 8 Z M 2 15 L 2 46 C 2 47.160156 2.839844 48 4 48 L 46 48 C 47.160156 48 48 47.160156 48 46 L 48 15 Z M 12 21 L 17 21 L 17 26 L 12 26 Z M 19 21 L 24 21 L 24 26 L 19 26 Z M 26 21 L 31 21 L 31 26 L 26 26 Z M 33 21 L 38 21 L 38 26 L 33 26 Z M 12 28 L 17 28 L 17 33 L 12 33 Z M 19 28 L 24 28 L 24 33 L 19 33 Z M 26 28 L 31 28 L 31 33 L 26 33 Z M 33 28 L 38 28 L 38 33 L 33 33 Z M 12 35 L 17 35 L 17 40 L 12 40 Z M 19 35 L 24 35 L 24 40 L 19 40 Z M 26 35 L 31 35 L 31 40 L 26 40 Z M 33 35 L 38 35 L 38 40 L 33 40 Z "></path>
							</g>
						</svg>
				</div>
				<div class="cultural_post_date_contant">28.8.2017</div>
				</div>

			</div>
			 <c:if test="${not empty employee}">
             <c:forEach var="post" items="${employee}">
	
				<div class="culture_post">
					<div class="culture_img column hover01 hover15">
						<figure>
							<img src="../culture_images/${post.c_post_photo }"/>
						</figure>
					</div>

								<div class="culture_post_title">
									<p>${post.c_post_title }</p>
								</div>
								<div class="culture_post_des">
									<p>${post.c_post_des }<a class="culture_post_read_more_link" id="detail"><label style="cursor:pointer;">View detail...</label></a></p>
								</div>
								<div class="culture_post_date_box">

									<div data-v-5830c558="" draggable="true" class="app-icon is-ios7 is-custom-size date_custom" style="width: 24px; height: 24px; fill: rgb(109, 109, 109);"><!--?xml version="1.0" encoding="UTF-8"?-->

										<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 50 50" version="1.1">
											<g id="surface1">
												<path style=" " d="M 12 0 C 10.90625 0 10 0.90625 10 2 L 10 4 L 4 4 C 2.839844 4 2 4.839844 2 6 L 2 13 L 48 13 L 48 6 C 48 4.839844 47.160156 4 46 4 L 40 4 L 40 2 C 40 0.90625 39.09375 0 38 0 L 36 0 C 34.90625 0 34 0.90625 34 2 L 34 4 L 16 4 L 16 2 C 16 0.90625 15.09375 0 14 0 Z M 12 2 L 14 2 L 14 8 L 12 8 Z M 36 2 L 38 2 L 38 8 L 36 8 Z M 2 15 L 2 46 C 2 47.160156 2.839844 48 4 48 L 46 48 C 47.160156 48 48 47.160156 48 46 L 48 15 Z M 12 21 L 17 21 L 17 26 L 12 26 Z M 19 21 L 24 21 L 24 26 L 19 26 Z M 26 21 L 31 21 L 31 26 L 26 26 Z M 33 21 L 38 21 L 38 26 L 33 26 Z M 12 28 L 17 28 L 17 33 L 12 33 Z M 19 28 L 24 28 L 24 33 L 19 33 Z M 26 28 L 31 28 L 31 33 L 26 33 Z M 33 28 L 38 28 L 38 33 L 33 33 Z M 12 35 L 17 35 L 17 40 L 12 40 Z M 19 35 L 24 35 L 24 40 L 19 40 Z M 26 35 L 31 35 L 31 40 L 26 40 Z M 33 35 L 38 35 L 38 40 L 33 40 Z "></path>
											</g>
										</svg>
									</div>
								<div class="cultural_post_date_contant">28.8.2017</div>
							</div>

				</div>
		</c:forEach>
		</c:if>
			
				<div class="culture_post">

					<div class="culture_img column hover01 hover15">
						<figure>
							<img src="bagan/cover2.jpg"/>
						</figure>
					</div>
					<div class="culture_post_title">
						<p>Myanmar Traditional Food</p>
					</div>
					<div class="culture_post_des">
						<p>Do you know one of the best myanmar food is Mohinkhar.It is very delicious  <a class="culture_post_read_more_link"><label style="cursor:pointer;">View detail...</label></a></p>
					</div>

					<div class="culture_post_date_box">

						<div data-v-5830c558="" draggable="true" class="app-icon is-ios7 is-custom-size date_custom" style="width: 24px; height: 24px; fill: rgb(109, 109, 109);"><!--?xml version="1.0" encoding="UTF-8"?-->

							<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 50 50" version="1.1">
								<g id="surface1">
									<path style=" " d="M 12 0 C 10.90625 0 10 0.90625 10 2 L 10 4 L 4 4 C 2.839844 4 2 4.839844 2 6 L 2 13 L 48 13 L 48 6 C 48 4.839844 47.160156 4 46 4 L 40 4 L 40 2 C 40 0.90625 39.09375 0 38 0 L 36 0 C 34.90625 0 34 0.90625 34 2 L 34 4 L 16 4 L 16 2 C 16 0.90625 15.09375 0 14 0 Z M 12 2 L 14 2 L 14 8 L 12 8 Z M 36 2 L 38 2 L 38 8 L 36 8 Z M 2 15 L 2 46 C 2 47.160156 2.839844 48 4 48 L 46 48 C 47.160156 48 48 47.160156 48 46 L 48 15 Z M 12 21 L 17 21 L 17 26 L 12 26 Z M 19 21 L 24 21 L 24 26 L 19 26 Z M 26 21 L 31 21 L 31 26 L 26 26 Z M 33 21 L 38 21 L 38 26 L 33 26 Z M 12 28 L 17 28 L 17 33 L 12 33 Z M 19 28 L 24 28 L 24 33 L 19 33 Z M 26 28 L 31 28 L 31 33 L 26 33 Z M 33 28 L 38 28 L 38 33 L 33 33 Z M 12 35 L 17 35 L 17 40 L 12 40 Z M 19 35 L 24 35 L 24 40 L 19 40 Z M 26 35 L 31 35 L 31 40 L 26 40 Z M 33 35 L 38 35 L 38 40 L 33 40 Z "></path>
								</g>
							</svg>
					</div>
					<div class="cultural_post_date_contant">28.8.2017</div>
					</div>
				</div>
				<div class="culture_post">

					<div class="culture_img column hover01 hover15">
						<figure>
							<img src="bagan/cover2.jpg"/>
						</figure>
					</div>
					<div class="culture_post_title">
						<p>Myanmar Traditional Food</p>
					</div>
					<div class="culture_post_des">
						<p>Do you know one of the best myanmar food is Mohinkhar.It is very delicious</p>
					</div>
					<div class="culture_post_date_box">

						<div data-v-5830c558="" draggable="true" class="app-icon is-ios7 is-custom-size date_custom" style="width: 24px; height: 24px; fill: rgb(109, 109, 109);"><!--?xml version="1.0" encoding="UTF-8"?-->

							<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 50 50" version="1.1">
								<g id="surface1">
									<path style=" " d="M 12 0 C 10.90625 0 10 0.90625 10 2 L 10 4 L 4 4 C 2.839844 4 2 4.839844 2 6 L 2 13 L 48 13 L 48 6 C 48 4.839844 47.160156 4 46 4 L 40 4 L 40 2 C 40 0.90625 39.09375 0 38 0 L 36 0 C 34.90625 0 34 0.90625 34 2 L 34 4 L 16 4 L 16 2 C 16 0.90625 15.09375 0 14 0 Z M 12 2 L 14 2 L 14 8 L 12 8 Z M 36 2 L 38 2 L 38 8 L 36 8 Z M 2 15 L 2 46 C 2 47.160156 2.839844 48 4 48 L 46 48 C 47.160156 48 48 47.160156 48 46 L 48 15 Z M 12 21 L 17 21 L 17 26 L 12 26 Z M 19 21 L 24 21 L 24 26 L 19 26 Z M 26 21 L 31 21 L 31 26 L 26 26 Z M 33 21 L 38 21 L 38 26 L 33 26 Z M 12 28 L 17 28 L 17 33 L 12 33 Z M 19 28 L 24 28 L 24 33 L 19 33 Z M 26 28 L 31 28 L 31 33 L 26 33 Z M 33 28 L 38 28 L 38 33 L 33 33 Z M 12 35 L 17 35 L 17 40 L 12 40 Z M 19 35 L 24 35 L 24 40 L 19 40 Z M 26 35 L 31 35 L 31 40 L 26 40 Z M 33 35 L 38 35 L 38 40 L 33 40 Z "></path>
								</g>
							</svg>
					</div>
					<div class="cultural_post_date_contant">28.8.2017</div>
					</div>
				</div>
					<div class="culture_post">

						<div class="culture_img column hover01 hover15">
							<figure>
								<img src="bagan/cover2.jpg"/>
							</figure>
						</div>
						<div class="culture_post_title">
							<p>Myanmar Traditional Food</p>
						</div>
						<div class="culture_post_des">
							<p>Do you know one of the best myanmar food is Mohinkhar.It is very delicious</p>
						</div>
						<div class="culture_post_date_box">

							<div data-v-5830c558="" draggable="true" class="app-icon is-ios7 is-custom-size date_custom" style="width: 24px; height: 24px; fill: rgb(109, 109, 109);"><!--?xml version="1.0" encoding="UTF-8"?-->

								<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 50 50" version="1.1">
									<g id="surface1">
										<path style=" " d="M 12 0 C 10.90625 0 10 0.90625 10 2 L 10 4 L 4 4 C 2.839844 4 2 4.839844 2 6 L 2 13 L 48 13 L 48 6 C 48 4.839844 47.160156 4 46 4 L 40 4 L 40 2 C 40 0.90625 39.09375 0 38 0 L 36 0 C 34.90625 0 34 0.90625 34 2 L 34 4 L 16 4 L 16 2 C 16 0.90625 15.09375 0 14 0 Z M 12 2 L 14 2 L 14 8 L 12 8 Z M 36 2 L 38 2 L 38 8 L 36 8 Z M 2 15 L 2 46 C 2 47.160156 2.839844 48 4 48 L 46 48 C 47.160156 48 48 47.160156 48 46 L 48 15 Z M 12 21 L 17 21 L 17 26 L 12 26 Z M 19 21 L 24 21 L 24 26 L 19 26 Z M 26 21 L 31 21 L 31 26 L 26 26 Z M 33 21 L 38 21 L 38 26 L 33 26 Z M 12 28 L 17 28 L 17 33 L 12 33 Z M 19 28 L 24 28 L 24 33 L 19 33 Z M 26 28 L 31 28 L 31 33 L 26 33 Z M 33 28 L 38 28 L 38 33 L 33 33 Z M 12 35 L 17 35 L 17 40 L 12 40 Z M 19 35 L 24 35 L 24 40 L 19 40 Z M 26 35 L 31 35 L 31 40 L 26 40 Z M 33 35 L 38 35 L 38 40 L 33 40 Z "></path>
									</g>
								</svg>
						</div>
						<div class="cultural_post_date_contant">28.8.2017</div>
						</div>
					</div>
					<div class="culture_post">

						<div class="culture_img column hover01 hover15">
							<figure>
								<img src="bagan/cover2.jpg"/>
							</figure>
						</div>
						<div class="culture_post_title">
							<p>Myanmar Traditional Food</p>
						</div>
						<div class="culture_post_des">
							<p>Do you know one of the best myanmar food is Mohinkhar.It is very delicious</p>
						</div>
						<div class="culture_post_date_box">

							<div data-v-5830c558="" draggable="true" class="app-icon is-ios7 is-custom-size date_custom" style="width: 24px; height: 24px; fill: rgb(109, 109, 109);"><!--?xml version="1.0" encoding="UTF-8"?-->

								<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 50 50" version="1.1">
									<g id="surface1">
										<path style=" " d="M 12 0 C 10.90625 0 10 0.90625 10 2 L 10 4 L 4 4 C 2.839844 4 2 4.839844 2 6 L 2 13 L 48 13 L 48 6 C 48 4.839844 47.160156 4 46 4 L 40 4 L 40 2 C 40 0.90625 39.09375 0 38 0 L 36 0 C 34.90625 0 34 0.90625 34 2 L 34 4 L 16 4 L 16 2 C 16 0.90625 15.09375 0 14 0 Z M 12 2 L 14 2 L 14 8 L 12 8 Z M 36 2 L 38 2 L 38 8 L 36 8 Z M 2 15 L 2 46 C 2 47.160156 2.839844 48 4 48 L 46 48 C 47.160156 48 48 47.160156 48 46 L 48 15 Z M 12 21 L 17 21 L 17 26 L 12 26 Z M 19 21 L 24 21 L 24 26 L 19 26 Z M 26 21 L 31 21 L 31 26 L 26 26 Z M 33 21 L 38 21 L 38 26 L 33 26 Z M 12 28 L 17 28 L 17 33 L 12 33 Z M 19 28 L 24 28 L 24 33 L 19 33 Z M 26 28 L 31 28 L 31 33 L 26 33 Z M 33 28 L 38 28 L 38 33 L 33 33 Z M 12 35 L 17 35 L 17 40 L 12 40 Z M 19 35 L 24 35 L 24 40 L 19 40 Z M 26 35 L 31 35 L 31 40 L 26 40 Z M 33 35 L 38 35 L 38 40 L 33 40 Z "></path>
									</g>
								</svg>
						</div>
						<div class="cultural_post_date_contant">28.8.2017</div>
						</div>
					</div>
					<div class="center">
					<div class="culture_paginate">
						<a class="paginate_content" href="#">&laquo;</a>
			    	<a class="paginate_content" href="#">1</a>
				    <a class="paginate_content" href="#" class="active">2</a>
				    <a class="paginate_content" href="#">3</a>
				    <a class="paginate_content" href="#">&raquo;</a>
					</div>
				</div>
		</div>


		<!-- <div class="go_up" id="go_up">
			<div data-v-5830c558="" draggable="true" class="app-icon is-color is-custom-size" style="width: 50px; height: 50px; fill: #0c2b5d;"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 252 252"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><path d="M0,252v-252h252v252z" fill="none"></path><g id="Layer_1"><path d="M231,126c0,57.981 -47.019,105 -105,105c-57.981,0 -105,-47.019 -105,-105c0,-57.981 47.019,-105 105,-105c57.981,0 105,47.019 105,105z" fill="#0c2b5d"></path><path d="M184.2855,135.9645l-16.2855,16.2855l-42.5355,-40.95525l-41.4645,40.95525l-16.2855,-16.2855l57.75,-57.2145z" fill="#ffffff"></path></g></g></svg></div>
		</div> -->
		<a href="javascript:" id="return-to-top"><i class="icon-chevron-up"></i></a>

		<!-- just desing-->
		 <div class="just_design">
				 <div class="just_design_contant">
					 <a href="http://www.twitter.com">
						 <div data-v-5830c558="" draggable="true" class="app-icon is-ios7 is-custom-size" style="width: 35px; height: 35px; fill: rgb(0, 0, 0);"><!--?xml version="1.0"?-->
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50">
									 <path d="M25,2C12.317,2,2,12.317,2,25s10.317,23,23,23s23-10.317,23-23S37.683,2,25,2z M36.237,20.524 c0.01,0.236,0.016,0.476,0.016,0.717C36.253,28.559,30.68,37,20.491,37c-3.128,0-6.041-0.917-8.491-2.489 c0.433,0.052,0.872,0.077,1.321,0.077c2.596,0,4.985-0.884,6.879-2.37c-2.424-0.044-4.468-1.649-5.175-3.847 c0.339,0.065,0.686,0.1,1.044,0.1c0.505,0,0.995-0.067,1.458-0.195c-2.532-0.511-4.441-2.747-4.441-5.432c0-0.024,0-0.047,0-0.07 c0.747,0.415,1.6,0.665,2.509,0.694c-1.488-0.995-2.464-2.689-2.464-4.611c0-1.015,0.272-1.966,0.749-2.786 c2.733,3.351,6.815,5.556,11.418,5.788c-0.095-0.406-0.145-0.828-0.145-1.262c0-3.059,2.48-5.539,5.54-5.539 c1.593,0,3.032,0.672,4.042,1.749c1.261-0.248,2.448-0.709,3.518-1.343c-0.413,1.292-1.292,2.378-2.437,3.064 c1.122-0.136,2.188-0.432,3.183-0.873C38.257,18.766,37.318,19.743,36.237,20.524z"></path>
								</svg>
							</div>
						</a>
				 </div>
				 <div class="just_design_contant">
				 	<a href="http://www.facebook.com">
						<div data-v-5830c558="" draggable="true" class="app-icon is-ios7 is-custom-size" style="width: 35px; height: 35px; fill: rgb(0, 0, 0);"><!--?xml version="1.0"?-->
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50">
								    <path d="M25,2C12.318,2,2,12.317,2,25s10.318,23,23,23c12.683,0,23-10.317,23-23S37.683,2,25,2z M32,16h-3.29 C26.772,16,26,16.455,26,17.806V21h6l-1,5h-5v13h-6V26h-3v-5h3v-2.774C20,14.001,21.686,11,26.581,11C29.203,11,32,12,32,12V16z"></path>
								</svg>
						</div>
					</a>
				 </div>
				 <div class="just_design_contant">
				 		<a href="http://www.youtube.com">
							<div data-v-5830c558="" draggable="true" class="app-icon is-flat_round is-custom-size" style="width: 35px; height: 35px; fill: rgb(0, 0, 0);"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 252 252"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><path d="M0,252v-252h252v252z" fill="none"></path><g id="Layer_1"><g><g fill="#000000"><g><g><g><g><g><path d="M248.11172,126c0,-67.42969 -54.68203,-122.11172 -122.11172,-122.11172c-67.42969,0 -122.11172,54.68203 -122.11172,122.11172c0,67.42969 54.68203,122.11172 122.11172,122.11172c67.42969,0 122.11172,-54.68203 122.11172,-122.11172z"></path></g></g></g></g></g></g><g><path d="M202.83047,170.24766c0,3.69141 -3.00234,6.69375 -6.69375,6.69375h-140.27344c-3.69141,0 -6.69375,-3.00234 -6.69375,-6.69375v-88.49531c0,-3.69141 3.00234,-6.69375 6.69375,-6.69375h140.32266c3.69141,0 6.69375,3.00234 6.69375,6.69375v88.49531z" fill="#333333"></path><g fill="#000000"><path d="M169.01719,121.61953l-60.58828,-37.20937c-1.67344,-1.03359 -3.83906,-1.08281 -5.5125,-0.09844c-1.72266,0.98438 -2.80547,2.80547 -2.80547,4.77422v74.12344c0,1.96875 1.08281,3.78984 2.80547,4.77422c0.83672,0.44297 1.72266,0.68906 2.65781,0.68906c0.98438,0 1.96875,-0.29531 2.85469,-0.7875l60.58828,-36.91406c1.62422,-0.98437 2.60859,-2.75625 2.60859,-4.67578c0,-1.91953 -0.98437,-3.69141 -2.60859,-4.67578z"></path></g></g></g></g></g></svg></div>
						</a>
				 </div>
			</div>
		<!-- Footer -->
			<section id="footer">
				<div class="inner">
					<header>
						<h2>Contact Us</h2>
					</header>

					<div class="copyright">
						<h4>University of Technology (Yatanarpon Cyber City)</h4>
						<h4>Powered &nbsp;By &nbsp;Team &nbsp; Makers .&nbsp;.&nbsp;.</h4>
					</div>
				</div>
			</section>

		<!-- Scripts -->
		<script src="${pageContext.request.contextPath}/bootstrap/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/skel.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/util.js"></script>
		<script src="${pageContext.request.contextPath}/js/main.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/hla.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/ylh.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/aung.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/wow.js"></script>
			<script type="text/javascript" src="${pageContext.request.contextPath}/js/wow.min.js"></script>
			<script>
					new WOW().init();
			</script>
	</body>
</html>
