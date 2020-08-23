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
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/kaung_index.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/bootstrap.min.css" />
		<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/controller.js"></script>
	</head>
	<body  style="background-color: white;">

		

		<!-- Header -->

    <div class="arts_bg" id="bg">
      <div class="header" id="header">
        <span class="title" id="title">MmArts&Culture</span>
				<div id="nav" class="inner">
        <ul>
          <li><a id="nav1" class="disabled">Home</a></li>
					<li><a class="selected" id="nav3" >Arts</a></li>
          <li><a id="nav2" class="disabled">Culture</a></li>

					<li><a id="nav4" class="disabled">Auction</a></li>
        </ul>
			</div>

				<div id="nav" class="inner signin" style="display: none;">
						<div id="login_icon" data-v-5830c558="" draggable="true" class="app-icon is-ios11 is-custom-size" style="width: 30px; height: 30px; fill: #0c2b5d;">
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50">
							    <path style="line-height:normal;text-indent:0;text-align:start;text-decoration-line:none;text-decoration-style:solid;text-decoration-color:#000;text-transform:none;block-progression:tb;isolation:auto;mix-blend-mode:normal" d="M 25 2.0078125 C 12.309296 2.0078125 2.0000002 12.317108 2 25.007812 C 2 37.112262 11.38131 47.043195 23.259766 47.935547 C 23.283185 47.93745 23.306613 47.939576 23.330078 47.941406 C 23.882405 47.981205 24.437631 48.007812 25 48.007812 C 25.562369 48.007812 26.117595 47.981205 26.669922 47.941406 C 26.693387 47.939576 26.716815 47.93745 26.740234 47.935547 C 38.61869 47.043195 48 37.112262 48 25.007812 C 48 12.317108 37.690704 2.0078125 25 2.0078125 z M 25 4.0078125 C 36.609824 4.0078125 46 13.397988 46 25.007812 C 46 30.739515 43.704813 35.924072 39.990234 39.710938 C 38.401074 38.55372 36.437194 37.863387 34.677734 37.246094 C 32.593734 36.516094 30.622172 35.824094 30.076172 34.621094 C 29.990172 33.594094 29.997859 32.792094 30.005859 31.871094 L 30.007812 31.480469 C 30.895813 30.635469 32.012531 28.852078 32.394531 27.205078 C 33.054531 26.853078 33.861516 26.009281 34.103516 23.988281 C 34.224516 22.985281 33.939062 22.2085 33.539062 21.6875 C 34.079062 19.8325 35.153484 15.136469 33.271484 12.105469 C 32.475484 10.824469 31.274313 10.016266 29.695312 9.6972656 C 28.808312 8.5992656 27.134484 8 24.896484 8 C 21.495484 8.063 19.002234 9.1047031 17.490234 11.095703 C 15.707234 13.445703 15.370328 16.996297 16.486328 21.654297 C 16.073328 22.175297 15.775438 22.963328 15.898438 23.986328 C 16.141438 26.007328 16.945469 26.851125 17.605469 27.203125 C 17.987469 28.852125 19.103188 30.635469 19.992188 31.480469 L 19.994141 31.861328 C 20.002141 32.786328 20.009828 33.590094 19.923828 34.621094 C 19.375828 35.827094 17.394781 36.526625 15.300781 37.265625 C 13.551886 37.88319 11.599631 38.574586 10.013672 39.716797 C 6.2962191 35.929504 4 30.742023 4 25.007812 C 4.0000002 13.397989 13.390176 4.0078125 25 4.0078125 z" font-weight="400" font-family="sans-serif" white-space="normal" overflow="visible"></path>
							</svg>
						</div>
				</div>
				<div class="inner acc_setting_icon" id="nav">
					<div id="acc_setting_icon" data-v-5830c558="" draggable="true" class="app-icon is-ios7 is-custom-size" style="width: 30px; height: 30px; fill: #0c2b5d;;"><!--?xml version="1.0" encoding="UTF-8"?-->
						<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 50 50" version="1.1">
						<g id="surface1">
						<path style=" " d="M 19.875 3.3125 C 16.191406 3.394531 13.5 4.519531 11.875 6.65625 C 9.949219 9.1875 9.570313 13.054688 10.78125 18.1875 C 10.367188 18.71875 9.996094 19.558594 10.09375 20.71875 C 10.390625 22.882813 11.234375 23.792969 11.90625 24.15625 C 12.246094 25.960938 13.210938 27.847656 14.09375 28.75 C 14.097656 28.972656 14.121094 29.195313 14.125 29.40625 C 14.144531 30.363281 14.15625 31.1875 14.03125 32.25 C 13.480469 33.652344 11.441406 34.476563 9.09375 35.40625 C 5.191406 36.953125 0.332031 38.867188 0 44.9375 L -0.0625 46 L 40.0625 46 L 40 44.9375 C 39.664063 38.847656 34.785156 36.921875 30.875 35.375 C 28.539063 34.453125 26.507813 33.675781 25.875 32.28125 C 25.796875 30.960938 25.8125 29.96875 25.8125 28.75 C 26.679688 27.835938 27.585938 25.921875 27.96875 24.1875 C 28.6875 23.847656 29.574219 22.972656 29.78125 20.6875 C 29.875 19.5625 29.582031 18.722656 29.15625 18.1875 C 30.003906 15.460938 30.734375 10.785156 28.9375 7.8125 C 28.085938 6.402344 26.8125 5.53125 25.09375 5.1875 C 24.128906 3.96875 22.296875 3.3125 19.875 3.3125 Z M 33 16 L 33 18 L 50 18 L 50 16 Z M 31 24 L 31 26 L 50 26 L 50 24 Z M 33 32 L 33 34 L 50 34 L 50 32 Z "></path>
						</g>
						</svg>
					</div>
				</div>
				<div class="acc_setting_content" id="acc_setting_content">
					<ul>
						<li><a id="profile">Profile</a></li>
						<li  data-toggle="modal" data-target="#edit_profile_modal"><a>Edit Profile</a></li>
						<li data-toggle="modal" data-target="#edit_password_modal"><a>Edit Password</a></li>
						<li><a>About Us</a></li>
						<li><a id="logout">Logout</a></li>
					</ul>
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

			<div class="ph_size_login_btn" style="display: none;">
					<div id="ph_size_login_icon" data-v-5830c558="" draggable="true" class="app-icon is-ios11 is-custom-size" style="width: 28px; height: 28px; fill: #00008b;">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50">
								<path style="line-height:normal;text-indent:0;text-align:start;text-decoration-line:none;text-decoration-style:solid;text-decoration-color:#000;text-transform:none;block-progression:tb;isolation:auto;mix-blend-mode:normal" d="M 25 2.0078125 C 12.309296 2.0078125 2.0000002 12.317108 2 25.007812 C 2 37.112262 11.38131 47.043195 23.259766 47.935547 C 23.283185 47.93745 23.306613 47.939576 23.330078 47.941406 C 23.882405 47.981205 24.437631 48.007812 25 48.007812 C 25.562369 48.007812 26.117595 47.981205 26.669922 47.941406 C 26.693387 47.939576 26.716815 47.93745 26.740234 47.935547 C 38.61869 47.043195 48 37.112262 48 25.007812 C 48 12.317108 37.690704 2.0078125 25 2.0078125 z M 25 4.0078125 C 36.609824 4.0078125 46 13.397988 46 25.007812 C 46 30.739515 43.704813 35.924072 39.990234 39.710938 C 38.401074 38.55372 36.437194 37.863387 34.677734 37.246094 C 32.593734 36.516094 30.622172 35.824094 30.076172 34.621094 C 29.990172 33.594094 29.997859 32.792094 30.005859 31.871094 L 30.007812 31.480469 C 30.895813 30.635469 32.012531 28.852078 32.394531 27.205078 C 33.054531 26.853078 33.861516 26.009281 34.103516 23.988281 C 34.224516 22.985281 33.939062 22.2085 33.539062 21.6875 C 34.079062 19.8325 35.153484 15.136469 33.271484 12.105469 C 32.475484 10.824469 31.274313 10.016266 29.695312 9.6972656 C 28.808312 8.5992656 27.134484 8 24.896484 8 C 21.495484 8.063 19.002234 9.1047031 17.490234 11.095703 C 15.707234 13.445703 15.370328 16.996297 16.486328 21.654297 C 16.073328 22.175297 15.775438 22.963328 15.898438 23.986328 C 16.141438 26.007328 16.945469 26.851125 17.605469 27.203125 C 17.987469 28.852125 19.103188 30.635469 19.992188 31.480469 L 19.994141 31.861328 C 20.002141 32.786328 20.009828 33.590094 19.923828 34.621094 C 19.375828 35.827094 17.394781 36.526625 15.300781 37.265625 C 13.551886 37.88319 11.599631 38.574586 10.013672 39.716797 C 6.2962191 35.929504 4 30.742023 4 25.007812 C 4.0000002 13.397989 13.390176 4.0078125 25 4.0078125 z" font-weight="400" font-family="sans-serif" white-space="normal" overflow="visible"></path>
						</svg>
					</div>
			</div>
			<div class="ph_size_acc_setting_btn">
				<div id="ph_size_acc_setting_icon" data-v-5830c558="" draggable="true" class="app-icon is-ios7 is-custom-size" style="width: 30px; height: 30px; fill: #0c2b5d;;"><!--?xml version="1.0" encoding="UTF-8"?-->
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 50 50" version="1.1">
					<g id="surface1">
					<path style=" " d="M 19.875 3.3125 C 16.191406 3.394531 13.5 4.519531 11.875 6.65625 C 9.949219 9.1875 9.570313 13.054688 10.78125 18.1875 C 10.367188 18.71875 9.996094 19.558594 10.09375 20.71875 C 10.390625 22.882813 11.234375 23.792969 11.90625 24.15625 C 12.246094 25.960938 13.210938 27.847656 14.09375 28.75 C 14.097656 28.972656 14.121094 29.195313 14.125 29.40625 C 14.144531 30.363281 14.15625 31.1875 14.03125 32.25 C 13.480469 33.652344 11.441406 34.476563 9.09375 35.40625 C 5.191406 36.953125 0.332031 38.867188 0 44.9375 L -0.0625 46 L 40.0625 46 L 40 44.9375 C 39.664063 38.847656 34.785156 36.921875 30.875 35.375 C 28.539063 34.453125 26.507813 33.675781 25.875 32.28125 C 25.796875 30.960938 25.8125 29.96875 25.8125 28.75 C 26.679688 27.835938 27.585938 25.921875 27.96875 24.1875 C 28.6875 23.847656 29.574219 22.972656 29.78125 20.6875 C 29.875 19.5625 29.582031 18.722656 29.15625 18.1875 C 30.003906 15.460938 30.734375 10.785156 28.9375 7.8125 C 28.085938 6.402344 26.8125 5.53125 25.09375 5.1875 C 24.128906 3.96875 22.296875 3.3125 19.875 3.3125 Z M 33 16 L 33 18 L 50 18 L 50 16 Z M 31 24 L 31 26 L 50 26 L 50 24 Z M 33 32 L 33 34 L 50 34 L 50 32 Z "></path>
					</g>
					</svg>
				</div>
			</div>
			<div class="ph_size_acc_setting_content">
				<ul>
					<li><a id="profilephone">Profile</a></li>
					<li  data-toggle="modal" data-target="#edit_profile_modal"><a>Edit Profile</a></li>
					<li data-toggle="modal" data-target="#edit_password_modal"><a>Edit Password</a></li>
					<li><a>About Us</a></li>
					<li><a id="logoutphone">Logout</a></li>
				</ul>
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
					<li><a href="/" onclick="return false;">Home</a></li>
					<li class="ph_size_selected"><a href="/" onclick="return false;">Arts</a></li>
					<li><a href="/" onclick="return false;">Culture</a></li>

					<li><a href="/" onclick="return false;">Auction</a></li>
				</ul>
			</div>
    </div>



