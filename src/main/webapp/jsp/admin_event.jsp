<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty email }">
   <c:redirect url="/jsp/index"></c:redirect>
 </c:if>
 <c:if test="${not empty editsuccess }">
		<div class="alert alert-success alert-dismissible custom_alert" id="alert_container">
		  <strong>Success!</strong>${editsuccess }
		</div>
		
		</c:if>
<!DOCTYPE HTML>
<html>
  <head>
		<title>Mm Arts & Culture</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/hla.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ylh.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/kaung.css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/bootstrap.min.css">
	  <script src="${pageContext.request.contextPath}/js/query.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/hla.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/ylh.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/controller.js"></script>
  </head>
  <body class="overflow:hidden;" onload="codeAddress();">
    <!-- header -->

          <div class="admin_page_nav" id="admin_page_nav">
            <span class="title" id="title">MmArts&Culture</span>
    				<div id="nav" class="inner">
            <ul> 
              <li><a style="font-family:'Times-New-Roman';" href="/demo/jsp/adminpost" id="nav1" onclick="post_funtion();">Post</a></li>
              <li><a style="font-family:'Times-New-Roman';" href="/demo/jsp/auctionwinner" id="nav2">Winner</a></li>
              <li>
    						<div class="dropdown" style="left:0%;">
    							<a class="active" style="font-family:'Times-New-Roman';" id="nav3">Edit</a>
    						 <div class="dropdown-content active" style="background-color:#3d557d;Left:0rem;top:3.2rem;">
    							 <a class="active" onclick="event_function()" style="cursor:pointer; font-family:'Times-New-Roman';">Events</a>
    							 <a onclick="culture_function()" style="cursor:pointer; font-family:'Times-New-Roman';">Cultures</a>
    							 <a onclick="art_function()" style="cursor:pointer; font-family:'Times-New-Roman';">Arts</a>
    							 <a onclick="auction_funtion()" style="cursor:pointer; font-family:'Time-News-Roman';">Auction</a>
    						 </div>
    						</div>
    				 </li>
    				<li><a class="admin_logout" id="logout" style="color: #fff; font-family:'Times-New-Roman';">Logout</a></li>
            </ul>
    			</div>

    				<div id="" class="inner admin_profile" data-toggle="modal" data-target="#myModal">
              <div data-v-5830c558="" draggable="true" class="app-icon is-ios7 is-custom-size" style="width: 33px; height: 33px; fill: #fff;"><!--?xml version="1.0" encoding="UTF-8"?-->
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 50 50" version="1.1">
                  <g id="surface1">
                  <path style=" " d="M 47 11 L 26 11 L 26 10 C 26 8.347656 24.652344 7 23 7 L 3 7 C 1.347656 7 0 8.347656 0 10 L 0 42 C 0 43.652344 1.347656 45 3 45 L 9 45 L 9 42 L 13 42 L 13 45 L 37 45 L 37 42 L 41 42 L 41 45 L 47 45 C 48.652344 45 50 43.652344 50 42 L 50 14 C 50 12.347656 48.652344 11 47 11 Z M 6 34 C 6.207031 30.421875 10.984375 30.941406 11.648438 29.085938 C 11.703125 28.449219 11.683594 28.007813 11.683594 27.425781 C 11.40625 27.277344 10.890625 26.316406 10.808594 25.5 C 10.589844 25.484375 10.25 25.261719 10.148438 24.390625 C 10.09375 23.921875 10.308594 23.660156 10.4375 23.578125 C 9.703125 20.632813 10.105469 18.0625 13.464844 18 C 14.304688 18 14.949219 18.234375 15.199219 18.695313 C 17.652344 19.046875 16.914063 22.472656 16.5625 23.578125 C 16.691406 23.660156 16.90625 23.925781 16.851563 24.390625 C 16.753906 25.265625 16.410156 25.484375 16.191406 25.503906 C 16.105469 26.316406 15.613281 27.277344 15.335938 27.429688 C 15.335938 28.007813 15.316406 28.449219 15.371094 29.085938 C 16.035156 30.941406 20.792969 30.421875 21 34 Z M 44 34 L 26 34 L 26 32 L 44 32 Z M 44 29 L 26 29 L 26 27 L 44 27 Z M 44 24 L 26 24 L 26 22 L 44 22 Z "></path>
                  </g>
                </svg>
              </div>
    				</div>
          </div>

         <div class="admin-event-culture-post-container">

          <!-- event-->
          <div class="admin-evnet-culture-post-event-container" id="admin_event_culture_post_event_container_id">
              <label class="admin-event-culture-post-label">Events</label>
              <div class="admin-event-culture-post-border"></div>

              <div class="admin-event-culture-post-event-container-inner">

                <!--event 1-->
                <c:if test="${not empty events}">
                  <c:forEach var="post" items="${events}">
                <div class="container mycontainer_event">
                  <div class="admin-edit-dropdown">
              			 <div class="profile-nav-icon">
              				<svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" viewBox="0 0 24 24" style="fill:#fff; position:absolute;">
              							<path d="M0 0h24v24H0z" fill="none"/>
              							<path d="M6 10c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm12 0c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm-6 0c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"/>
              					</svg>
              			</div>
              			 <div class="admin-edit-dropdown-content">
              							<!-- <a>Edit</a>
              							<a>Delete</a> -->
              				<a> 
              				<form class="list_item_form" action="editEvent/${post.event_id}" method="get">
								<button class="bg_transparent btn-transparent">Edit</button>
							</form></a>
              			    <a class="go_to_profile"  style="color: #636363;">
			                       <label><button class="bg_transparent btn-transparent" id="${post.event_id}" data-toggle="modal" data-target="#delete_art_modal" onClick="delete_post_function(this.id)">delete</button></label>
			                 
							 </a>			
							
              			 </div>
                 </div>
            			<div class="top-center">
            				<p>${post.e_title }</p>
            			</div>
            			<div class="middle">
            				<h1 style="color: white;">COMING SOON</h1><hr>
            				<p id="demo" style="font-size: 30px;"></p>
            			</div>
            			<div class="bottom-center">
            				<p>Start Date: ${post.e_start_date }<br>${post.e_des }.</p>
            			</div>
            		</div>
            		</c:forEach>
            		</c:if>
                <!-- event 2-->
               
              </div>
          </div>



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
					 <button style="font-size:18px;color:#fff;position:absolute;right:14.5rem;padding:0.5rem 2rem;background-color:lightgray;color:black;" data-dismiss="modal">Cancle</button>
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
			document.getElementById("delete_form").action="deleteEvent/"+_id;
		}
		</script>
		<!-- Modal -->
	 <div class="modal" id="myModal" role="dialog" style="z-index:999999;top:2rem;">
		 <div class="modal-dialog modal-lg">
			 <div class="modal-content modal_contant_edit">
				<div class="model-body">
					<!-- image -->
					 <div class="profile-image">
						 <!-- female profile icon -->
             <c:if test="${user.gender=='female' }">
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
									 <c:if test="${user.gender=='male' }">
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
			 <label class="profile-label label-fade-in">${user.first_name }</label>
	 </div>




 <div class="profile-content">
	 <label class="profile-title">Email Address</label>
	 <div data-v-5830c558="" class="profile-icon label-fade-in" draggable="true" class="app-icon is-ios7 is-custom-size" style="width: 35px; height: 35px; fill:#666;"><!--?xml version="1.0" encoding="UTF-8"?-->
					<svg xmlns="http://www.w3.org/2000/svg" width="35px" height="35px" viewBox="0 0 24 24">
					    <path d="M20 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"/>
					    <path d="M0 0h24v24H0z" fill="none"/>
					</svg>
		 </div>
	 <label class="profile-label label-fade-in">${user.email }</label>
