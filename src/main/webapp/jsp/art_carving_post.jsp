<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${not empty art}">
         <c:forEach var="post" items="${art}">
         <c:if test="${post.s_art_id==2 }">
           
			<div class="art_post">
				<div class="artist_profile_container">
					<div class="artist_profile_pic">
						  <!-- female profile icon -->
			             <c:if test="${post.gender=='female' }">
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
										<c:if test="${post.gender=='male' }">
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
					<div class="artist_profile_name">
                     <form class="list_item_form" action="userprofile/${post.s_user_id}" method="get">
			           <a class="go_to_profile"><label><button class="bg_transparent">${post.first_name }</button></label></a>
			         </form>
			        </div>
					<div class="artist_icons">
					<div class="artist_sold_out1_for_k">
						<div class="admin-edit-dropdown" style="right:4rem;">
							 <div class="profile-nav-icon" style="opacity:0.7;">
								 <c:if test="${artist.user_id==post.s_user_id}">
								<svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" viewBox="0 0 24 24" style="fill:#3d557d; position:absolute;">
											<path d="M0 0h24v24H0z" fill="none"/>
											<path d="M6 10c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm12 0c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm-6 0c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"/>
									</svg>
									</c:if>
							</div>
							 <div class="admin-edit-dropdown-content">
							  <a class="go_to_profile" style="color: #636363;">
							    
							   <form class="list_item_form" action="editArt/${post.s_id}" method="get">	
							  					   
			                         <label> <button style="background: transparent;" class="btn-transparent">Edit</button></label>
			                   			                   
			                   </form>
			                   
			                   </a>
			                   <a class="go_to_profile"  style="color: #636363;">
			                  <label><button class="bg_transparent btn-transparent" id="${post.s_id}" data-toggle="modal" data-target="#delete_art_modal" onClick="delete_post_function(this.id)">delete</button></label>
			        
			                   </a>
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
					<p>13/8/2018</p>
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
						Medium:<span> ${post.s_material } </span>
					</div>
					<div class="art_post_price">
						Price: <span>${post.s_price }MMK</span>
					</div>

					<div class="art_post_desc">

						Description: <span>${post.s_desc }</span>
					</div>

				</div>

			</div>
			</c:if>
	</c:forEach>
	</c:if>