<!-- artist post_edit start -->

<div class="artist_post_upload_container">
	<div class="artist_post_upload_inner">
		<div class="artist_profile_container">
			<div class="artist_profile_pic">
				<c:if test="${artist.gender=='female' }">
							            <div data-v-5830c558="" draggable="true" class="app-icon is-color is-custom-size" style="margin-top:5px; fill: rgb(0, 0, 0);margin-top:-2.5rem !important;"><!--?xml version="1.0" encoding="UTF-8"?-->
										      <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 48 48" version="1.1">
												<g id="surface1">
												<path style=" fill:#EDE7F6;" d="M 44 24 C 44 35.046875 35.046875 44 24 44 C 12.953125 44 4 35.046875 4 24 C 4 12.953125 12.953125 4 24 4 C 35.046875 4 44 12.953125 44 24 Z "></path>
												<path style=" fill:#4E342E;" d="M 18 18.25 L 30 18.25 L 30 31.75 L 18 31.75 Z "></path>
												<path style=" fill:#FF1744;" d="M 24 44 C 28.480469 44 32.605469 42.507813 35.941406 40.019531 C 35.324219 32.640625 28 31 28 31 L 20 31 C 20 31 12.671875 32.613281 12.058594 40.019531 C 15.394531 42.507813 19.519531 44 24 44 Z "></path>
												<path style=" fill:#EF8D3C;" d="M 24 34.75 C 22.5625 34.75 20.5 31 20.5 31 L 20.5 26 L 27.5 26 L 27.5 31 C 27.5 31 25.4375 34.75 24 34.75 "></path>
												<path style=" fill:#FFAA45;" d="M 31 23 C 31 26.726563 27.726563 30 24 30 C 20.269531 30 17 26.726563 17 23 L 17 17 C 17 13.273438 31 11.273438 31 17 Z M 24 36 C 26.902344 36 27.5 31 27.5 31 C 27.5 31 25.636719 34 24 34 C 22.363281 34 20.5 31 20.5 31 C 20.5 31 21.097656 36 24 36 "></path>
												<path style=" fill:#784719;" d="M 26 22 C 26 21.449219 26.449219 21 27 21 C 27.550781 21 28 21.449219 28 22 C 28 22.550781 27.550781 23 27 23 C 26.449219 23 26 22.550781 26 22 M 20 22 C 20 22.550781 20.449219 23 21 23 C 21.550781 23 22 22.550781 22 22 C 22 21.449219 21.550781 21 21 21 C 20.449219 21 20 21.449219 20 22 "></path>
												<path style=" fill:#795548;" d="M 24 11 C 19.445313 11 13 13.089844 13 28 L 18 31.75 L 18 21 L 27 16 L 30 20 L 30 32 L 35 27 C 35 23.980469 34.746094 12.5 27 12.5 L 26 11 Z "></path>
												</g>
												</svg>
										</div>
									</c:if>
										<!-- male profile icon -->
									 <c:if test="${artist.gender=='male' }">
										<div data-v-5830c558="" draggable="true" class="app-icon is-color is-custom-size" style="margin-top:5px;fill: rgb(0, 0, 0);margin-top:-2.5rem !important;"><!--?xml version="1.0" encoding="UTF-8"?-->
												<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 48 48" version="1.1">
												<g id="surface1">
												<path style=" fill:#EDE7F6;" d="M 44 24 C 44 35.046875 35.046875 44 24 44 C 12.953125 44 4 35.046875 4 24 C 4 12.953125 12.953125 4 24 4 C 35.046875 4 44 12.953125 44 24 Z "></path>
												<path style=" fill:#673AB7;" d="M 24 44 C 28.5 44 32.601563 42.5 35.898438 40 C 35.300781 32.398438 27.699219 31 27.699219 31 L 24 31.800781 L 20.300781 31 C 20.300781 31 12.699219 32.398438 12.101563 40 C 15.398438 42.5 19.5 44 24 44 Z "></path>
												<path style=" fill:#311B92;" d="M 24 37 C 27.101563 37 29.601563 34.699219 29.898438 31.699219 C 29 31.300781 28.300781 31.101563 27.898438 31 C 27.898438 33.199219 26.101563 34.898438 23.898438 34.898438 C 21.699219 34.898438 19.898438 33.101563 19.898438 31 C 19.5 31.101563 18.800781 31.300781 17.898438 31.699219 C 18.398438 34.699219 20.898438 37 24 37 Z "></path>
												<path style=" fill:#FFA726;" d="M 32 22.5 C 32 23.300781 31.300781 24 30.5 24 C 29.699219 24 29 23.300781 29 22.5 C 29 21.699219 29.699219 21 30.5 21 C 31.300781 21 32 21.699219 32 22.5 M 19 22.5 C 19 21.699219 18.300781 21 17.5 21 C 16.699219 21 16 21.699219 16 22.5 C 16 23.300781 16.699219 24 17.5 24 C 18.300781 24 19 23.300781 19 22.5 "></path>
												<path style=" fill:#FF9800;" d="M 24 35 C 20 35 20 31 20 31 L 20 27 L 28 27 L 28 31 C 28 31 28 35 24 35 Z "></path>
												<path style=" fill:#FFB74D;" d="M 31 18.699219 C 31 12.800781 17 14.898438 17 18.699219 L 17 23.101563 C 17 26.898438 20.101563 30 24 30 C 27.898438 30 31 26.898438 31 23.101563 Z "></path>
												<path style=" fill:#424242;" d="M 24 11 C 19.101563 11 16 15.300781 16 19.199219 L 16 21 L 18 23 L 18 19 L 27.199219 16 L 30 19 L 30 23 L 32 21 L 32 20.199219 C 32 17 31.199219 13.398438 27.199219 12.601563 L 26.398438 11 Z "></path>
												<path style=" fill:#784719;" d="M 26 22 C 26 21.398438 26.398438 21 27 21 C 27.601563 21 28 21.398438 28 22 C 28 22.601563 27.601563 23 27 23 C 26.398438 23 26 22.601563 26 22 M 20 22 C 20 22.601563 20.398438 23 21 23 C 21.601563 23 22 22.601563 22 22 C 22 21.398438 21.601563 21 21 21 C 20.398438 21 20 21.398438 20 22 "></path>
												</g>
												</svg>
							            </div>
							           </c:if>
			</div>
			<div class="artist_profile_name">
				<label>${artist.first_name}</label>
			</div>
		</div>
		<hr class="post_upload_hr">
			<!--form input type design -->
   <form action="editActionFromProfile" method="post">
     <div class="form-group">
      <input type="hidden" name="s_id" value="${editArt.s_id}">
    <input type="hidden" name="s_user_id" value="${editArt.s_user_id }">
      <input type="text" name="s_title" value="${editArt.s_title }" required="required"/>
      <label for="input" class="control-label">Title${editArt.s_art_id }</label><i class="bar"></i>
    </div>

		<div class="form-group">
			<input type="text" name="s_material" value="${editArt.s_material }" required="required"/>
			<label for="input" class="control-label">Medium</label><i class="bar"></i>
		</div>
		<div class="form-group">

			<div class="form-radio">
				<label style="font-family: Poppins-Regular; color: #363636; letter-spacing: 1px;">Art Work</label>
	      <div class="radio">
	        <label>
	           <input type="radio" name="s_art_id" value="1" <c:if test="${editArt.s_art_id ==1 }">checked="checked"</c:if> /><i class="helper"></i><span style="margin-left: 1rem;">Paint</span>
	        </label>
	      </div>
	      <div class="radio">
	        <label>
	           <input type="radio" name="s_art_id" value="2" <c:if test="${editArt.s_art_id ==2}">checked="checked"</c:if> /><i class="helper"></i><span style="margin-left: 1rem;">Carving</span>
	        </label>
	      </div>
    	</div>
		</div>
		<div class="form-group">
			<input type="number" name="s_price" value="${editArt.s_price }" required="required"/>
			<label for="input" class="control-label">Price(MMK)</label><i class="bar"></i>
		</div>
		<div class="form-group">
			<div class="post_title" style="margin-bottom: -30px;">
					<label class="choose_postOrEvent_label" style="font-size: 15px;color: #363636;">Sold Out &nbsp; &nbsp;</label>
					<label class="switch">
					  <input type="checkbox" value="1" name="s_status" <c:if test="${editArt.s_status ==1 }">checked="checked"</c:if> />
					  <span class="slider round"></span>
					</label>
		</div>
   </div>
		<div class="form-group">
			<textarea placeholder="text" name="s_desc">${editArt.s_desc }</textarea>
	 </div>
	 <div class="form-group artist_post_submit">
		 <a href="/demo/jsp/profile">Cancel</a>
		 <input type="submit" name="artist_post_btn" value="Update">
	 </div>
   </form>
	</div>