</div>

	 <div class="profile-content">
		 <label class="profile-title">Phone Number</label>
		 <div data-v-5830c558="" class="profile-icon label-fade-in" draggable="true" class="app-icon is-Dusk_Wired is-custom-size" style="width: 35px; height: 35px; fill: #666;"><!--?xml version="1.0" encoding="UTF-8"?-->

					<svg xmlns="http://www.w3.org/2000/svg" width="35px" height="35px" viewBox="0 0 24 24">
						<path d="M0 0h24v24H0z" fill="none"/>
						<path d="M6.62 10.79c1.44 2.83 3.76 5.14 6.59 6.59l2.2-2.2c.27-.27.67-.36 1.02-.24 1.12.37 2.33.57 3.57.57.55 0 1 .45 1 1V20c0 .55-.45 1-1 1-9.39 0-17-7.61-17-17 0-.55.45-1 1-1h3.5c.55 0 1 .45 1 1 0 1.25.2 2.45.57 3.57.11.35.03.74-.25 1.02l-2.2 2.2z"/>
					</svg>

		 </div>
		 <label class="profile-label label-fade-in">${user.phone_no }</label>
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
					 <label class="profile-label label-fade-in">${user.gender }</label>
			 </div>
<div class="profile-content">
 <label class="profile-title">Place Address</label>
 <div data-v-5830c558="" class="profile-icon label-fade-in" draggable="true" class="app-icon is-ios7 is-custom-size" style="width: 35px; height: 35  px; fill:#666;"><!--?xml version="1.0" encoding="UTF-8"?-->
				<svg xmlns="http://www.w3.org/2000/svg" width="35px" height="35px" viewBox="0 0 24 24">
				 <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z"/>
				 <path d="M0 0h24v24H0z" fill="none"/>
				</svg>
	 </div>
 <label class="profile-label label-fade-in">${user.address }</label>
