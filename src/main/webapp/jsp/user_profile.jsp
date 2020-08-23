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
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/kaung_user_profile.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/bootstrap.min.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ylh.css"/>
		<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/controller.js"></script>
	</head>
  <body style="">



		<!--contact Modal -->
		<div id="mycontactModal" class="modal fade" role="dialog">
		  <div class="modal-dialog">
		    <!-- Modal content-->
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		        <h4 class="modal-title">Account Contacts</h4>
		      </div>
		      <div class="modal-body">
						 <div class="no-user-contacts-div">
							<label class="no-user-contacts-title">Phone:</label>
							<label class="no-user-contacts-label">${artist.phone_no }</label>
						</div>
						<div class="no-user-contacts-div">
						 <label class="no-user-contacts-title">Emale:</label>
						 <label class="no-user-contacts-label">${artist.email }</label>
					 </div>
					 <div class="no-user-contacts-div">
						<label class="no-user-contacts-title">Address:</label>
						<label class="no-user-contacts-label">${artist.address }</label>
					</div>
		      </div>
		    </div>

		  </div>
		</div>



		<!--profile Modal -->
				 <div class="modal fade" id="myprofileModal" role="dialog" style="z-index:999999;">
					 <div class="modal-dialog modal-lg">
						 <div class="modal-content modal_contant_edit">
							<div class="model-body">
								<!-- image -->
								 <div class="profile-image">
									  <c:if test="${artist1.gender=='female' }">
							            <div data-v-5830c558="" draggable="true" class="app-icon is-color is-custom-size" style=" fill: rgb(0, 0, 0);display:;"><!--?xml version="1.0" encoding="UTF-8"?-->
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
									 <c:if test="${artist1.gender=='male' }">
										<!-- male profile icon -->
										<div data-v-5830c558="" draggable="true" class="app-icon is-color is-custom-size" style=" fill: rgb(0, 0, 0);"><!--?xml version="1.0" encoding="UTF-8"?-->
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


									<div class="profile-container" id="profile-cotainer-id">
										 <div class="profile-container-inner">
											 <div class="profile-content">
												 <label class="profile-title">Acount Name</label>
												 <div data-v-5830c558="" class="profile-icon label-fade-in" draggable="true" class="app-icon is-dotty is-custom-size" style="width: 35px; height: 35px; fill:#666;"><!--?xml version="1.0" encoding="UTF-8"?-->
															<svg xmlns="http://www.w3.org/2000/svg" width="35px" height="35px" viewBox="0 0 24 24">
															<path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 3c1.66 0 3 1.34 3 3s-1.34 3-3 3-3-1.34-3-3 1.34-3 3-3zm0 14.2c-2.5 0-4.71-1.28-6-3.22.03-1.99 4-3.08 6-3.08 1.99 0 5.97 1.09 6 3.08-1.29 1.94-3.5 3.22-6 3.22z"/>
															<path d="M0 0h24v24H0z" fill="none"/>
															</svg>

												 </div>
												 <label class="profile-label label-fade-in">${artist.first_name }</label>
										 </div>




									 <div class="profile-content">
										 <label class="profile-title">Email Address</label>
										 <div data-v-5830c558="" class="profile-icon label-fade-in" draggable="true" class="app-icon is-ios7 is-custom-size" style="width: 35px; height: 35px; fill:#666;"><!--?xml version="1.0" encoding="UTF-8"?-->
														<svg xmlns="http://www.w3.org/2000/svg" width="35px" height="35px" viewBox="0 0 24 24">
																<path d="M20 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"/>
																<path d="M0 0h24v24H0z" fill="none"/>
														</svg>
											 </div>
										 <label class="profile-label label-fade-in">${artist.email }</label>
									</div>

										 <div class="profile-content">
											 <label class="profile-title">Phone Number</label>
											 <div data-v-5830c558="" class="profile-icon label-fade-in" draggable="true" class="app-icon is-Dusk_Wired is-custom-size" style="width: 35px; height: 35px; fill: #666;"><!--?xml version="1.0" encoding="UTF-8"?-->

														<svg xmlns="http://www.w3.org/2000/svg" width="35px" height="35px" viewBox="0 0 24 24">
															<path d="M0 0h24v24H0z" fill="none"/>
															<path d="M6.62 10.79c1.44 2.83 3.76 5.14 6.59 6.59l2.2-2.2c.27-.27.67-.36 1.02-.24 1.12.37 2.33.57 3.57.57.55 0 1 .45 1 1V20c0 .55-.45 1-1 1-9.39 0-17-7.61-17-17 0-.55.45-1 1-1h3.5c.55 0 1 .45 1 1 0 1.25.2 2.45.57 3.57.11.35.03.74-.25 1.02l-2.2 2.2z"/>
														</svg>

											 </div>
											 <label class="profile-label label-fade-in">${artist.phone_no }</label>
									 </div>
									</div>

									<div class="profile-container-inner profile-extra">

										<div class="profile-content">
														 <label class="profile-title">Gender</label>
														 <div data-v-5830c558="" class="profile-icon label-fade-in" draggable="true" class="app-icon is-Dusk_Wired is-custom-size" style="width: 35px; height: 35px; fill:#666;"><!--?xml version="1.0"?-->
																	<svg xmlns="http://www.w3.org/2000/svg" width="35px" height="35px" viewBox="0 0 24 24">
																			<path d="M11.99 2c-5.52 0-10 4.48-10 10s4.48 10 10 10 10-4.48 10-10-4.48-10-10-10zm3.61 6.34c1.07 0 1.93.86 1.93 1.93 0 1.07-.86 1.93-1.93 1.93-1.07 0-1.93-.86-1.93-1.93-.01-1.07.86-1.93 1.93-1.93zm-6-1.58c1.3 0 2.36 1.06 2.36 2.36 0 1.3-1.06 2.36-2.36 2.36s-2.36-1.06-2.36-2.36c0-1.31 1.05-2.36 2.36-2.36zm0 9.13v3.75c-2.4-.75-4.3-2.6-5.14-4.96 1.05-1.12 3.67-1.69 5.14-1.69.53 0 1.2.08 1.9.22-1.64.87-1.9 2.02-1.9 2.68zM11.99 20c-.27 0-.53-.01-.79-.04v-4.07c0-1.42 2.94-2.13 4.4-2.13 1.07 0 2.92.39 3.84 1.15-1.17 2.97-4.06 5.09-7.45 5.09z"/>
																			<path fill="none" d="M0 0h24v24H0z"/>
																	</svg>
														 </div>
														 <label class="profile-label label-fade-in">${artist.gender }</label>
												 </div>
									<div class="profile-content">
									 <label class="profile-title">Place Address</label>
									 <div data-v-5830c558="" class="profile-icon label-fade-in" draggable="true" class="app-icon is-ios7 is-custom-size" style="width: 35px; height: 35  px; fill:#666;"><!--?xml version="1.0" encoding="UTF-8"?-->
													<svg xmlns="http://www.w3.org/2000/svg" width="35px" height="35px" viewBox="0 0 24 24">
													 <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z"/>
													 <path d="M0 0h24v24H0z" fill="none"/>
													</svg>
										 </div>
									 <label class="profile-label label-fade-in">${artist.address }</label>
									</div>
									</div>

									 </div>
									 <div class="profile-nav">
									 </div>
								</div>
							</dvi>
						</div>
					</div>
				</div>







    <div class="user-profile-container" id="user_profile_container">
    	 <!--  home icon -->
     <a href="/demo/jsp/index">
     <div class="user-profile-home-icon" style="position:absolute;top:0rem;right:0rem;margin:1rem;width:30px;height:30px;border-radius:20px;border:2px solid #fff;cursor:pointer;">
     <div data-v-5830c558="" draggable="true" class="app-icon is-androidL is-custom-size" style="width: 28px; height: 28px; fill: #fff;margin:3px;"><!--?xml version="1.0"?-->
			<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 34 30">
			    <path d="M 12 2.0996094 L 1 12 L 4 12 L 4 21 L 9 21 L 9 14 L 15 14 L 15 21 L 20 21 L 20 12 L 23 12 L 19 8.4003906 L 19 4 L 17 4 L 17 6.5996094 L 12 2.0996094 z"></path>
			</svg>
	</div>
     </div></a>
      <!-- profile image -->
      <div class="user-profile-image" id="user_profile_image">
             <!-- female profile icon -->
			             <c:if test="${artist.gender=='female' }">
							            <div data-v-5830c558="" draggable="true" class="app-icon is-color is-custom-size" style=" fill: rgb(0, 0, 0);display:;"><!--?xml version="1.0" encoding="UTF-8"?-->
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
										<c:if test="${artist.gender=='male' }">
										<!-- male profile icon -->
										<div data-v-5830c558="" draggable="true" class="app-icon is-color is-custom-size" style=" fill: rgb(0, 0, 0);"><!--?xml version="1.0" encoding="UTF-8"?-->
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
      <!-- profile name-->
          <label class="user-profile-name-label" id="user_profile_name_label"> ${artist.first_name } </label>

      <!--border-->
          <div class="user-profile-border" id="user_profile_border"></div>

      <!-- phone number , email and address -->
       <div class="user-profile-address-container" id="user_profile_address_cotainer">
           <!--pohone-->
           <div class="user-profile-lable-cotainer phone-container">
             <div data-v-5830c558="" class="user-profile-icon-div" draggable="true" class="app-icon is-Dusk_Wired is-custom-size" style="width: 30px; height: 30px; fill: #fff;">
                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24" style="fill:#fff;">
                       <path d="M0 0h24v24H0z" fill="none"/>
                       <path d="M6.62 10.79c1.44 2.83 3.76 5.14 6.59 6.59l2.2-2.2c.27-.27.67-.36 1.02-.24 1.12.37 2.33.57 3.57.57.55 0 1 .45 1 1V20c0 .55-.45 1-1 1-9.39 0-17-7.61-17-17 0-.55.45-1 1-1h3.5c.55 0 1 .45 1 1 0 1.25.2 2.45.57 3.57.11.35.03.74-.25 1.02l-2.2 2.2z"/>
                    </svg>

                </div>
              <label class="user-profile-label">${artist.phone_no }</label>
           </div>
           <!--email -->
           <div class="user-profile-lable-cotainer email-container">
             <div data-v-5830c558="" class="user-profile-icon-div" draggable="true" class="app-icon is-Dusk_Wired is-custom-size" style="width: 30px; height: 30px; fill: #fff;">

                  <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24" style="fill:#fff;">
                   <path d="M20 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"/>
                   <path d="M0 0h24v24H0z" fill="none"/>
                  </svg>


                </div>
              <label class="user-profile-label">${artist.email }</label>
           </div>
           <!--address-->
           <div class="user-profile-lable-cotainer address-container">
             <div data-v-5830c558="" class="user-profile-icon-div" draggable="true" class="app-icon is-Dusk_Wired is-custom-size" style="width: 30px; height: 30px; fill: #fff;">
                  <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24" style="fill:#fff;">
                     <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z"/>
                     <path d="M0 0h24v24H0z" fill="none"/>
                  </svg>
                </div>
              <label class="user-profile-label">${artist.address }</label>
           </div>
					 


					 <!-- view more  user-->
           <div class="user-profile-lable-cotainer user-profile-view-more-container" data-toggle="modal" data-target="#myprofileModal">
             <div data-v-5830c558="" class="user-profile-icon-div" draggable="true" class="app-icon is-Dusk_Wired is-custom-size" style="width: 30px; height: 30px; fill: #fff; filter:blur(0.5px);">
										<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24" fill="#fff">
										 <path d="M0 0h24v24H0z" fill="none"/>
										 <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15h-2v-6h2v6zm0-8h-2V7h2v2z"/>
										</svg>
                </div>
              <a class="user-profile-label-ahre" >view info</a>
           </div>



       </div>
    </div>
    <div class="user-profile-post-container" onscroll="my_scroll_function()" id="user_profile_post_container">
			<!-- paint_start -->
					<div class="paint visible" id="paint_container" style="padding-bottom: 2rem;">
						<div class="art_container">
               <c:if test="${not empty fuck}">
                <c:forEach var="post" items="${fuck}">
							<div class="art_post">
						    <div class="artist_profile_container">
						      <div class="artist_profile_pic">
						        <!-- female profile icon -->
						           <c:if test="${post.gender=='female' }">
							            <div data-v-5830c558="" draggable="true" class="app-icon is-color is-custom-size" style=" fill: rgb(0, 0, 0);"><!--?xml version="1.0" encoding="UTF-8"?-->
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
									 <c:if test="${post.gender=='male' }">
										<div data-v-5830c558="" draggable="true" class="app-icon is-color is-custom-size" style=" fill: rgb(0, 0, 0);"><!--?xml version="1.0" encoding="UTF-8"?-->
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
						        <label>${post.first_name }</label>
						      </div>
									<div class="artist_icons">
									<div class="artist_sold_out1_for_k">
										<div class="admin-edit-dropdown" style="right:4rem;">
											 <div class="profile-nav-icon" style="opacity:0.7;">
												<svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" viewBox="0 0 24 24" style="fill:#3d557d; position:absolute;">
															<path d="M0 0h24v24H0z" fill="none"/>
															<path d="M6 10c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm12 0c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm-6 0c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"/>
													</svg>
											</div>
											 <div class="admin-edit-dropdown-content">
															<!-- <a>Edit</a>
															<a>Delete</a> -->
								 <form class="list_item_form" action="editArtprofile/${post.s_id}" method="get">
			                          <a class="go_to_profile"><label><button class="btn-transparent">Edit</button></label></a>
			                     </form>
			                     
			                          <a class="go_to_profile"><label><button class="btn-transparent"  id="${post.s_id}" data-toggle="modal" data-target="#delete_art_modal" onClick="delete_post_function(this.id)">delete</button></label></a>
			                    
											 </div>
									 </div>
									</div>
						      <div class="artist_sold_out">
						        <div data-v-5830c558="" draggable="true" class="app-icon is-color is-custom-size" style="width: 40px; height: 40px; fill: rgb(0, 0, 0);"><!--?xml version="1.0" encoding="iso-8859-1"?-->
						          <!-- Generator: Adobe Illustrator 21.1.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
						          <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 48 48" style="enable-background:new 0 0 48 48;" xml:space="preserve">
						          <g>
						            <g>
						              <g>
						              </g>
						            </g>
						          </g>
						          <path style="fill:#375A64;" d="M36,4H26c0,1.1-0.9,2-2,2s-2-0.9-2-2H12C9.8,4,8,5.8,8,8v32c0,2.2,1.8,4,4,4h24c2.2,0,4-1.8,4-4V8  C40,5.8,38.2,4,36,4z"></path>
						          <path style="fill:#FFFFFF;" d="M36,41H12c-0.6,0-1-0.4-1-1V8c0-0.6,0.4-1,1-1h24c0.6,0,1,0.4,1,1v32C37,40.6,36.6,41,36,41z"></path>
						          <path style="fill:#87A4AF;" d="M26,4c0,1.1-0.9,2-2,2s-2-0.9-2-2h-7v4c0,1.1,0.9,2,2,2h14c1.1,0,2-0.9,2-2V4H26z"></path>
						          <path style="fill:#87A4AF;" d="M24,0c-2.2,0-4,1.8-4,4s1.8,4,4,4s4-1.8,4-4S26.2,0,24,0z M24,6c-1.1,0-2-0.9-2-2s0.9-2,2-2  s2,0.9,2,2S25.1,6,24,6z"></path>
						         <c:if test="${post.s_status==1 }">
						          <path style="fill:#00A03D;" d="M32,25c0,4.4-3.6,8-8,8s-8-3.6-8-8s3.6-8,8-8S32,20.6,32,25"></path>
						          <polygon style="fill:#D5EDC7;" points="23.117,29.031 19.293,25.207 20.707,23.793 23.133,26.219 27.801,21.66 29.199,23.09 "></polygon>
						         </c:if>
						          </svg>
						        </div>
						      </div>
								</div>
						    </div>
						    <div class="art_date_container">
						      <p>${post.s_date }</p>
						    </div>
						    <div class="art_img column hover01 hover15">
						      <figure>
						        <img src="../art_images/${post.s_photo }" onclick="ylh_function(this.src);" data-toggle="modal" data-target="#myModal" id="myImg"/>
						      </figure>
						    </div>
						    <div class="art_post_title">
						      <p>${post.s_title }</p>
						    </div>
						    <div class="art_post_info">
						      <div class="art_post_medium">
						        Medium:<span>${post.s_material }</span>
						      </div>
						      <div class="art_post_price">
						        Price: <span>${post.s_price }MMK</span>
						      </div>

						      <div class="art_post_desc">

						        Description: <span>${post.s_desc }</span>
						      </div>

						    </div>

						  </div>
						  </c:forEach>
						  </c:if>

						 

						</div>


					</div>

			<!-- paint_end -->
   </div>


