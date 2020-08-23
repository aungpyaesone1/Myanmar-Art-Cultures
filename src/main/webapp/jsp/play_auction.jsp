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
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/kaung.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/bootstrap.min.css" />
		<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	</head>
	<body  style="overflow-x:hidden;">
    <div class="cssload-jumping">
		 <span></span><span></span><span></span><span></span><span></span>
	 </div>
		<!-- <div class="alert alert-success alert-dismissible custom_alert" id="alert_container">

		  <strong>Success!</strong> Indicates a successful or positive action.
		</div> -->
<c:if test="${not empty paybiderror }">
		<div class="alert alert-danger alert-dismissible custom_alert" id="alert_container">
		  <strong>Warning!</strong>${paybiderror }
		</div>
</c:if>
<c:if test="${not empty topaybid_acc }">
		<div class="alert alert-danger alert-dismissible custom_alert" id="alert_container">
		  <strong>Warning!</strong>${topaybid_acc }
		</div>
</c:if>
		<!-- Header -->

    <div class="arts_bg" id="bg">
      <div class="header" id="header">
        <span class="title" id="title">MmArts&Culture</span>
				<div id="nav" class="inner">
        <ul>
         <c:if test="${not empty edit_condition}"> <li><a href="/demo/jsp/index"  class="disabled" id="nav1">Home</a></li>
		  <li><a  href="/demo/jsp/art" id="nav3">Arts</a></li>
          <li><a href="/demo/jsp/culture_page" id="nav2">Culture</a></li>
					<li><a href="auction.jsp" class="selected" id="nav4">Auction</a></li>
		</c:if>
		
		<c:if test="${empty edit_condition}"> <li><a href="/demo/jsp/index" class="disabled" id="nav1">Home</a></li>
		  <li><a  href="/demo/jsp/art" class="disabled" id="nav3">Arts</a></li>
          <li><a href="/demo/jsp/culture_page" class="disabled" id="nav2">Culture</a></li>
		  <li><a href="/demo/jsp/auction" class="selected" id="nav4">Auction</a></li>
		</c:if>
        </ul>
			</div>
           <c:if test="${empty artist.first_name}">
				<div id="nav" class="inner signin" style="display:none;">
						<div id="acc_setting_icon" data-v-5830c558="" draggable="true" class="app-icon is-ios11 is-custom-size" style="width: 30px; height: 30px; fill: #0c2b5d;">
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50">
							    <path style="line-height:normal;text-indent:0;text-align:start;text-decoration-line:none;text-decoration-style:solid;text-decoration-color:#000;text-transform:none;block-progression:tb;isolation:auto;mix-blend-mode:normal" d="M 25 2.0078125 C 12.309296 2.0078125 2.0000002 12.317108 2 25.007812 C 2 37.112262 11.38131 47.043195 23.259766 47.935547 C 23.283185 47.93745 23.306613 47.939576 23.330078 47.941406 C 23.882405 47.981205 24.437631 48.007812 25 48.007812 C 25.562369 48.007812 26.117595 47.981205 26.669922 47.941406 C 26.693387 47.939576 26.716815 47.93745 26.740234 47.935547 C 38.61869 47.043195 48 37.112262 48 25.007812 C 48 12.317108 37.690704 2.0078125 25 2.0078125 z M 25 4.0078125 C 36.609824 4.0078125 46 13.397988 46 25.007812 C 46 30.739515 43.704813 35.924072 39.990234 39.710938 C 38.401074 38.55372 36.437194 37.863387 34.677734 37.246094 C 32.593734 36.516094 30.622172 35.824094 30.076172 34.621094 C 29.990172 33.594094 29.997859 32.792094 30.005859 31.871094 L 30.007812 31.480469 C 30.895813 30.635469 32.012531 28.852078 32.394531 27.205078 C 33.054531 26.853078 33.861516 26.009281 34.103516 23.988281 C 34.224516 22.985281 33.939062 22.2085 33.539062 21.6875 C 34.079062 19.8325 35.153484 15.136469 33.271484 12.105469 C 32.475484 10.824469 31.274313 10.016266 29.695312 9.6972656 C 28.808312 8.5992656 27.134484 8 24.896484 8 C 21.495484 8.063 19.002234 9.1047031 17.490234 11.095703 C 15.707234 13.445703 15.370328 16.996297 16.486328 21.654297 C 16.073328 22.175297 15.775438 22.963328 15.898438 23.986328 C 16.141438 26.007328 16.945469 26.851125 17.605469 27.203125 C 17.987469 28.852125 19.103188 30.635469 19.992188 31.480469 L 19.994141 31.861328 C 20.002141 32.786328 20.009828 33.590094 19.923828 34.621094 C 19.375828 35.827094 17.394781 36.526625 15.300781 37.265625 C 13.551886 37.88319 11.599631 38.574586 10.013672 39.716797 C 6.2962191 35.929504 4 30.742023 4 25.007812 C 4.0000002 13.397989 13.390176 4.0078125 25 4.0078125 z" font-weight="400" font-family="sans-serif" white-space="normal" overflow="visible"></path>
							</svg>
						</div>
				</div>
				</c:if>
				<c:if test="${not empty artist.first_name}">
				<div class="inner acc_setting_icon" id="nav" style="display: none;">
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
						<li data-toggle="modal" data-target="#edit_profile_modal"><a>Edit Profile</a></li>
						<li data-toggle="modal" data-target="#edit_password_modal"><a>Edit Password</a></li>
						<li><a>About Us</a></li>
						<li><a id="logout">Logout</a></li>
					</ul>
				</div>
				</c:if>
      </div>

			<div class="ph_size_nav" id="ph_size_nav">
				<div class="hamburger" id="hamburger">
					<div id="ph_size_menu_icon" data-v-5830c558="" draggable="true" class="app-icon is-m_rounded is-custom-size" style="width: 28px; height: 28px; fill: #0c2b5d;"><!--?xml version="1.0"?-->
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 30 30">
	    				<path style="line-height:normal;text-indent:0;text-align:start;text-decoration-line:none;text-decoration-style:solid;text-decoration-color:#000;text-transform:none;block-progression:tb;isolation:auto;mix-blend-mode:normal" d="M 5 4 A 1.0001 1.0001 0 1 0 5 6 L 25 6 A 1.0001 1.0001 0 1 0 25 4 L 5 4 z M 5 9 A 1.0001 1.0001 0 1 0 5 11 L 17 11 A 1.0001 1.0001 0 1 0 17 9 L 5 9 z M 5 14 A 1.0001 1.0001 0 1 0 5 16 L 25 16 A 1.0001 1.0001 0 1 0 25 14 L 5 14 z M 5 19 A 1.0001 1.0001 0 1 0 5 21 L 17 21 A 1.0001 1.0001 0 1 0 17 19 L 5 19 z M 5 24 A 1.0001 1.0001 0 1 0 5 26 L 25 26 A 1.0001 1.0001 0 1 0 25 24 L 5 24 z" font-weight="400" font-family="sans-serif" white-space="normal" overflow="visible"></path>
						</svg>
					</div>
				</div>
          <c:if test="${empty artist.first_name}">
			<div class="ph_size_login_btn" style="display:;">
					<div id="ph_size_acc_setting_icon" data-v-5830c558="" draggable="true" class="app-icon is-ios11 is-custom-size" style="width: 28px; height: 28px; fill: #00008b;">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50">
								<path style="line-height:normal;text-indent:0;text-align:start;text-decoration-line:none;text-decoration-style:solid;text-decoration-color:#000;text-transform:none;block-progression:tb;isolation:auto;mix-blend-mode:normal" d="M 25 2.0078125 C 12.309296 2.0078125 2.0000002 12.317108 2 25.007812 C 2 37.112262 11.38131 47.043195 23.259766 47.935547 C 23.283185 47.93745 23.306613 47.939576 23.330078 47.941406 C 23.882405 47.981205 24.437631 48.007812 25 48.007812 C 25.562369 48.007812 26.117595 47.981205 26.669922 47.941406 C 26.693387 47.939576 26.716815 47.93745 26.740234 47.935547 C 38.61869 47.043195 48 37.112262 48 25.007812 C 48 12.317108 37.690704 2.0078125 25 2.0078125 z M 25 4.0078125 C 36.609824 4.0078125 46 13.397988 46 25.007812 C 46 30.739515 43.704813 35.924072 39.990234 39.710938 C 38.401074 38.55372 36.437194 37.863387 34.677734 37.246094 C 32.593734 36.516094 30.622172 35.824094 30.076172 34.621094 C 29.990172 33.594094 29.997859 32.792094 30.005859 31.871094 L 30.007812 31.480469 C 30.895813 30.635469 32.012531 28.852078 32.394531 27.205078 C 33.054531 26.853078 33.861516 26.009281 34.103516 23.988281 C 34.224516 22.985281 33.939062 22.2085 33.539062 21.6875 C 34.079062 19.8325 35.153484 15.136469 33.271484 12.105469 C 32.475484 10.824469 31.274313 10.016266 29.695312 9.6972656 C 28.808312 8.5992656 27.134484 8 24.896484 8 C 21.495484 8.063 19.002234 9.1047031 17.490234 11.095703 C 15.707234 13.445703 15.370328 16.996297 16.486328 21.654297 C 16.073328 22.175297 15.775438 22.963328 15.898438 23.986328 C 16.141438 26.007328 16.945469 26.851125 17.605469 27.203125 C 17.987469 28.852125 19.103188 30.635469 19.992188 31.480469 L 19.994141 31.861328 C 20.002141 32.786328 20.009828 33.590094 19.923828 34.621094 C 19.375828 35.827094 17.394781 36.526625 15.300781 37.265625 C 13.551886 37.88319 11.599631 38.574586 10.013672 39.716797 C 6.2962191 35.929504 4 30.742023 4 25.007812 C 4.0000002 13.397989 13.390176 4.0078125 25 4.0078125 z" font-weight="400" font-family="sans-serif" white-space="normal" overflow="visible"></path>
						</svg>
					</div>
			</div>
			</c:if>
			 <c:if test="${not empty artist.first_name}">
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
			</c:if>
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
					<li><a href="/demo/jsp/index">Home</a></li>
					<li ><a href="/demo/jsp/art">Arts</a></li>
					<li><a href="/demo/jsp/culture_page">Culture</a></li>
					<li><a href="/demo/jsp/auction" class="ph_size_selected">Auction</a></li>
				</ul>
			</div>
    </div>