</div>
</div>
<div class="profile-nav">

		<div class="dropdown1">
			 <div class="profile-nav-icon">
				<svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" viewBox="0 0 24 24" style="fill:#fff; position:absolute;">
							<path d="M0 0h24v24H0z" fill="none"/>
							<path d="M6 10c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm12 0c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm-6 0c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"/>
					</svg>
			</div>
			 <div class="dropdown-content1">
							<a onclick="edit_function()">edit profile</a>
							<a onclick="change_pass()">change password</a>
			 </div>
 </div>
	 </div>

 </div>
 

		<!--edit-proflie-->

		 <form action="editprofilefromadmin" method="post">
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
								<input class="password-input" type="text" name="first_name" value="${user.first_name }"></input>
					 </div>
				 <div class="profile-content">
					 <label class="profile-title">Last Name</label>
					 <div data-v-5830c558="" class="password-profile-icon" draggable="true" class="app-icon is-ios7 is-custom-size" style="width: 35px; height: 35px; fill:#666;"><!--?xml version="1.0" encoding="UTF-8"?-->
						 <svg xmlns="http://www.w3.org/2000/svg" width="35px" height="35px" viewBox="0 0 24 24">
							<path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 3c1.66 0 3 1.34 3 3s-1.34 3-3 3-3-1.34-3-3 1.34-3 3-3zm0 14.2c-2.5 0-4.71-1.28-6-3.22.03-1.99 4-3.08 6-3.08 1.99 0 5.97 1.09 6 3.08-1.29 1.94-3.5 3.22-6 3.22z"/>
							<path d="M0 0h24v24H0z" fill="none"/>
							</svg>
						 </div>
						<input class="password-input" type="text" name="last_name" value="${user.last_name }"></input>
				</div>

					 <div class="profile-content">
						 <label class="profile-title">Phone Number</label>
						 <div data-v-5830c558="" class="password-profile-icon" draggable="true" class="app-icon is-Dusk_Wired is-custom-size" style="width: 35px; height: 35px; fill: #666;"><!--?xml version="1.0" encoding="UTF-8"?-->
							 <svg xmlns="http://www.w3.org/2000/svg" width="35px" height="35px" viewBox="0 0 24 24">
								 <path d="M0 0h24v24H0z" fill="none"/>
								 <path d="M6.62 10.79c1.44 2.83 3.76 5.14 6.59 6.59l2.2-2.2c.27-.27.67-.36 1.02-.24 1.12.37 2.33.57 3.57.57.55 0 1 .45 1 1V20c0 .55-.45 1-1 1-9.39 0-17-7.61-17-17 0-.55.45-1 1-1h3.5c.55 0 1 .45 1 1 0 1.25.2 2.45.57 3.57.11.35.03.74-.25 1.02l-2.2 2.2z"/>
							 </svg>

								 </div>
							<input class="password-input" type="text" name="phone_no" value="${user.phone_no }"></input>
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
								
													<option value="male" <c:if test="${user.gender == 'male' }">selected</c:if>>Male</option>
													
													<option value="female" <c:if test="${user.gender == 'female' }">selected</c:if>>Female</option>
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
							<input class="password-input" type="text" name="address" value="${user.address }" style="margin-top:-3.5rem;"></input>

				 </div>
              
			 </div>
				<div class="profile-nav">
				             <!-- back errow--->
			 <div class="profile-back-icon-div" onclick="back_profile_from_edit()">
				 <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
					 width="35px" height="35px" viewBox="0 0 24 24" enable-background="new 0 0 24 24" xml:space="preserve" fill="#fff">
				<path d="M15.41,16.59L10.83,12l4.58-4.59L14,6l-6,6l6,6L15.41,16.59z"/>
				<path fill="none" d="M0,0h24v24H0V0z"/>
			</sadmin_postvg>
		       </div>
 				 		 	<input class="profile-input-submit" type="submit" value="save"/>
 				</div>

		 	  </div>
				
 			</form>
	<!-- change password div-->
	 <form action="editpasswordfromprofile" method="post">
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
											 <input class="password-input" name="user_id" value="${user.user_id }" type="hidden"></input>
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

												<div class="profile-nav">
				             <!-- back errow--->
			 <div class="profile-back-icon-div" onclick="back_profile_from_pass()">
				 <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
					 width="35px" height="35px" viewBox="0 0 24 24" enable-background="new 0 0 24 24" xml:space="preserve" fill="#fff">
				<path d="M15.41,16.59L10.83,12l4.58-4.59L14,6l-6,6l6,6L15.41,16.59z"/>
				<path fill="none" d="M0,0h24v24H0V0z"/>
			</sadmin_postvg>
		       </div>
 				 		 	<input class="profile-input-submit" type="submit" value="save"/>
 				</div>
							 </div>
							 </form>