<!-- Modal -->
		<div class="modal fade auction_modal" id="delete_art_modal" role="dialog" style="z-index:999999;" >
			<div class="modal-dialog modal-md">
			 <div class="modal-content modal_contant_edit">
				 <div class="modal-header" style="background-color:#ea7070 !important;">
					 <span class="auction_signup" style="color:#fff;">Delete confirmation!</span>
					<button type="button" class="close" data-dismiss="modal" style="color:#fff !important;opacity:1 !important;">&times;</button>
				</div>
				<div class="model-body">
					<!--form input type design -->
					<label style="font-size:18px;width:100%;text-align:center;font-weight:400;padding:3rem 0rem;">Are you sure want to delete?</label>
				</div>
				<div class="modal-footer" >
					<div class="auction_register_submit">
					 <button data-dismiss="modal"  style="font-size:18px;color:#fff;position:absolute;right:14.5rem;padding:0.5rem 2rem;background-color:lightgray;color:black;" data-dismiss="modal">Cancle</button>
					 <form class="list_item_form"  method="get" id="delete_form">            
			                       <input type="submit" value="Confirm" style="font-size:18px;color:#fff;background-color:#ea7070;position:absolute;right:2rem;padding:0.5rem 2rem;" />
			                 
			          </form>
				 </div>				
				</div>
			</div>
			</div>
		</div>
		<script>
		function delete_post_function(_id){
			document.getElementById("delete_form").action="deleteArtprofile/"+_id;
		}
		</script>
    <script src="${pageContext.request.contextPath}/bootstrap/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/query.min.js"></script>
    <script>


   function my_scroll_function(){
     var user_scroll=document.getElementById("user_profile_post_container");
     var user_container=document.getElementById("user_profile_container")
     var user_image=document.getElementById("user_profile_image");
     var user_name=document.getElementById("user_profile_name_label");
     var user_border=document.getElementById("user_profile_border");
     var user_add_container=document.getElementById("user_profile_address_cotainer");
     if(user_scroll.scrollTop>20){
       user_container.classList.remove('big_Container_animation');
       user_container.classList.add('narrow_Container_animation');
       user_image.classList.remove('right_profile_img_animation');
       user_image.classList.add('left_profile_img_animation');
       user_name.classList.remove('down_profile_name_label_animation');
       user_name.classList.add('up_profile_name_label_animation')
       user_border.classList.remove('down_profile_border_animation');
       user_border.classList.add('up_profile_border_animation');
       user_add_container.classList.remove('down_profile_address_animation');
       user_add_container.classList.add('up_profile_address_animation');
			 user_scroll.classList.remove('narrow_posts_container_animation');
       user_scroll.classList.add('wide_posts_container_animation');

     }
     else {
       user_container.classList.remove('narrow_Container_animation');
       user_container.classList.add('big_Container_animation');
       user_image.classList.remove('left_profile_img_animation');
       user_image.classList.add('right_profile_img_animation');
       user_name.classList.remove('up_profile_name_label_animation');
       user_name.classList.add('down_profile_name_label_animation');
       user_border.classList.remove('up_profile_border_animation');
       user_border.classList.add('down_profile_border_animation');
       user_add_container.classList.remove('up_profile_address_animation');
       user_add_container.classList.add('down_profile_address_animation');
			 user_scroll.classList.remove('wide_posts_container_animation');
       user_scroll.classList.add('narrow_posts_container_animation');

     }
   }
    </script>
  </body>
</html>