<!-- auction -->
   <div class="play-auction-container">
		  <div class="play-auction-left-container">

        <div class="play-auction-item-container">
            <!--auction image div -->
            <div class="slideshow-container">

               <div class="mySlides">
                 <img class="play-auction-image-src" src="../multifile/${auction.a_photo1 }">
               </div>
              
               <div class="mySlides">
                 <img class="play-auction-image-src" src="../multifile/${auction.a_photo2 }">
               </div>
               
               
               <div class="mySlides">
                 <img class="play-auction-image-src" src="../multifile/${auction.a_photo3 }">
               </div>

               <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
               <a class="next" onclick="plusSlides(1)">&#10095;</a>
               
               </div>


							 <div style="position:relative;text-align:center;top:65%;z-index:3;">
								 <span class="dot" onclick="currentSlide(1)"></span>
								 <span class="dot" onclick="currentSlide(2)"></span>
								 <span class="dot" onclick="currentSlide(3)"></span>
							 </div>


							 <hr style="background-color:gray;position:absolute;top:68%;height:2px;width:90%;left:5%;border-radius:1px;opacity:0.5;">
					<div id="auction_winner_announce">
                    <div id="auction_winner_announce_refresh">
                    <c:if test="${win_condition==0}">
							<div class="play-auction-winner-div">
									<label class="play-auction-winner-label">${auction.a_start_bid } <label class="play-auction-mmk">(MMK)</label></label>
									
							</div>
						</c:if>	
						<c:if test="${win_condition==1}">
							<div class="play-auction-winner-div">
									<label class="play-auction-winner-label">${auction.a_amount } <label class="play-auction-mmk">(MMK)</label></label>
									<label class="play-auction-winner">${auction.a_first_name } <label class="play-auction-winner1">is winning!</label></label>
							</div>
							</c:if>
					</div>
					</div>
        </div>
			</div>
			<!-- right -->
			<div class="play-auction-right-container">
			

	      <div class="play-auction-other-item-div">
	      <div  id="play-auction-other-item-div">
	      	<div  id="play-auction-refresh-label">
                <div class="play-auction-other-item-contant">
									<div class="play-auction-icon">
												 <svg xmlns="http://www.w3.org/2000/svg" width="26px" height="26px" viewBox="0 0 24 24" style="fill:gray;">
														<path d="M0 0h24v24H0z" fill="none"/>
														<path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"/>
												 </svg>
									</div>
									 <label class="play-auction-label">${auction.a_view_count }</label>
									 <label class="play-auction-label1">(Waching)</label>
								</div>
								<div class="play-auction-other-item-contant">
									<div class="play-auction-icon">
										 <svg xmlns="http://www.w3.org/2000/svg" width="26px" height="26px" viewBox="0 0 24 24" style="fill:gray;">
										 <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 3c1.66 0 3 1.34 3 3s-1.34 3-3 3-3-1.34-3-3 1.34-3 3-3zm0 14.2c-2.5 0-4.71-1.28-6-3.22.03-1.99 4-3.08 6-3.08 1.99 0 5.97 1.09 6 3.08-1.29 1.94-3.5 3.22-6 3.22z"/>
										 <path d="M0 0h24v24H0z" fill="none"/>
										 </svg>
									</div>
									<label class="play-auction-label">${playing }</label>
									<label class="play-auction-label1">(Player)</label>
								</div>
							</div>
								 </div>
								<div class="play-auction-other-item-contant">
									  <div class="play-auction-icon">
												<svg xmlns="http://www.w3.org/2000/svg" width="28px" height="28px" viewBox="0 0 24 24" style="fill:gray;">
													<path d="M9 11H7v2h2v-2zm4 0h-2v2h2v-2zm4 0h-2v2h2v-2zm2-7h-1V2h-2v2H8V2H6v2H5c-1.11 0-1.99.9-1.99 2L3 20c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 16H5V9h14v11z"/>
													<path fill="none" d="M0 0h24v24H0z"/>
												</svg>
										</div>
										<label class="play-auction-label" style="font-size:15px;margin-top:0.9rem !important;">${auction.a_date}</label>
										<label class="play-auction-label1" style="margin-left:1rem !important;">(Start)</label>
								
							 </div>
								<div class="play-auction-other-item-contant">
									  <div class="play-auction-icon">
												<svg xmlns="http://www.w3.org/2000/svg" width="28px" height="28px" viewBox="0 0 24 24" style="fill:gray;">
													<path d="M9 11H7v2h2v-2zm4 0h-2v2h2v-2zm4 0h-2v2h2v-2zm2-7h-1V2h-2v2H8V2H6v2H5c-1.11 0-1.99.9-1.99 2L3 20c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 16H5V9h14v11z"/>
													<path fill="none" d="M0 0h24v24H0z"/>
												</svg>
										</div>
										<label class="play-auction-label" style="font-size:15px;margin-top:0.9rem !important;">${auction.a_start_date }</label>
										<label class="play-auction-label1" style="margin-left:1rem !important;">(End)</label>
								</div>
	     
	      </div>

           <c:if test="${topaybid_condition==2 || empty topaybid_condition}">
				<!--sign in-->
				<div class="play-auction-sign-in-div" style="display:;">
					<form action="toPayBid" method="post">
						<div class="form-group" style="margin-top:5rem;">
						 <input type="text" name="a_email" required="required"/>
						 <input type="hidden" name="a_post_id" value="${auction.a_post_id }">
						 <label for="input" class="control-label">Email:</label><i class="bar"></i>
					 </div>
					 <div class="form-group" style="margin-top:4rem;">
						 <input type="password" name="a_password" required="required"/>
						 <label for="input" class="control-label">Password:</label><i class="bar"></i>
					 </div>
					 <div class="form-group artist_post_submit" style="margin-top:3rem;">
						 <input type="submit" name="artist_post_btn" value="Suscribe">
					 </div>

				 </form>
				
				 <form class="list_item_form" action="toAuctionList/${auction.a_post_id}" method="get">	
				 <p class="play-aution-other-label">
					 Enter your auction account to sucript the item! Back to
					
					 			
					 <button style="background:none;color:blue;text-decoration:underline;margin-right:0.5rem;font-weight:bold;"> aution lists. </button>
				     
				 </p>
				 </form>
				</div>
				 </c:if>
			<%-- ${paybiderror }
			${auction_user_id }
				${auction.a_post_id } --%>
               <c:if test="${topaybid_condition==1}">
				<!--bid div-->
				<div class="play-auction-bid-div" style="display:;">
					 <form action="startPayBid" method="post">
					 <label class="play-aution-other-label11" style=>Maximum pay bid must below 10% of current pay bid! </label>
					 <input type="hidden" name="a_user_id1" value="${auction_user_id }"/>
					 <input type="hidden" name="a_post_id" value="${auction.a_post_id }">
					 <input type="hidden" name="a_start_bid" value="${auction.a_start_bid }">
						 <div class="form-group" style="margin-top:7rem;">
 							<input type="number" name="a_amount" required="required" min="1"/>
 							<label for="input" class="control-label">Price(MMK)</label><i class="bar"></i>
 						</div>
						<div class="form-group artist_post_submit" style="margin-top:2rem;">
							<input type="submit" name="artist_post_btn" value="bid">
						</div>

					 </form>
					 <div class="play-aution-other-label1">
	
					   <form class="list_item_form" action="toAuctionList/${auction.a_post_id}" method="get" style="float:left;">	
					   Back to  <button style="background:none;color:blue;text-decoration:underline;margin-right:0.5rem;font-weight:bold;">aution lists.</button>It will be logout your auction account.
				      </form>
					</div>
				</div>
				</c:if>
	    </div>

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
<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
showSlides(slideIndex += n);
}

function currentSlide(n) {
showSlides(slideIndex = n);
}

function showSlides(n) {
var i;
var slides = document.getElementsByClassName("mySlides");
var dots = document.getElementsByClassName("dot");
if (n > slides.length) {slideIndex = 1}
if (n < 1) {slideIndex = slides.length}
for (i = 0; i < slides.length; i++) {
	slides[i].style.display = "none";
}
for (i = 0; i < dots.length; i++) {
	dots[i].className = dots[i].className.replace(" active", "");
}
slides[slideIndex-1].style.display = "block";
dots[slideIndex-1].className += " active";
}
</script>

</script>
	</body>
</html>