</div>
</div>
</div>
</div>


	 <script>
	 function edit_function(){

	 	  var element=document.getElementById("profile-cotainer-id");
	 		var element1=document.getElementById("profile-edit-container-id");
	 		element1.style.opacity=1;
	 		element1.classList.remove("edit-load-animation");
	 		element1.classList.remove("edit-move-animation");
	 		element.classList.remove("profile-load-animation");
	 		element.classList.remove("profile-move-animation");
	 		element.classList.add("profile-move-animation");
	 		element1.classList.add("edit-load-animation");
	 	  element.style.opacity=0;
	 		element1.style.zIndex=2;
	 		element.style.zIndex=1;

	 }
	 function back_profile_from_edit(){
	 	var element1=document.getElementById("profile-edit-container-id");
	 	element1.classList.add("edit-move-animation");
	 	var element=document.getElementById("profile-cotainer-id");
	 	element.style.opacity=1;
	 	element.classList.add("profile-load-animation");
	 	element1.style.opacity=0;
	 	element1.style.zIndex=1;
	 	element.style.zIndex=2;
	 }
	 function change_pass(){
	 	var element=document.getElementById("profile-cotainer-id");
	 	var element1=document.getElementById("profile-change-password-container-id");
	 	element1.style.opacity=1;
	 	element1.classList.remove("edit-load-animation");
	 	element1.classList.remove("edit-move-animation");
	 	element.classList.remove("profile-load-animation");
	 	element.classList.remove("profile-move-animation");
	 	element.classList.add("profile-move-animation");
	 	element1.classList.add("edit-load-animation");
	 	element.style.opacity=0;
	 	element.style.zIndex=1;
	 	element1.style.zIndex=2;
	 }
	 function back_profile_from_pass(){
	 	var element1=document.getElementById("profile-change-password-container-id");
	  element1.classList.add("edit-move-animation");
	  var element=document.getElementById("profile-cotainer-id");
	  element.style.opacity=1;
	  element.classList.add("profile-load-animation");
	  element1.style.opacity=0;
	  element1.style.zIndex=1;
	  element.style.zIndex=2;
	 }
	 $('#myModal').on('hidden.bs.modal', function () {
	 	var element=document.getElementById("profile-cotainer-id");
	   var element1=document.getElementById("profile-edit-container-id");
	 	var element2=document.getElementById("profile-change-password-container-id");
	 	element.style.opacity=1;
	 	element1.style.opacity=0;
	 	element2.style.opacity=0;
	 	element.style.zIndex=2;
	 	element1.style.zIndex=1;
	 	element2.style.zIndex=1;
	 	element2.classList.remove("edit-load-animation");
	 	element2.classList.remove("edit-move-animation");
	   element1.classList.remove("edit-load-animation");
	   element1.classList.remove("edit-move-animation");
	   element.classList.remove("profile-load-animation");
	   element.classList.remove("profile-move-animation");
	 });
	 </script>




		

      	<script src="${pageContext.request.contextPath}/bootstrap/jquery.min.js"></script>
      		<script src="${pageContext.request.contextPath}/bootstrap/bootstrap.min.js"></script>
        <script>
          function event_function(){
            window.location.href="/demo/jsp/admin_event";
          }
          function culture_function(){
            window.location.href="/demo/jsp/admin_culture";
          }
          function art_function(){
            window.location.href="/demo/jsp/admin_art";
          }
          function post_funtion(){
  					window.location.href="/demo/jsp/adminpost";
  				}
      	function auction_funtion(){
			window.location.href="/demo/jsp/admin_auction";
		}
        </script>


  </body>
</html>