</div>

<!-- artist post_edit end -->
			
			<!-- profile edit Modal -->
		 		 <div class="modal fade" id="edit_profile_modal" role="dialog" style="z-index:999999;">
		 	     <div class="modal-dialog modal-lg">
		 	       <div class="modal-content modal_contant_edit">
		           <div class="model-body">
		 						<!-- image -->
		 				 		 <div class="profile-image">
		 				 			 <img src="images/profile.jpg" class="profile-res fade-in">
		 				 			 </div>
		       <!--edit-proflie-->
                  <form action="editprofile" method="post">
		 			<div class="profile-edit-container" id="profile-edit-container-id">
						<div class="profile-container-inner">
						 <div class="profile-content">
							 <label class="profile-title">First Name</label>
							 <div data-v-5830c558="" class="password-profile-icon" draggable="true" class="app-icon is-dotty is-custom-size" style="width: 35px; height: 35px; fill:#666;"><!--?xml version="1.0" encoding="UTF-8"?-->
								 <svg xmlns="http://www.w3.org/2000/svg" width="35px" height="35px" viewBox="0 0 24 24">
								 <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 3c1.66 0 3 1.34 3 3s-1.34 3-3 3-3-1.34-3-3 1.34-3 3-3zm0 14.2c-2.5 0-4.71-1.28-6-3.22.03-1.99 4-3.08 6-3.08 1.99 0 5.97 1.09 6 3.08-1.29 1.94-3.5 3.22-6 3.22z"/>
								 <path d="M0 0h24v24H0z" fill="none"/>
								 </svg>
							 </div>
								<input class="password-input" type="text" name="first_name" value="${artist.first_name }"></input>
					 </div>
				 <div class="profile-content">
					 <label class="profile-title">Last Name</label>
					 <div data-v-5830c558="" class="password-profile-icon" draggable="true" class="app-icon is-ios7 is-custom-size" style="width: 35px; height: 35px; fill:#666;"><!--?xml version="1.0" encoding="UTF-8"?-->
						 <svg xmlns="http://www.w3.org/2000/svg" width="35px" height="35px" viewBox="0 0 24 24">
							<path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 3c1.66 0 3 1.34 3 3s-1.34 3-3 3-3-1.34-3-3 1.34-3 3-3zm0 14.2c-2.5 0-4.71-1.28-6-3.22.03-1.99 4-3.08 6-3.08 1.99 0 5.97 1.09 6 3.08-1.29 1.94-3.5 3.22-6 3.22z"/>
							<path d="M0 0h24v24H0z" fill="none"/>
							</svg>
						 </div>
						<input class="password-input" type="text" name="last_name" value="${artist.last_name }"></input>
				</div>

					 <div class="profile-content">
						 <label class="profile-title">Phone Number</label>
						 <div data-v-5830c558="" class="password-profile-icon" draggable="true" class="app-icon is-Dusk_Wired is-custom-size" style="width: 35px; height: 35px; fill: #666;"><!--?xml version="1.0" encoding="UTF-8"?-->
							 <svg xmlns="http://www.w3.org/2000/svg" width="35px" height="35px" viewBox="0 0 24 24">
								 <path d="M0 0h24v24H0z" fill="none"/>
								 <path d="M6.62 10.79c1.44 2.83 3.76 5.14 6.59 6.59l2.2-2.2c.27-.27.67-.36 1.02-.24 1.12.37 2.33.57 3.57.57.55 0 1 .45 1 1V20c0 .55-.45 1-1 1-9.39 0-17-7.61-17-17 0-.55.45-1 1-1h3.5c.55 0 1 .45 1 1 0 1.25.2 2.45.57 3.57.11.35.03.74-.25 1.02l-2.2 2.2z"/>
							 </svg>

								 </div>
							<input class="password-input" type="text" name="phone_no" value="${artist.phone_no }"></input>
				 </div>
				</div>

				<div class="profile-container-inner profile-extra">

					<div class="profile-content">
										<label class="profile-title">Gender</label>
										<div data-v-5830c558="" class="password-profile-icon" draggable="true" class="app-icon is-Dusk_Wired is-custom-size" style="width: 35px; height: 35px; fill: #666;"><!--?xml version="1.0" encoding="UTF-8"?-->
											<svg xmlns="http://www.w3.org/2000/svg" width="35px" height="35px" viewBox="0 0 24 24">
											    <path d="M11.99 2c-5.52 0-10 4.48-10 10s4.48 10 10 10 10-4.48 10-10-4.48-10-10-10zm3.61 6.34c1.07 0 1.93.86 1.93 1.93 0 1.07-.86 1.93-1.93 1.93-1.07 0-1.93-.86-1.93-1.93-.01-1.07.86-1.93 1.93-1.93zm-6-1.58c1.3 0 2.36 1.06 2.36 2.36 0 1.3-1.06 2.36-2.36 2.36s-2.36-1.06-2.36-2.36c0-1.31 1.05-2.36 2.36-2.36zm0 9.13v3.75c-2.4-.75-4.3-2.6-5.14-4.96 1.05-1.12 3.67-1.69 5.14-1.69.53 0 1.2.08 1.9.22-1.64.87-1.9 2.02-1.9 2.68zM11.99 20c-.27 0-.53-.01-.79-.04v-4.07c0-1.42 2.94-2.13 4.4-2.13 1.07 0 2.92.39 3.84 1.15-1.17 2.97-4.06 5.09-7.45 5.09z"/>
											    <path fill="none" d="M0 0h24v24H0z"/>
											</svg>

												</div>
										 <select class="password-input"name="gender">
													<option value="" selected disabled hidden>Gender</option>
								
													<option value="male" <c:if test="${artist.gender == 'male' }">selected</c:if>>Male</option>
													
													<option value="female" <c:if test="${artist.gender == 'female' }">selected</c:if>>Female</option>
											</select>

					</div>
					<div class="profile-content">
							 <label class="profile-title">Place Address</label>
						 <div data-v-5830c558="" class="password-profile-icon" draggable="true" class="app-icon is-ios7 is-custom-size" style="width: 35px; height: 35  px; fill:#666;"><!--?xml version="1.0" encoding="UTF-8"?-->
							 <svg xmlns="http://www.w3.org/2000/svg" width="35px" height="35px" viewBox="0 0 24 24">
								<path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z"/>
								<path d="M0 0h24v24H0z" fill="none"/>
							 </svg>
							 </div>
							<input class="password-input" type="text" name="address" value="${artist.address }" style="margin-top:-3.5rem;"></input>

				 </div>
               	<input class="profile-input-submit" type="submit" value="save"/>
			 </div>


		 	  </div>
				<div class="profile-nav">
 				 		<input class="profile-input-submit1" type="submit" value="save"/>
 				</div>
 			</form>
		 </div>
		 </div>
		 </div>
		 </div>

		 <!-- profile password Modal -->
		 	 <div class="modal fade" id="edit_password_modal" role="dialog" style="z-index:999999;">
		 	 <form action="editpassword" method="post">
		 		 <div class="modal-dialog modal-lg">
		 			 <div class="modal-content modal_contant_edit">
		 				 <div class="model-body">
		 					<!-- image -->
		 					 <div class="profile-image">
		 						 <img src="images/profile.jpg" class="profile-res fade-in">
		 					</div>

							<!-- change password div-->
								<div class="profile-change-password-container" id="profile-change-password-container-id">
										<div class="profile-container-inner">
											<div class="profile-content">
													 <label class="profile-title">Existing Password</label>
													 <div data-v-5830c558="" class="password-profile-icon" draggable="true" class="app-icon is-Dusk_Wired is-custom-size" style="width: 32px; height: 32px; fill: rgb(0, 0, 0);opacity:0.5;"><!--?xml version="1.0" encoding="UTF-8"?-->

																<svg xmlns="http://www.w3.org/2000/svg" width="35px" height="35px" viewBox="0 0 24 24">
																	 <path d="M0 0h24v24H0z" fill="none"/>
																	 <path d="M12.65 10C11.83 7.67 9.61 6 7 6c-3.31 0-6 2.69-6 6s2.69 6 6 6c2.61 0 4.83-1.67 5.65-4H17v4h4v-4h2v-4H12.65zM7 14c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2z"/>
																</svg>

															</div>
													 <input class="password-input" name="password"  type="password"></input>
											 </div>
											 <input class="password-input" name="user_id" value="${artist.user_id }" type="hidden"></input>
										</div>
										<div  class="profile-container-inner password-extra">
											 <div class="profile-content">
														 <label class="profile-title">New Password</label>
														 <div data-v-5830c558="" draggable="true" class="password-profile-icon" class="app-icon is-dotty is-custom-size" style="width: 32px; height: 32px; fill: rgb(0, 0, 0);opacity:0.5;"><!--?xml version="1.0" encoding="UTF-8"?-->
															 <svg xmlns="http://www.w3.org/2000/svg" width="35px" height="35px" viewBox="0 0 24 24">
																 <path d="M0 0h24v24H0z" fill="none"/>
																 <path d="M12.65 10C11.83 7.67 9.61 6 7 6c-3.31 0-6 2.69-6 6s2.69 6 6 6c2.61 0 4.83-1.67 5.65-4H17v4h4v-4h2v-4H12.65zM7 14c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2z"/>
															</svg>

															</div>
															 <input class="password-input" type="password" name="new_password"></input>
											 </div>
											 <div class="profile-content">
													<label class="profile-title">Retype New Password</label>
													<div data-v-5830c558="" draggable="true" class="password-profile-icon" class="app-icon is-dotty is-custom-size" style="width: 32px; height: 32px; fill: rgb(0, 0, 0);opacity:0.5;"><!--?xml version="1.0" encoding="UTF-8"?-->
														<svg xmlns="http://www.w3.org/2000/svg" width="35px" height="35px" viewBox="0 0 24 24">
															 <path d="M0 0h24v24H0z" fill="none"/>
															 <path d="M12.65 10C11.83 7.67 9.61 6 7 6c-3.31 0-6 2.69-6 6s2.69 6 6 6c2.61 0 4.83-1.67 5.65-4H17v4h4v-4h2v-4H12.65zM7 14c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2z"/>
														</svg>
														</div>
													 <input class="password-input" name="retype_password" type="password"></input>
											 </div>
											 <input class="profile-input-submit" type="submit" value="save"/>
										</div>


							 </div>
							 <div class="profile-nav">
							<input class="profile-input-submit1" type="submit" value="save"/>
						</div>
							</div>
						</div>
					</div>
					</form>
				</div>
		<!-- Scripts -->
		<script src="${pageContext.request.contextPath}/bootstrap/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/bootstrap.min.js"></script>
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
			<script src="https://cloud.tinymce.com/stable/tinymce.min.js?apiKey=ihvl7nmftc444yr8kingu4f0iezi23rglo7qjveok29olds1"></script>
  <script>
	tinymce.init({ selector:'textarea',branding: false });
	function ylh_function(_src){
		var modalimg=document.getElementById("modalimg");
		modalimg.src=_src;
	}
</script>

</script>
	</body>
</html>
