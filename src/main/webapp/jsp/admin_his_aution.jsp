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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/hla.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ylh.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/kaung.css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/bootstrap.min.css">
	  <script src="${pageContext.request.contextPath}/js/query.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/hla.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/ylh.js"></script>
  </head>
  <body class="overflow:hidden;" onload="codeAddress();">
    <!-- header -->


              <div class="admin_page_nav" id="admin_page_nav">
                <span class="title" id="title">MmArts&Culture</span>
                <div id="nav" class="inner">
                <ul>
                  <li><a href="/demo/jsp/adminpost" style="font-family:'Times-New-Roman';" id="nav1" onclick="post_funtion();">Post</a></li>
                  <li><a href="/demo/jsp/auctionwinner" id="nav2" class="active"  style="font-family:'Times-New-Roman';">Winner</a></li>
                  <li>
        						<div class="dropdown" style="left:0%;">
        							<a  style="font-family:'Times-New-Roman';" id="nav3">Edit</a>
        						 <div class="dropdown-content" style="background-color:#3d557d;Left:0rem;top:3.2rem;">
        							 <a onclick="event_function()" style="cursor:pointer; font-family:'Times-New-Roman';">Events</a>
        							 <a onclick="culture_function()" style="cursor:pointer; font-family:'Times-New-Roman';">Cultures</a>
        							 <a  onclick="art_function()" style="cursor:pointer; font-family:'Times-New-Roman';">Arts</a>
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
					  <!-- post -->
          <div class="admin-evnet-culture-post-art-container" id="admin_event_culture_post_culture_art_container_id">
              <label class="admin-event-culture-post-label">Auction Winner</label>
              <div class="admin-event-culture-post-border"></div>
              <div class="admin-event-culture-post-event-container-inner">
              			<div class="auction_container">
              			
              		
 <c:forEach var="post" items="${winnerobject}">
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
						<label class="his_auction_title">Name:</label>
						<label class="his_auction_label">${post.name }</label>
					  </div>
					   <div class="his_auction_container"> 
						<label class="his_auction_title">Phone:</label>
						<label class="his_auction_label">${post.phone }</label>
					  </div>
					   <div class="his_auction_container"> 
						<label class="his_auction_title">Email:</label>
						<label class="his_auction_label">${post.email }</label>
					  </div>
					</div>					
					<div class="auction_detail">
						<div style="margin-left: 0rem;">
						
							<div data-v-5830c558="" draggable="true" class="app-icon is-ios7 is-custom-size" style="width: 40px;float: left; height: 40px; fill: #636363;"><!--?xml version="1.0" encoding="UTF-8"?-->
								<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 50 50" version="1.1">
								<g id="surface1">
								<path style=" " d="M 13 2 C 11.894531 2 11 2.894531 11 4 C 11 5.105469 11.894531 6 13 6 L 37 6 C 38.105469 6 39 5.105469 39 4 C 39 2.894531 38.105469 2 37 2 Z M 8 6 C 4.699219 6 2 8.699219 2 12 C 2 15.945313 5.253906 19.507813 8.289063 22.578125 C 9.808594 24.113281 11.308594 25.515625 12.390625 26.6875 C 12.933594 27.269531 13.371094 27.800781 13.644531 28.21875 C 13.921875 28.640625 14 28.949219 14 29 C 14 29.566406 13.566406 30 13 30 C 12.640625 29.996094 12.304688 30.183594 12.121094 30.496094 C 11.941406 30.808594 11.941406 31.191406 12.121094 31.503906 C 12.304688 31.816406 12.640625 32.003906 13 32 C 14.601563 32 15.914063 30.714844 15.984375 29.128906 C 18.308594 34.902344 21.460938 39 24.964844 39 C 28.480469 39 31.664063 34.882813 34.007813 29.082031 C 34.054688 30.6875 35.382813 32 37 32 C 37.359375 32.003906 37.695313 31.816406 37.878906 31.503906 C 38.058594 31.191406 38.058594 30.808594 37.878906 30.496094 C 37.695313 30.183594 37.359375 29.996094 37 30 C 36.433594 30 36 29.566406 36 29 C 36 28.949219 36.078125 28.640625 36.355469 28.21875 C 36.628906 27.800781 37.066406 27.269531 37.609375 26.6875 C 38.691406 25.515625 40.191406 24.113281 41.710938 22.578125 C 44.746094 19.507813 48 15.945313 48 12 C 48 8.699219 45.300781 6 42 6 C 40.234375 6 38.644531 6.777344 37.546875 8 L 12.453125 8 C 11.355469 6.777344 9.765625 6 8 6 Z M 8 8 C 10.21875 8 12 9.78125 12 12 C 11.996094 12.230469 12.074219 12.453125 12.214844 12.632813 C 12.632813 17.527344 13.671875 22.5625 15.167969 26.917969 C 14.804688 26.402344 14.371094 25.878906 13.859375 25.328125 C 12.691406 24.070313 11.191406 22.671875 9.710938 21.171875 C 6.746094 18.175781 4 14.753906 4 12 C 4 9.78125 5.78125 8 8 8 Z M 42 8 C 44.21875 8 46 9.78125 46 12 C 46 14.753906 43.253906 18.175781 40.289063 21.171875 C 38.808594 22.671875 37.308594 24.070313 36.140625 25.328125 C 35.613281 25.894531 35.164063 26.433594 34.796875 26.964844 C 36.308594 22.605469 37.363281 17.558594 37.785156 12.632813 C 37.925781 12.453125 38.003906 12.230469 38 12 C 38 9.78125 39.78125 8 42 8 Z M 24.691406 13 L 27 13 L 27 25 L 24.078125 25 L 24.078125 17.363281 L 21.199219 17.363281 L 21.199219 15.394531 C 23.972656 15.394531 24.605469 13.5625 24.691406 13 Z M 29 39.671875 C 27.761719 40.523438 26.417969 41 24.964844 41 C 23.539063 41 22.214844 40.535156 21 39.707031 L 21 44 L 18 44 C 15.789063 44 14 45.789063 14 48 L 36 48 C 36 45.789063 34.210938 44 32 44 L 29 44 Z "></path>
								</g>
								</svg>
							</div>
							<span class="auction_win_price">Price:</span>
							<span class="auction_win_price">${post.price }MMK</span>
							
							<div class="his_auction_date">${post.date }</div>
							
						</div>
					</div>
				</div>
			</div>
			
 </c:forEach>
			<a value="1" style="cursor: pointer;"  onclick="ylh_function(this.value);" data-toggle="modal" data-target="#myModal" id="artist_post_icon">
				<div data-v-5830c558="" draggable="true" class="app-icon is-m_outlined is-custom-size" style="width: 28px; height: 28px; fill: rgb(255, 255, 255);"><!--?xml version="1.0"?-->
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 30 30">
					    <path style="line-height:normal;text-indent:0;text-align:start;text-decoration-line:none;text-decoration-style:solid;text-decoration-color:#000;text-transform:none;block-progression:tb;isolation:auto;mix-blend-mode:normal" d="M 12 3 C 9.8027056 3 8 4.8027056 8 7 C 8 9.1972944 9.8027056 11 12 11 C 14.197294 11 16 9.1972944 16 7 C 16 4.8027056 14.197294 3 12 3 z M 12 5 C 13.116414 5 14 5.8835859 14 7 C 14 8.1164141 13.116414 9 12 9 C 10.883586 9 10 8.1164141 10 7 C 10 5.8835859 10.883586 5 12 5 z M 12 14 C 8.859 14 3 15.545 3 18.5 L 3 21 L 13.171875 21 L 15.171875 19 L 5 19 L 5 18.5 C 5 17.631 8.708 16 12 16 C 13.801 16 15.722656 16.489219 17.097656 17.074219 L 18.597656 15.574219 C 16.616656 14.536219 13.844 14 12 14 z M 22.207031 15 C 22.079156 15 21.951016 15.048984 21.853516 15.146484 L 20.853516 16.146484 L 22.853516 18.146484 L 23.853516 17.146484 C 24.048516 16.951484 24.048516 16.634453 23.853516 16.439453 L 22.560547 15.146484 C 22.462547 15.048984 22.334906 15 22.207031 15 z M 20.146484 16.853516 L 15 22 L 15 24 L 17 24 L 22.146484 18.853516 L 20.146484 16.853516 z" font-weight="400" font-family="sans-serif" white-space="normal" overflow="visible"></path>
					</svg>
				</div>
			</a>
			<a href="javascript:" id="return-to-top"><i class="icon-chevron-up"></i></a>

		</div>
              
              </div>
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
					 <button style="font-size:18px;color:#fff;position:absolute;right:13rem;padding:0.5rem 2rem;background-color:lightgray;color:black;">Cancle</button>
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
			
			document.getElementById("delete_form").action=""+_id;
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
