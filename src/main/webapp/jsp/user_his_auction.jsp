<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<c:if test="${not empty editsuccess}">
		<div class="alert alert-success alert-dismissible custom_alert" id="alert_container">
		  ${editsuccess }
		</div>
		</c:if>
		<c:if test="${not empty errors }">
		<div class="alert alert-danger alert-dismissible custom_alert" id="alert_container">
		  ${errors }
		</div>
		</c:if>
<html>
	<head>
		<title>Mm Arts & Culture</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/hla.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ylh.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/aung.css"/>
	   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/kaung_index.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/bootstrap.min.css" />
		<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
			<script type="text/javascript" src="${pageContext.request.contextPath}/js/controller.js"></script>
	</head>
	<body  style="background-color: white;">
		<!-- <div class="alert alert-success alert-dismissible custom_alert" id="alert_container">

		  <strong>Success!</strong> Indicates a successful or positive action.
		</div> -->
		
		
	<!-- profile edit Modal -->
		 		 <div class="modal fade" id="edit_profile_modal" role="dialog" style="z-index:9999999;">
		 	     <div class="modal-dialog modal-lg">
		 	       <div class="modal-content modal_contant_edit">
		           <div class="model-body">
		 						<!-- image -->
		 				 		 <div class="profile-image">
		 				 			  <c:if test="${artist.gender=='female' }">
							            <div data-v-5830c558="" draggable="true" class="app-icon is-color is-custom-size" style=" fill: rgb(0, 0, 0);margin-top:-2.5rem !important;"><!--?xml version="1.0" encoding="UTF-8"?-->
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
										<div data-v-5830c558="" draggable="true" class="app-icon is-color is-custom-size" style=" fill: rgb(0, 0, 0);margin-top:-2.5rem !important;"><!--?xml version="1.0" encoding="UTF-8"?-->
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
		 	 <div class="modal fade" id="edit_password_modal" role="dialog" style="z-index:9999999;">
		 	 <form action="editpassword" method="post">
		 		 <div class="modal-dialog modal-lg">
		 			 <div class="modal-content modal_contant_edit">
		 				 <div class="model-body">
		 					<!-- image -->
		 					 <div class="profile-image">
		 						  <c:if test="${artist.gender=='female' }">
							            <div data-v-5830c558="" draggable="true" class="app-icon is-color is-custom-size" style=" fill: rgb(0, 0, 0);margin-top:-2.5rem !important;"><!--?xml version="1.0" encoding="UTF-8"?-->
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
										<div data-v-5830c558="" draggable="true" class="app-icon is-color is-custom-size" style=" fill: rgb(0, 0, 0);margin-top:-2.5rem !important;"><!--?xml version="1.0" encoding="UTF-8"?-->
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

		
		
		
		
		
		
		<c:if test="${not empty errors }">
<div class="alert alert-danger alert-dismissible custom_alert" id="alert_container">
 	<c:forEach var="post" items="${errors}">
 	<strong>Error!</strong> ${post }
 	</c:forEach>
</div>
</c:if>

		<div class="loader">Loading...</div>
<!-- Header -->

    <div class="arts_bg" id="bg">
      <div class="header" id="header">
        <span class="title" id="title">MmArts&Culture</span>
				<div id="nav" class="inner">
        <ul>
         <c:if test="${not empty edit_condition}"> <li><a href="/demo/jsp/index"  class="disabled" id="nav1">Home</a></li>
		  <li><a class="selected" href="/demo/jsp/art" id="nav3">Arts</a></li>
          <li><a href="/demo/jsp/culture_page" class="disabled" id="nav2">Culture</a></li>
					<li><a href="auction.jsp" class="disabled" id="nav4">Auction</a></li>
		</c:if>
		
		<c:if test="${empty edit_condition}"> <li><a href="/demo/jsp/index" id="nav1">Home</a></li>
		  <li><a href="/demo/jsp/art" id="nav3">Arts</a></li>
          <li><a href="/demo/jsp/culture_page" id="nav2">Culture</a></li>
					<li><a  class="selected" href="/demo/jsp/auction" id="nav4">Auction</a></li>
		</c:if>
        </ul>
			</div>
           <c:if test="${empty artist.first_name}">
				<div id="nav" class="inner signin" style="display:;">
						<div id="acc_setting_icon" data-v-5830c558="" draggable="true" class="app-icon is-ios11 is-custom-size" style="width: 30px; height: 30px; fill: #0c2b5d;">
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50">
							    <path style="line-height:normal;text-indent:0;text-align:start;text-decoration-line:none;text-decoration-style:solid;text-decoration-color:#000;text-transform:none;block-progression:tb;isolation:auto;mix-blend-mode:normal" d="M 25 2.0078125 C 12.309296 2.0078125 2.0000002 12.317108 2 25.007812 C 2 37.112262 11.38131 47.043195 23.259766 47.935547 C 23.283185 47.93745 23.306613 47.939576 23.330078 47.941406 C 23.882405 47.981205 24.437631 48.007812 25 48.007812 C 25.562369 48.007812 26.117595 47.981205 26.669922 47.941406 C 26.693387 47.939576 26.716815 47.93745 26.740234 47.935547 C 38.61869 47.043195 48 37.112262 48 25.007812 C 48 12.317108 37.690704 2.0078125 25 2.0078125 z M 25 4.0078125 C 36.609824 4.0078125 46 13.397988 46 25.007812 C 46 30.739515 43.704813 35.924072 39.990234 39.710938 C 38.401074 38.55372 36.437194 37.863387 34.677734 37.246094 C 32.593734 36.516094 30.622172 35.824094 30.076172 34.621094 C 29.990172 33.594094 29.997859 32.792094 30.005859 31.871094 L 30.007812 31.480469 C 30.895813 30.635469 32.012531 28.852078 32.394531 27.205078 C 33.054531 26.853078 33.861516 26.009281 34.103516 23.988281 C 34.224516 22.985281 33.939062 22.2085 33.539062 21.6875 C 34.079062 19.8325 35.153484 15.136469 33.271484 12.105469 C 32.475484 10.824469 31.274313 10.016266 29.695312 9.6972656 C 28.808312 8.5992656 27.134484 8 24.896484 8 C 21.495484 8.063 19.002234 9.1047031 17.490234 11.095703 C 15.707234 13.445703 15.370328 16.996297 16.486328 21.654297 C 16.073328 22.175297 15.775438 22.963328 15.898438 23.986328 C 16.141438 26.007328 16.945469 26.851125 17.605469 27.203125 C 17.987469 28.852125 19.103188 30.635469 19.992188 31.480469 L 19.994141 31.861328 C 20.002141 32.786328 20.009828 33.590094 19.923828 34.621094 C 19.375828 35.827094 17.394781 36.526625 15.300781 37.265625 C 13.551886 37.88319 11.599631 38.574586 10.013672 39.716797 C 6.2962191 35.929504 4 30.742023 4 25.007812 C 4.0000002 13.397989 13.390176 4.0078125 25 4.0078125 z" font-weight="400" font-family="sans-serif" white-space="normal" overflow="visible"></path>
							</svg>
						</div>
				</div>
				</c:if>
				<c:if test="${not empty artist.first_name}">
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
						<li style="cursor:pointer;"><a id="profile">Profile</a></li>
						<li style="cursor:pointer;" data-toggle="modal" data-target="#edit_profile_modal"><a>Edit Profile</a></li>
						<li style="cursor:pointer;" data-toggle="modal" data-target="#edit_password_modal"><a>Edit Password</a></li>
						<li style="cursor:pointer;"><a>About Us</a></li>
						<li style="cursor:pointer;"><a id="logout">Logout</a></li>
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
					<li><a href="/demo/jsp/art">Arts</a></li>
					<li><a href="/demo/jsp/culture_page">Culture</a></li>
					<li class="ph_size_selected"><a href="/demo/jsp/auction">Auction</a></li>
				</ul>
			</div>
    </div>
        <a href="/demo/jsp/auction"><button class="auction-btn">Auction List</button></a> 
		<div class="auction_container" style="margin-top:5rem;">
		<c:forEach var="post" items="${winnerobject}">
		   <!-- winner history -->
	
			<div class="auction_container_inner">
				
				<div class="auction_container_inner_left  column hover01 hover15">
					<figure>
					
					<img src="../multifile/${post.photo }" alt="${post.photo }">
					</figure>
				</div>

				<div class="auction_container_inner_right">
				 
			
					<div class="auction_title">
						<p>${post.title }</p>
					</div>
					<div class="auction_des" style="overflow:hidden !important;">
					  <div class="his_auction_container"> 
						<duv class="his_auction_title">
						   <svg xmlns="http://www.w3.org/2000/svg" width="30px" height="30px" viewBox="0 0 24 24" style="fill:gray;">
										 <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 3c1.66 0 3 1.34 3 3s-1.34 3-3 3-3-1.34-3-3 1.34-3 3-3zm0 14.2c-2.5 0-4.71-1.28-6-3.22.03-1.99 4-3.08 6-3.08 1.99 0 5.97 1.09 6 3.08-1.29 1.94-3.5 3.22-6 3.22z"/>
										 <path d="M0 0h24v24H0z" fill="none"/>
						  </svg>
						  </duv>
						  <label class="his_auction_label">${post.name }</label>
					   </div>
					   <div class="his_auction_container"> 
						<duv class="his_auction_title">
						   <svg xmlns="http://www.w3.org/2000/svg" width="30px" height="30px" viewBox="0 0 24 24" style="fill:gray;">
													<path d="M9 11H7v2h2v-2zm4 0h-2v2h2v-2zm4 0h-2v2h2v-2zm2-7h-1V2h-2v2H8V2H6v2H5c-1.11 0-1.99.9-1.99 2L3 20c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 16H5V9h14v11z"/>
													<path fill="none" d="M0 0h24v24H0z"/>
						  </svg>
						  </duv>
						  <label class="his_auction_label">${post.date }</label>
					   </div>
						
					  </div>
					
									
					<div class="auction_detail">
						<div style="">
						
							<div data-v-5830c558="" draggable="true" class="app-icon is-ios7 is-custom-size" style="width: 40px;float: left; height: 40px; fill: #636363;"><!--?xml version="1.0" encoding="UTF-8"?-->
								<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 50 50" version="1.1">
								<g id="surface1">
								<path style=" " d="M 13 2 C 11.894531 2 11 2.894531 11 4 C 11 5.105469 11.894531 6 13 6 L 37 6 C 38.105469 6 39 5.105469 39 4 C 39 2.894531 38.105469 2 37 2 Z M 8 6 C 4.699219 6 2 8.699219 2 12 C 2 15.945313 5.253906 19.507813 8.289063 22.578125 C 9.808594 24.113281 11.308594 25.515625 12.390625 26.6875 C 12.933594 27.269531 13.371094 27.800781 13.644531 28.21875 C 13.921875 28.640625 14 28.949219 14 29 C 14 29.566406 13.566406 30 13 30 C 12.640625 29.996094 12.304688 30.183594 12.121094 30.496094 C 11.941406 30.808594 11.941406 31.191406 12.121094 31.503906 C 12.304688 31.816406 12.640625 32.003906 13 32 C 14.601563 32 15.914063 30.714844 15.984375 29.128906 C 18.308594 34.902344 21.460938 39 24.964844 39 C 28.480469 39 31.664063 34.882813 34.007813 29.082031 C 34.054688 30.6875 35.382813 32 37 32 C 37.359375 32.003906 37.695313 31.816406 37.878906 31.503906 C 38.058594 31.191406 38.058594 30.808594 37.878906 30.496094 C 37.695313 30.183594 37.359375 29.996094 37 30 C 36.433594 30 36 29.566406 36 29 C 36 28.949219 36.078125 28.640625 36.355469 28.21875 C 36.628906 27.800781 37.066406 27.269531 37.609375 26.6875 C 38.691406 25.515625 40.191406 24.113281 41.710938 22.578125 C 44.746094 19.507813 48 15.945313 48 12 C 48 8.699219 45.300781 6 42 6 C 40.234375 6 38.644531 6.777344 37.546875 8 L 12.453125 8 C 11.355469 6.777344 9.765625 6 8 6 Z M 8 8 C 10.21875 8 12 9.78125 12 12 C 11.996094 12.230469 12.074219 12.453125 12.214844 12.632813 C 12.632813 17.527344 13.671875 22.5625 15.167969 26.917969 C 14.804688 26.402344 14.371094 25.878906 13.859375 25.328125 C 12.691406 24.070313 11.191406 22.671875 9.710938 21.171875 C 6.746094 18.175781 4 14.753906 4 12 C 4 9.78125 5.78125 8 8 8 Z M 42 8 C 44.21875 8 46 9.78125 46 12 C 46 14.753906 43.253906 18.175781 40.289063 21.171875 C 38.808594 22.671875 37.308594 24.070313 36.140625 25.328125 C 35.613281 25.894531 35.164063 26.433594 34.796875 26.964844 C 36.308594 22.605469 37.363281 17.558594 37.785156 12.632813 C 37.925781 12.453125 38.003906 12.230469 38 12 C 38 9.78125 39.78125 8 42 8 Z M 24.691406 13 L 27 13 L 27 25 L 24.078125 25 L 24.078125 17.363281 L 21.199219 17.363281 L 21.199219 15.394531 C 23.972656 15.394531 24.605469 13.5625 24.691406 13 Z M 29 39.671875 C 27.761719 40.523438 26.417969 41 24.964844 41 C 23.539063 41 22.214844 40.535156 21 39.707031 L 21 44 L 18 44 C 15.789063 44 14 45.789063 14 48 L 36 48 C 36 45.789063 34.210938 44 32 44 L 29 44 Z "></path>
								</g>
								</svg>
							</div>
							<span class="auction_win_price">Price:</span>
							<span class="auction_win_price">${post.price }MMK</span>
							
							<div class="his_auction_date"></div>
							
						</div>
					</div>
					</div>	
				</div>
				</c:forEach>
			</div>
			
	
			
			

			<a value="1" style="cursor: pointer;"  onclick="ylh_function(this.value);" data-toggle="modal" data-target="#myModal" id="artist_post_icon">
				<div data-v-5830c558="" draggable="true" class="app-icon is-m_outlined is-custom-size" style="width: 28px; height: 28px; fill: rgb(255, 255, 255);"><!--?xml version="1.0"?-->
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 30 30">
					    <path style="line-height:normal;text-indent:0;text-align:start;text-decoration-line:none;text-decoration-style:solid;text-decoration-color:#000;text-transform:none;block-progression:tb;isolation:auto;mix-blend-mode:normal" d="M 12 3 C 9.8027056 3 8 4.8027056 8 7 C 8 9.1972944 9.8027056 11 12 11 C 14.197294 11 16 9.1972944 16 7 C 16 4.8027056 14.197294 3 12 3 z M 12 5 C 13.116414 5 14 5.8835859 14 7 C 14 8.1164141 13.116414 9 12 9 C 10.883586 9 10 8.1164141 10 7 C 10 5.8835859 10.883586 5 12 5 z M 12 14 C 8.859 14 3 15.545 3 18.5 L 3 21 L 13.171875 21 L 15.171875 19 L 5 19 L 5 18.5 C 5 17.631 8.708 16 12 16 C 13.801 16 15.722656 16.489219 17.097656 17.074219 L 18.597656 15.574219 C 16.616656 14.536219 13.844 14 12 14 z M 22.207031 15 C 22.079156 15 21.951016 15.048984 21.853516 15.146484 L 20.853516 16.146484 L 22.853516 18.146484 L 23.853516 17.146484 C 24.048516 16.951484 24.048516 16.634453 23.853516 16.439453 L 22.560547 15.146484 C 22.462547 15.048984 22.334906 15 22.207031 15 z M 20.146484 16.853516 L 15 22 L 15 24 L 17 24 L 22.146484 18.853516 L 20.146484 16.853516 z" font-weight="400" font-family="sans-serif" white-space="normal" overflow="visible"></path>
					</svg>
				</div>
			</a>
			<a href="javascript:" id="return-to-top"><i class="icon-chevron-up"></i></a>

		</div>
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

			<!-- Modal -->
			<div class="modal fade auction_modal" id="myModal" role="dialog" style="z-index:999999;" >
			<div class="modal-dialog modal-sm">
			 <div class="modal-content modal_contant_edit">
				 <div class="modal-header">
					 <span class="auction_signup">Create Account!</span>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="model-body">
					<!--form input type design -->
					<div class="auction_register_body">
					 <form action="auctionUser" method="post">
							<div class="form-group">
								<input type="email" name="a_email" required="required"/>
								<label for="input" class="control-label">Email</label><i class="bar"></i>
							</div>
							<div class="form-group">
								<input type="text" name="a_first_name" required="required"/>
								<label for="input" class="control-label">First Name</label><i class="bar"></i>
							</div>
							<div class="form-group">
								<input type="text" name="a_last_name" required="required"/>
								<label for="input" class="control-label">Last Name</label><i class="bar"></i>
							</div>
							<div class="form-group">
								<input type="password" name="a_password" required="required"/>
								<label for="input" class="control-label">Password</label><i class="bar"></i>
							</div>
							<div class="form-group">
								<input type="password" name="a_retype" required="required"/>
								<label for="input" class="control-label">Retype Password</label><i class="bar"></i>
							</div>
							<div class="form-group">
								<input type="number" name="a_phone_no" required="required"/>
								<label for="input" class="control-label">Phone no</label><i class="bar"></i>
							</div>

					</div>
				</div>
				<div class="modal-footer" >
					<div class="auction_register_submit">
						<input type="submit" value="CREATE"  class="auction_register_submit_btn" name="auction_register_submit">
				 </div>
				</form>
			</div>
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
		var modal_value=document.getElementById("artist_post_icon");
		modalimg.value=modal_value;
	}
</script>

</script>
	</body>
</html>
