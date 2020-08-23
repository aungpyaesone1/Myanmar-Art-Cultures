
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:if test="${empty email }">
   <c:redirect url="/jsp/index"></c:redirect>
 </c:if>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Mm Arts & Culture</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/hla.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/kaung.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/datepicker.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ylh.css"/>
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/bootstrap.min.css">
	  <script src="${pageContext.request.contextPath}/js/query.min.js"></script>
		<script src="${pageContext.request.contextPath}/bootstrap/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/controller.js"></script>
	</head>
	<body class="admin_page_body">
<c:if test="${not empty events}">
<c:forEach var="post" items="${events}">
	
				<div class="culture_post">
					<div class="culture_img column hover01 hover15">
						<figure>
							<img src="../event_images/${ post.e_photo}"/>
						</figure>
					</div>

								<div class="culture_post_title">
									<p>${post.e_title }Myanmar Traditional Food</p>
								</div>
								<div class="culture_post_des">
									${post.e_title }<p>Do you know one of the best myanmar food is Mohinkhar.It is very delicious <a class="culture_post_read_more_link"><label style="cursor:pointer;">View detail...</label></a></p>
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
							<form class="list_item_form" action="deleteEvent/${post.event_id}" method="get">
								<button>Delete</button>
						    </form>
							<form class="list_item_form" action="editEvent/${post.event_id}" method="get">
								<button>Edit</button>
							</form>

				</div>
		</c:forEach>
		</c:if>
		<!-- Header -->
   <div>

      <div class="admin_page_nav" id="admin_page_nav">
        <span class="title" id="title">MmArts&Culture</span>
				<div id="nav" class="inner">
        <ul>
          <li><a class="active" href="/demo/jsp/adminpost" id="nav1">Post</a></li>
          <li><a href="/demo/jsp/event" id="nav2">Event</a></li>
          <li><a href="#" id="nav3">Members</a></li>
          <a id="logout">Logout</a>
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
      <div style="width:100%;border:1px solid gray;">
      ${message }
      </div>
      <div class="admin_post">

				<div class="choose_postOrEvent">
					<div class="custom-select">
					  <select id="id_of_select_postOrEvent" class="select_content">
					    <option value="0" selected disabled>Select Type:</option>
					    <option value="1" id="bar">Post</option>
					    <option value="2" id="bar">Event</option>
					  </select>
					</div>
				</div>
				<hr style="width:90%;height:2px;border:none;color:gray;background:gray;">
				<div class="post_default_container visible">
						<p class="post_default_des">Select post type first!!!</p>
				</div>
				<div class="event_container">
					<form name="wc-richTextEditor" id="wc-richTextEditor-form" class="wc-richTextEditor" modelAttribute="event" action="store" method="post" enctype="multipart/form-data">

						<div class="event_container_inner_left">
							<div class="post_title">
								<label class="choose_postOrEvent_label">  Title: &nbsp; &nbsp;</label>
								<input type="text" name="e_title">
							</div>
							<div class="post_title">
								<input type="hidden" name="email" value="${email }" >
							</div>
							
							<div class="post_title">
								<label class="choose_postOrEvent_label">  Start Date: &nbsp; &nbsp;</label>
								<div class="field">
										<input class="event_date" type="date" name="e_start_date" placeholder="Start Date"/>
								</div>

									<script src="js/datepicker.js"></script>
									<script>

											var input = document.querySelector('input[name="t_date"]');
											var picker = datepicker(input);
									</script>
							</div>
							<div class="post_title">
								<label class="choose_postOrEvent_label">  Upload Photo: &nbsp; &nbsp;</label>



								<label class="upload_input" for="my-file-selector" required style="position:absolute;margin-top:-3.3rem;margin-left:12.5rem;">
								    <input id="my-file-selector"  type="file" name="file" style="display:none"
								    onchange="$('#upload-file-info').html(this.files[0].name);readURL(this);event_function();">
									 <div class="app-icon is-ios7 is-custom-size" style="width: 32px; height: 32px; fill: #2980b9;" draggable="true" data-v-95731366=""><!--?xml version="1.0"?-->
										<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50">
										    <path d="M 25 2 C 12.317 2 2 12.317 2 25 s 10.317 23 23 23 s 23 -10.317 23 -23 S 37.683 2 25 2 Z M 37 26 H 26 v 11 h -2 V 26 H 13 v -2 h 11 V 13 h 2 v 11 h 11 V 26 Z" />
										</svg>
								   </div>
	    			 			</input>
								</label>
								<span class='label label-info image-file-value' id="upload-file-info" style="position:absolute;margin-top:-2.7rem;margin-left:16rem;"></span>
								<img id="blah" src="#" width="100%" height="50%" style="opacity:0;" />
							</div>
						</div>

						<div class="event_container_inner_right">
							<div class="event_description_box">
								<label class="event_description">Description:</label>
								<textarea class="event_textarea" name="e_des" placeholder=""></textarea>
							</div>
							<div class="event_submit">
								<input type="submit" name="event_submit" value="UPLOAD">
							</div>
						</div>

					</form>
			</div>


		<!-- start post contaianer-->
				<div class="post_container">
					<form name="wc-richTextEditor" id="wc-richTextEditor-form" class="wc-richTextEditor" modelAttribute="cpost" action="culture" method="post" enctype="multipart/form-data">
					<!--HTML Document Author: Jacob Scott Created: 11-14-15 Modified: 12-16-15	-->

						<div class="wrapper">
							<div class="post_title">
								<label class="choose_postOrEvent_label">  Title: &nbsp; &nbsp;</label>
								<input type="text" name="c_post_title">
							</div>
							<div class="post_title">
								<input type="hidden" name="email" value="${email }" >
							</div>
							<div class="post_title" style="margin-top:-9rem;margin-left:50%;">
								<label class="choose_postOrEvent_label">  Upload Photo: &nbsp; &nbsp;</label>
								<label class="upload_input" for="my-file-selector1" required style="">
										<input id="my-file-selector1"  type="file" name="file" style="display:none"
										onchange="$('#upload-file-info1').html(this.files[0].name);readURL1(this);event_function1();">
									 <div class="app-icon is-ios7 is-custom-size" style="width: 32px; height: 32px; fill: #2980b9;" draggable="true" data-v-95731366=""><!--?xml version="1.0"?-->
										<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50">
												<path d="M 25 2 C 12.317 2 2 12.317 2 25 s 10.317 23 23 23 s 23 -10.317 23 -23 S 37.683 2 25 2 Z M 37 26 H 26 v 11 h -2 V 26 H 13 v -2 h 11 V 13 h 2 v 11 h 11 V 26 Z" />
										</svg>
									 </div>
									</input>
								</label>
								<span class='label label-info image-file-value' id="upload-file-info1" style="position:absolute;margin-left:.5rem;margin-top:.7rem;"></span>
								<img id="blah1" src="#" width="100%" height="50%" style="opacity:0;" />

								
							</div>
							<label class="post_description">Description:</label>
							<!-- Editor Control Box -->
							<div class="editor-controls" id="editor-controls">

								<!-- Font Family -->
								<div class="rte editor button-group" id="fontFamilyGroup">
									<div class="rte editor dropdown-label"><i class="fa fa-fw fa-font"></i></div>
									<select class="rte dropdown editor" id="fontFamily" title="Font Family"><i class="fa fa-fw fa-font"></i>
										<option value="Arial, Helvetica, sans-serif" style="font-family: Arial, Helvetica, sans-serif">Arial</option>
										<option value="'Arial Black', Gadget, sans-serif" style="font-family: 'Arial Black', Gadget, sans-serif">Arial Black</option>
										<option value="'Times New Roman', serif" style="font-family: 'Times New Roman">Times New Roman</option>
										<option value="'Palatino Linotype', 'Book Antiqua', Palatino, serif" style="font-family: 'Palatino Linotype', 'Book Antiqua', Palatino, serif">Book Antiqua</option>
										<option value="Impact, Charcoal, sans-serif", style="font-family: Impact, Charcoal, sans-serif">Impact</option>
										<option value="'Lucida Sans Unicode', 'Lucida Grande', sans-serif" style="font-family: 'Lucida Sans Unicode', 'Lucida Grande', sans-serif">Lucida Console</option>
										<option value="Tahoma, Geneva, sans-serif" style="font-family: Tahoma, Geneva, sans-serif">Tahoma</option>
										<option value="'Trebuchet MS', Helvetica, sans-serif" style="font-family: 'Trebuchet MS', Helvetica, sans-serif">Trebuchet MS</option>
										<option value="Verdana, Geneva, sans-serif" style="font-family: Verdana, Geneva, sans-serif">Verdana</option>
									</select>
								</div>

								<!-- Header Style -->
								<div class="rte editor button-group" id="parStyleGroup">
									<div class="rte editor dropdown-label"><i class="fa fa-fw fa-header"></i></div>
									<select class="rte dropdown editor" id="parStyle" title="Paragraph Style"><i class="fa fa-fw fa-font"></i>
										<option value="h1" style="font-size: 2em; font-style: bold;" id="heading1">Heading 1</option>
										<option value="h2" style="font-size: 1.75em; font-style: bold;" id="heading2">Heading 2</option>
										<option value="h3" style="font-size: 1.5em; font-style: bold;">Heading 3</option>
										<option value="h4" style="font-size: 1.25em; font-weight: 900;">Heading 4</option>
										<option value="h5" style="font-size: 1.15em; font-weight: bold;">Heading 5</option>
										<option value="h5" style="font-size: 1.15em; font-weight: bold;">Heading 6</option>
										<option selected value="p" style="font-size: 1.0em; font-weight: bold;">Paragraph</option>
									</select>
								</div>

								<!-- Font Size -->
								<div class="rte editor button-group" id="textSizeGroup">
									<div class="rte editor dropdown-label"><i class="fa fa-fw fa-text-height"></i></div>
									<select class="rte dropdown editor" id="fontSize" title="Font Size" onclick=""><i class="fa fa-fw fa-font"></i>
										<option value="1" size="1">1</option>
										<option value="2" size="2">2</option>
										<option value="3" size="3">3</option>
										<option value="4" size="4">4</option>
										<option value="5" size="5">5</option>
										<option value="6" size="6">6</option>
										<option value="7" size="7">7</option>
									</select>
								</div>

								<!-- Font Color -->
								<div class="rte editor button-group" id="textColorGroup">
									<div class="rte editor dropdown-label"><i class="fa fa-fw fa-pencil"></i></div>
									<select class="rte dropdown editor" id="textColor" title="Text Color" onclick=""><i class="fa fa-fw fa-font"></i>
										<!--<option value="#eb5e6c" style="background-color: #eb5e6c; color: black;">Pig</option>-->
										<option value="#eb2538" data-textcolor="white" style="background-color: #eb2538; color: white;">Scarlet</option>
										<option value="#be1e2d" data-textcolor="white" style="background-color: #be1e2d; color: white;">Crimson</option>
										<option value="#eb25a2" data-textcolor="black" style="background-color: #eb25a2; color: black;">Hot Pink</option>
										<option value="#be1e9e" data-textcolor="black" style="background-color: #be1e9e; color: black;">Violet</option>
										<option value="#781363" data-textcolor="white" style="background-color: #781363; color: white;">Plumb</option>
										<option value="#5a25eb" data-textcolor="white" style="background-color: #5a25eb; color: white;">Indigo</option>
										<option value="#491ebe" data-textcolor="white" style="background-color: #491ebe; color: white;">Royal Blue</option>
										<option value="#2e1378" data-textcolor="white" style="background-color: #2e1378; color: white;">Navy</option>
										<option value="#25aceb" data-textcolor="black" style="background-color: #25aceb; color: black;">Sky</option>
										<option value="#1e79be" data-textcolor="white" style="background-color: #1e79be; color: white;">Aqua</option>
										<option value="#135178" data-textcolor="white" style="background-color: #135178; color: white;">Deep Sea</option>
										<option value="#25eb64" data-textcolor="black" style="background-color: #25eb64; color: black;">Lime</option>
										<option value="#1ebe6e" data-textcolor="black" style="background-color: #1ebe6e; color: black;">Emerald</option>
										<option value="#137858" data-textcolor="white" style="background-color: #137858; color: white;">Forest</option>
										<option value="#e8eb35" data-textcolor="black" style="background-color: #e8eb35; color: black;">Lemon</option>
										<option value="#d1be17" data-textcolor="white" style="background-color: #d1be17; color: white;">Mustard</option>
										<option value="#787813" data-textcolor="white" style="background-color: #787813; color: white;">Olive</option>
										<option value="#eb6725" data-textcolor="black" style="background-color: #eb6725; color: black;">Carrot</option>
										<option value="#be511e" data-textcolor="white" style="background-color: #be511e; color: white;">Pumpkin</option>
										<option value="#57391e" data-textcolor="white" style="background-color: #57391e; color: white;">Chocolate</option>
										<option value="#ffffff" data-textcolor="black" style="background-color: #ffffff; color: black;">White</option>
										<option value="#ebebeb" data-textcolor="black" style="background-color: #ebebeb; color: black;">Plaster</option>
										<option value="#bebebe" data-textcolor="black" style="background-color: #bebebe; color: black;">Concrete</option>
										<option value="#787878" data-textcolor="white" style="background-color: #787878; color: white;">Asphalt</option>
										<option value="#000000" data-textcolor="white" style="background-color: #000000; color: white;">Black</option>
										<option value="CUSTOM" style="background-color: white">CUSTOM</option>
									</select>
					</div>

								<!-- Inline Styles -->
								<div class="rte editor button-group" id="inlineStyleGroup">
									<!-- Bold -->
									<a class="rte button editor" id="bold" title="Bold" onclick="boldSel()"><i class="fa fa-fw fa-bold"></i></a>
									<!-- Italicize -->
									<a class="rte button editor" id="italic" title="Italicize" onclick="italicSel()"><i class="fa fa-fw fa-italic"></i></a>
									<!-- Underline -->
									<a class="rte button editor" id="underline" title="Underline" onclick="underlineSel()"><i class="fa fa-fw fa-underline"></i></a>
									<!-- Strikethrough -->
									<a class="rte button editor" id="strikethrough" title="Strikethrough" onclick="strikethroughSel()"><i class="fa fa-fw fa-strikethrough"></i></a>
								</div>

								<!-- Alignment -->
								<div class="button-group" id="alignmentGroup">
									<!-- Align Left -->
									<a class="rte button editor" id="left" title="Left-align" onclick="alignLeftSel()"><i class="fa fa-fw fa-align-left"></i></a>
									<!-- Align Center -->
									<a class="rte button editor" id="center" title="Center-align" onclick="alignCenterSel()"><i class="fa fa-fw fa-align-center"></i></a>
									<!-- Align Right -->
									<a class="rte button editor" id="right" title="Right-align" onclick="alignRightSel()"><i class="fa fa-fw fa-align-right"></i></a>
									<!-- Justify -->
									<a class="rte button editor" id="justify" title="Justify" onclick="alignJustifySel()"><i class="fa fa-fw fa-align-justify"></i></a>
								</div>

								<!-- Lists -->
								<div class="button-group" id="listsGroup">
									<!-- Unordered List -->
									<a class="rte button editor" id="unordered" title="Bulleted List" onclick="newUlSel()"><i class="fa fa-fw fa-list-ul"></i></a>
									<!-- Ordered List -->
									<a class="rte button editor" id="ordered" title="Numbered List" onclick="newOlSel()"><i class="fa fa-fw fa-list-ol"></i></a>
								</div>

								<!-- Hyperlinks -->
								<div class="button-group" id="linkGroup">
									<!-- Hyperlink -->
									<a class="rte button editor" id="link" title="Add Hyperlink" onclick="linkSel()"><i class="fa fa-fw fa-link"></i></a>
									<!-- Remove Hyperlink -->
									<a class="rte button editor" id="unlink" title="Remove Hyperlink" onclick="unlinkSel()"><i class="fa fa-fw fa-unlink"></i></a>
								</div>

							</div>

							<!-- Editor text box -->
							<textarea class="editor-text-box" id="editor-text-box" name="c_post_des" style="display:none" wrap="hard"></textarea>
							<iframe class="editor-richText-box" id="editor-richText-box" name="richTextBox"></iframe>

							<!-- Submit Content -->
							<div class="post_submit">
								<input type="submit" name="post_submit" value="POST">
							</div>

						</form>
				</div>
			</div>
			</div>

</div>

			<!-- Modal -->
	 <div class="modal my-modal" id="myModal" role="dialog" style="z-index:999999;">
		 <div class="modal-dialog modal-lg">
			 <div class="modal-content modal_contant_edit">
				<div class="model-body">
					<!-- image -->
					 <div class="profile-image">
						 <img src="images/profile.jpg" class="profile-res fade-in">
						 </div>





<div class="profile-container" id="profile-cotainer-id">
	 <div class="profile-container-inner">
		 <div class="profile-content">
			 <label class="profile-title">Acount Name</label>
			 <div data-v-5830c558="" class="profile-icon label-fade-in" draggable="true" class="app-icon is-dotty is-custom-size" style="width: 35px; height: 35px; fill:#666;"><!--?xml version="1.0" encoding="UTF-8"?-->
						 <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 80 80" version="1.1">
						 <g id="surface1">
						 <path style=" " d="M 38.726563 9 C 33.886719 9 29.535156 11.648438 26.378906 14.222656 C 23.222656 16.800781 21.210938 19.386719 21.210938 19.386719 L 20.308594 20.542969 L 21.71875 20.957031 C 21.71875 20.957031 22.265625 21.109375 22.921875 21.78125 C 23.574219 22.449219 24.273438 23.589844 24.273438 25.75 C 24.273438 28.550781 24.703125 30.8125 24.917969 31.769531 C 24.359375 32.277344 24 32.996094 24 33.800781 C 24 34.449219 24.195313 35.003906 24.355469 35.546875 C 24.433594 35.820313 24.511719 36.074219 24.5625 36.265625 C 24.613281 36.457031 24.625 36.644531 24.625 36.5 C 24.625 37.859375 25.765625 38.921875 27.109375 38.96875 C 27.292969 42.84375 29.160156 46.265625 32 48.519531 L 32 52.25 C 30.558594 52.6875 27.097656 53.804688 23.574219 55.46875 C 21.273438 56.554688 18.960938 57.863281 17.160156 59.414063 C 15.359375 60.964844 14 62.820313 14 65 L 14 71 L 66 71 L 66 65 C 66 62.820313 64.640625 60.964844 62.839844 59.414063 C 61.039063 57.863281 58.726563 56.554688 56.425781 55.46875 C 52.902344 53.804688 49.441406 52.6875 48 52.25 L 48 48.523438 C 50.839844 46.269531 52.707031 42.847656 52.890625 38.96875 C 54.234375 38.921875 55.375 37.859375 55.375 36.5 C 55.375 36.644531 55.386719 36.457031 55.4375 36.265625 C 55.488281 36.074219 55.566406 35.820313 55.644531 35.546875 C 55.804688 35.003906 56 34.449219 56 33.800781 C 56 32.980469 55.628906 32.257813 55.058594 31.746094 C 55.242188 30.691406 56 26.175781 56 23 C 56 19.40625 54.65625 16.832031 52.84375 15.234375 C 51.214844 13.804688 49.300781 13.230469 47.605469 13.109375 C 47.332031 12.675781 46.847656 11.996094 45.84375 11.210938 C 44.402344 10.089844 42.089844 9 38.726563 9 Z M 38.726563 11 C 41.664063 11 43.488281 11.910156 44.609375 12.789063 C 45.734375 13.667969 46.105469 14.441406 46.105469 14.441406 L 46.378906 15 L 47 15 C 48.332031 15 50.125 15.507813 51.519531 16.738281 C 52.917969 17.96875 54 19.890625 54 23 C 54 25.789063 53.335938 29.859375 53.140625 31 C 53.136719 31 53.132813 31 53.125 31 C 53.039063 31 53.054688 31.019531 53 31.027344 L 53 28 C 53 24.578125 51.601563 22.277344 50.195313 20.914063 C 48.789063 19.550781 47.316406 19.050781 47.316406 19.050781 L 46.746094 18.859375 L 46.308594 19.277344 C 46.308594 19.277344 45.679688 19.894531 44.160156 20.589844 C 42.640625 21.285156 40.289063 22 37 22 C 35.199219 22 32.828125 22.636719 30.769531 24.074219 C 28.71875 25.507813 27.011719 27.851563 27.003906 31.03125 C 26.949219 31.023438 26.960938 31 26.875 31 C 26.851563 31 26.828125 31.007813 26.804688 31.007813 C 26.601563 30.042969 26.273438 28.160156 26.273438 25.75 C 26.273438 23.132813 25.335938 21.394531 24.355469 20.386719 C 23.9375 19.957031 23.84375 20.03125 23.480469 19.816406 C 24.171875 19.003906 25.457031 17.5625 27.644531 15.777344 C 30.617188 13.351563 34.632813 11 38.726563 11 Z M 47 21.15625 C 47.242188 21.25 47.875 21.449219 48.804688 22.347656 C 49.898438 23.410156 51 25.105469 51 28 L 51 34.304688 L 52.503906 33.421875 C 52.761719 33.273438 53 33.140625 53.167969 33.054688 C 53.1875 33.042969 53.195313 33.042969 53.214844 33.03125 C 53.671875 33.078125 54 33.398438 54 33.796875 L 54 33.800781 C 54 33.875 53.878906 34.460938 53.726563 34.984375 C 53.648438 35.242188 53.570313 35.503906 53.503906 35.742188 C 53.441406 35.980469 53.375 36.148438 53.375 36.5 C 53.375 36.765625 53.15625 37 52.8125 37 L 51 37 L 51 38.367188 C 51 43.789063 47.089844 48.269531 41.941406 49.1875 L 41.65625 49.234375 L 41.441406 49.433594 C 41.050781 49.789063 40.558594 50 40 50 C 39.441406 50 38.949219 49.789063 38.558594 49.433594 L 38.34375 49.234375 L 38.058594 49.1875 C 32.910156 48.269531 29 43.789063 29 38.367188 L 29 37 L 27.1875 37 C 26.84375 37 26.625 36.765625 26.625 36.5 C 26.625 36.148438 26.558594 35.980469 26.492188 35.742188 C 26.425781 35.503906 26.347656 35.242188 26.269531 34.984375 C 26.117188 34.460938 26 33.875 26 33.800781 C 26 33.398438 26.328125 33.078125 26.785156 33.03125 C 26.804688 33.042969 26.8125 33.042969 26.832031 33.054688 C 27 33.140625 27.238281 33.273438 27.496094 33.421875 L 29 34.304688 L 29 31.050781 C 29 28.558594 30.242188 26.882813 31.914063 25.714844 C 33.585938 24.546875 35.710938 24 37 24 C 40.582031 24 43.230469 23.214844 44.992188 22.410156 C 46.300781 21.8125 46.644531 21.445313 47 21.15625 Z M 34.5 33 C 33.671875 33 33 33.671875 33 34.5 C 33 35.328125 33.671875 36 34.5 36 C 35.328125 36 36 35.328125 36 34.5 C 36 33.671875 35.328125 33 34.5 33 Z M 45.5 33 C 44.671875 33 44 33.671875 44 34.5 C 44 35.328125 44.671875 36 45.5 36 C 46.328125 36 47 35.328125 47 34.5 C 47 33.671875 46.328125 33 45.5 33 Z M 34 49.824219 C 35.066406 50.382813 36.21875 50.8125 37.441406 51.058594 C 38.148438 51.621094 39.023438 52 40 52 C 40.972656 52 41.84375 51.621094 42.546875 51.0625 C 43.773438 50.820313 44.929688 50.390625 46 49.828125 L 46 55.6875 C 45.878906 55.929688 44.296875 59 40 59 C 35.703125 59 34.121094 55.929688 34 55.6875 Z M 32 54.355469 L 32 56.234375 L 32.105469 56.449219 C 32.105469 56.449219 34.464844 61 40 61 C 45.535156 61 47.894531 56.449219 47.894531 56.449219 L 48 56.234375 L 48 54.355469 C 49.605469 54.859375 52.546875 55.851563 55.574219 57.28125 C 57.773438 58.320313 59.960938 59.574219 61.535156 60.929688 C 63.109375 62.285156 64 63.679688 64 65 L 64 69 L 16 69 L 16 65 C 16 63.679688 16.890625 62.285156 18.464844 60.929688 C 20.039063 59.574219 22.226563 58.320313 24.425781 57.28125 C 27.453125 55.851563 30.394531 54.859375 32 54.355469 Z M 20 65 C 19.449219 65 19 65.449219 19 66 C 19 66.550781 19.449219 67 20 67 C 20.550781 67 21 66.550781 21 66 C 21 65.449219 20.550781 65 20 65 Z M 24 65 C 23.449219 65 23 65.449219 23 66 C 23 66.550781 23.449219 67 24 67 C 24.550781 67 25 66.550781 25 66 C 25 65.449219 24.550781 65 24 65 Z M 28 65 C 27.449219 65 27 65.449219 27 66 C 27 66.550781 27.449219 67 28 67 C 28.550781 67 29 66.550781 29 66 C 29 65.449219 28.550781 65 28 65 Z M 32 65 C 31.449219 65 31 65.449219 31 66 C 31 66.550781 31.449219 67 32 67 C 32.550781 67 33 66.550781 33 66 C 33 65.449219 32.550781 65 32 65 Z M 36 65 C 35.449219 65 35 65.449219 35 66 C 35 66.550781 35.449219 67 36 67 C 36.550781 67 37 66.550781 37 66 C 37 65.449219 36.550781 65 36 65 Z M 40 65 C 39.449219 65 39 65.449219 39 66 C 39 66.550781 39.449219 67 40 67 C 40.550781 67 41 66.550781 41 66 C 41 65.449219 40.550781 65 40 65 Z M 44 65 C 43.449219 65 43 65.449219 43 66 C 43 66.550781 43.449219 67 44 67 C 44.550781 67 45 66.550781 45 66 C 45 65.449219 44.550781 65 44 65 Z M 48 65 C 47.449219 65 47 65.449219 47 66 C 47 66.550781 47.449219 67 48 67 C 48.550781 67 49 66.550781 49 66 C 49 65.449219 48.550781 65 48 65 Z M 52 65 C 51.449219 65 51 65.449219 51 66 C 51 66.550781 51.449219 67 52 67 C 52.550781 67 53 66.550781 53 66 C 53 65.449219 52.550781 65 52 65 Z M 56 65 C 55.449219 65 55 65.449219 55 66 C 55 66.550781 55.449219 67 56 67 C 56.550781 67 57 66.550781 57 66 C 57 65.449219 56.550781 65 56 65 Z M 60 65 C 59.449219 65 59 65.449219 59 66 C 59 66.550781 59.449219 67 60 67 C 60.550781 67 61 66.550781 61 66 C 61 65.449219 60.550781 65 60 65 Z "></path>
						 </g>
						 </svg>
			 </div>
			 <label class="profile-label label-fade-in">${user.first_name }</label>
	 </div>




 <div class="profile-content">
	 <label class="profile-title">Email Address</label>
	 <div data-v-5830c558="" class="profile-icon label-fade-in" draggable="true" class="app-icon is-ios7 is-custom-size" style="width: 35px; height: 35px; fill:#666;"><!--?xml version="1.0" encoding="UTF-8"?-->
		 <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 50 50" version="1.1">
		 <g id="surface1">
		 <path style=" " d="M 0 7 L 0 43 L 50 43 L 50 7 Z M 2 9 L 48 9 L 48 11.5 C 47.609375 11.839844 30.074219 27.136719 28.4375 28.5625 L 28.34375 28.65625 C 27.046875 29.785156 25.71875 30 25 30 C 24.285156 30 22.953125 29.785156 21.65625 28.65625 C 21.285156 28.332031 18.613281 26.023438 16.6875 24.34375 C 10.972656 19.359375 2.292969 11.757813 2 11.5 Z M 2 14.15625 C 3.734375 15.667969 9.886719 21.023438 15.125 25.59375 L 2 35.96875 Z M 48 14.15625 L 48 35.96875 L 34.875 25.59375 C 40.113281 21.023438 46.265625 15.667969 48 14.15625 Z M 16.65625 26.9375 C 17.871094 27.996094 20.066406 29.914063 20.34375 30.15625 L 20.375 30.1875 C 22.066406 31.640625 23.863281 32 25 32 C 26.144531 32 27.957031 31.636719 29.65625 30.15625 C 29.9375 29.914063 32.148438 28.007813 33.375 26.9375 L 48 38.5 L 48 41 L 2 41 L 2 38.5 Z "></path>
		 </g>
		 </svg>
		 </div>
	 <label class="profile-label label-fade-in">${user.email }</label>
</div>

	 <div class="profile-content">
		 <label class="profile-title">Phone Number</label>
		 <div data-v-5830c558="" class="profile-icon label-fade-in" draggable="true" class="app-icon is-Dusk_Wired is-custom-size" style="width: 35px; height: 35px; fill: #666;"><!--?xml version="1.0" encoding="UTF-8"?-->
				 <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 64 64" version="1.1">
				 <g id="surface1">
				 <path style=" " d="M 28.1875 2.117188 C 27.929688 2.113281 27.671875 2.207031 27.472656 2.398438 L 24.59375 5.179688 C 24.199219 5.5625 24.1875 6.195313 24.574219 6.59375 C 24.769531 6.792969 25.027344 6.898438 25.292969 6.898438 C 25.542969 6.898438 25.792969 6.804688 25.984375 6.617188 L 28.863281 3.835938 C 29.261719 3.453125 29.269531 2.820313 28.886719 2.421875 C 28.695313 2.226563 28.441406 2.125 28.1875 2.117188 Z M 15.730469 6 C 13.535156 6 11.59375 6.703125 10.40625 7.929688 L 10.289063 8.046875 C 8.859375 9.507813 5.507813 12.933594 5.507813 19.664063 C 5.507813 25.441406 8.941406 31.023438 10.984375 33.839844 L 11.0625 33.941406 C 11.109375 34.003906 11.191406 34.125 11.3125 34.300781 C 17.804688 43.769531 25.828125 50.839844 33.914063 54.207031 C 41.089844 57.199219 44.886719 57.996094 47.484375 57.996094 C 48.582031 57.996094 49.464844 57.855469 50.300781 57.675781 C 54.027344 56.867188 58.652344 54.125 59.878906 50.628906 C 60.878906 47.789063 61.1875 44.59375 60.574219 43.515625 C 60.167969 42.796875 59.417969 42.433594 58.378906 41.929688 C 58.152344 41.820313 57.90625 41.703125 57.640625 41.566406 C 57.5625 41.527344 49.964844 37.722656 48.5625 37.234375 C 46.800781 36.5625 45.238281 37.039063 44.160156 38.574219 L 43.609375 39.355469 C 42.542969 40.859375 41.535156 42.28125 40.71875 43.164063 C 40.199219 43.722656 39.308594 43.699219 38.660156 43.429688 L 38.242188 43.257813 C 36.496094 42.546875 32.863281 41.070313 28.371094 37.046875 C 24.777344 33.828125 22.199219 29.746094 21.261719 28.152344 C 20.871094 27.480469 21.035156 27.238281 21.703125 26.449219 C 22.0625 26 22.414063 25.625 22.765625 25.25 C 23.058594 24.941406 23.347656 24.632813 23.640625 24.289063 L 23.777344 24.136719 C 24.367188 23.445313 24.792969 22.949219 25.230469 22.015625 C 25.964844 20.578125 25.28125 19.148438 25.058594 18.675781 C 24.835938 18.210938 23.292969 14.445313 22.167969 11.695313 L 21.027344 8.914063 L 21.023438 8.910156 C 19.960938 6.347656 18.898438 6.121094 17.296875 6.054688 C 16.832031 6.027344 16.308594 6 15.730469 6 Z M 34.734375 7.546875 C 34.605469 7.546875 34.472656 7.570313 34.34375 7.621094 L 28.78125 9.867188 C 28.265625 10.074219 28.023438 10.660156 28.230469 11.171875 C 28.386719 11.5625 28.761719 11.796875 29.15625 11.796875 C 29.28125 11.796875 29.40625 11.773438 29.53125 11.722656 L 35.09375 9.476563 C 35.605469 9.269531 35.851563 8.6875 35.644531 8.171875 C 35.492188 7.789063 35.125 7.554688 34.734375 7.546875 Z M 16.085938 8.007813 C 16.480469 8.015625 16.851563 8.03125 17.199219 8.050781 C 18.296875 8.097656 18.527344 8.105469 19.175781 9.671875 L 20.316406 12.453125 C 21.839844 16.175781 23.023438 19.058594 23.25 19.535156 C 23.589844 20.246094 23.648438 20.714844 23.4375 21.136719 C 23.097656 21.855469 22.816406 22.179688 22.261719 22.828125 L 22.214844 22.886719 Z M 14.035156 8.1875 C 14.050781 8.253906 14.046875 8.320313 14.074219 8.382813 L 20.71875 24.519531 C 20.527344 24.734375 20.332031 24.960938 20.125 25.214844 C 19.488281 25.96875 18.417969 27.230469 19.53125 29.15625 C 20.757813 31.25 23.367188 35.253906 27.035156 38.539063 C 31.785156 42.792969 35.78125 44.417969 37.484375 45.109375 L 37.886719 45.277344 C 39.460938 45.933594 41.148438 45.640625 42.1875 44.523438 C 42.761719 43.902344 43.398438 43.066406 44.0625 42.152344 L 58.222656 49.230469 C 58.152344 49.472656 58.082031 49.714844 57.992188 49.96875 C 57.054688 52.636719 53.050781 55.03125 49.878906 55.71875 C 47.890625 56.144531 45.160156 56.730469 34.683594 52.359375 C 26.953125 49.136719 19.238281 42.324219 12.964844 33.171875 C 12.816406 32.957031 12.710938 32.808594 12.671875 32.753906 L 12.605469 32.660156 C 10.703125 30.042969 7.507813 24.875 7.507813 19.660156 C 7.507813 13.746094 10.351563 10.839844 11.71875 9.445313 L 11.839844 9.320313 C 12.347656 8.796875 13.121094 8.40625 14.035156 8.1875 Z M 29.78125 16.003906 C 29.226563 16.003906 28.78125 16.453125 28.78125 17.003906 C 28.78125 17.558594 29.226563 18.003906 29.78125 18.003906 L 33.78125 18.003906 C 34.332031 18.003906 34.78125 17.558594 34.78125 17.003906 C 34.78125 16.453125 34.332031 16.003906 33.78125 16.003906 Z M 17.648438 30.660156 C 17.519531 30.675781 17.390625 30.71875 17.273438 30.789063 C 16.796875 31.070313 16.636719 31.683594 16.917969 32.15625 C 17.246094 32.71875 17.832031 33.578125 18.488281 34.460938 C 18.683594 34.726563 18.988281 34.863281 19.292969 34.863281 C 19.5 34.863281 19.707031 34.800781 19.886719 34.667969 C 20.332031 34.339844 20.425781 33.710938 20.09375 33.269531 C 19.183594 32.039063 18.753906 31.332031 18.640625 31.144531 C 18.433594 30.785156 18.035156 30.609375 17.648438 30.660156 Z M 22.0625 36.203125 C 21.804688 36.1875 21.542969 36.269531 21.339844 36.453125 C 20.925781 36.816406 20.886719 37.449219 21.253906 37.863281 C 22.410156 39.167969 23.589844 40.363281 24.761719 41.410156 C 27.507813 43.871094 30.269531 45.824219 32.972656 47.214844 C 33.117188 47.289063 33.277344 47.324219 33.429688 47.324219 C 33.792969 47.324219 34.140625 47.128906 34.316406 46.78125 C 34.574219 46.292969 34.378906 45.6875 33.890625 45.4375 C 31.335938 44.121094 28.714844 42.265625 26.09375 39.921875 C 24.980469 38.921875 23.855469 37.785156 22.75 36.535156 C 22.566406 36.332031 22.316406 36.214844 22.0625 36.203125 Z M 46.953125 38.941406 C 47.226563 38.921875 47.527344 38.980469 47.875 39.109375 C 48.949219 39.484375 54.832031 42.394531 56.734375 43.355469 C 57.011719 43.492188 57.269531 43.617188 57.507813 43.734375 C 58.054688 43.996094 58.734375 44.324219 58.8125 44.453125 C 58.917969 44.738281 58.945313 45.789063 58.703125 47.234375 L 45.246094 40.503906 L 45.796875 39.730469 C 46.140625 39.238281 46.503906 38.980469 46.953125 38.941406 Z "></path>
				 </g>
				 </svg>
				 </div>
		 <label class="profile-label label-fade-in">${user.phone_no }</label>
 </div>
</div>

<div class="profile-container-inner profile-extra">
 <div class="profile-content">
			<label class="profile-title">Acount Type</label>
			<div data-v-5830c558="" class="profile-icon label-fade-in" draggable="true" class="app-icon is-Dusk_Wired is-custom-size" style="width: 35px; height: 35px; fill:#666;"><!--?xml version="1.0" encoding="UTF-8"?-->
			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 64 64" version="1.1">
			<g id="surface1">
			<path style=" " d="M 26 2 C 23.796875 2 20.648438 2.6875 18.691406 4.007813 C 14.96875 4.140625 12.417969 6.757813 12.003906 10.902344 C 11.746094 13.460938 11.980469 15.292969 12.136719 16.503906 C 12.191406 16.925781 12.25 17.402344 12.230469 17.542969 C 12.199219 17.726563 12.167969 17.914063 12.140625 18.105469 C 11.976563 18.113281 11.832031 18.136719 11.703125 18.171875 C 10.804688 18.414063 10.171875 19.214844 9.921875 20.433594 C 9.722656 21.410156 9.785156 22.597656 10.101563 23.777344 C 10.636719 25.773438 11.757813 27.273438 12.984375 27.734375 C 13.617188 29.671875 14.546875 31.597656 15.703125 33.332031 L 6.484375 38.671875 C 2.484375 40.984375 0 45.296875 0 49.917969 L 0 57 C 0 58.652344 1.347656 60 3 60 L 49 60 C 50.652344 60 52 58.652344 52 57 L 52 54 L 59 54 C 60.652344 54 62 52.652344 62 51 L 62 47.4375 C 62 43.691406 60.121094 40.242188 56.976563 38.203125 L 46.871094 31.667969 C 48.003906 30.210938 48.957031 28.46875 49.578125 26.609375 C 50.53125 26.195313 51.363281 25.058594 51.769531 23.527344 C 52.015625 22.609375 52.066406 21.683594 51.90625 20.917969 C 51.707031 19.925781 51.152344 19.238281 50.394531 19.035156 C 50.34375 19.019531 50.289063 19.007813 50.230469 19 C 50.128906 18.34375 49.957031 17.699219 49.683594 16.917969 C 49.863281 16.960938 50.054688 17.023438 50.222656 17.09375 C 50.570313 17.238281 50.964844 17.175781 51.25 16.9375 C 51.535156 16.699219 51.664063 16.320313 51.585938 15.957031 C 50.355469 10.328125 46.179688 6.96875 40.414063 6.96875 L 39.671875 6.96875 C 39.304688 6.96875 38.898438 6.996094 38.480469 7.046875 C 35.816406 3.8125 31.839844 2 27 2 Z M 26 4 L 27 4 C 33.070313 4 37.453125 7.101563 39.25 12.582031 C 38.5625 12.503906 37.847656 12.585938 37.355469 13.0625 C 36.972656 13.425781 36.613281 14.125 37.066406 15.359375 C 37.683594 17.035156 37.90625 18.027344 37.96875 19.433594 C 37.988281 19.792969 38.195313 20.113281 38.511719 20.277344 C 38.832031 20.4375 39.214844 20.417969 39.515625 20.222656 C 39.675781 20.121094 39.761719 20.105469 39.78125 20.105469 C 39.824219 20.125 40.011719 20.296875 40.121094 20.832031 C 40.257813 21.503906 40.199219 22.386719 39.96875 23.257813 C 39.472656 25.101563 38.53125 25.878906 38.234375 25.878906 C 37.792969 25.878906 37.402344 26.171875 37.277344 26.59375 C 35.589844 32.265625 31.175781 38 26 38 C 20.824219 38 16.410156 32.261719 14.726563 26.59375 C 14.597656 26.171875 14.210938 25.878906 13.765625 25.878906 C 13.472656 25.878906 12.527344 25.101563 12.035156 23.257813 C 11.800781 22.386719 11.746094 21.503906 11.882813 20.832031 C 11.996094 20.273438 12.191406 20.109375 12.214844 20.105469 C 12.21875 20.105469 12.304688 20.105469 12.488281 20.222656 C 12.785156 20.417969 13.167969 20.4375 13.488281 20.277344 C 13.804688 20.113281 14.015625 19.792969 14.03125 19.433594 C 14.054688 18.910156 14.113281 18.390625 14.203125 17.890625 C 14.277344 17.460938 14.214844 16.980469 14.121094 16.25 C 13.976563 15.128906 13.761719 13.433594 13.996094 11.101563 C 14.316406 7.910156 16.1875 6 19.019531 6 C 19.234375 6 19.445313 5.929688 19.621094 5.800781 C 20.988281 4.773438 23.730469 4 26 4 Z M 39.8125 8.96875 L 40.414063 8.96875 C 44.6875 8.96875 47.8125 11.085938 49.1875 14.84375 C 48.738281 14.851563 48.296875 14.964844 47.960938 15.285156 C 47.621094 15.609375 47.296875 16.21875 47.683594 17.269531 C 48.132813 18.496094 48.292969 19.214844 48.34375 20.234375 C 48.359375 20.59375 48.566406 20.914063 48.886719 21.078125 C 49.195313 21.234375 49.566406 21.222656 49.863281 21.035156 C 49.988281 21.320313 50.097656 22.035156 49.839844 23.011719 C 49.53125 24.15625 48.953125 24.730469 48.792969 24.777344 C 48.351563 24.777344 47.960938 25.066406 47.832031 25.488281 C 46.902344 28.617188 44.960938 31.433594 42.765625 32.832031 C 42.300781 33.128906 42.164063 33.746094 42.464844 34.214844 C 42.652344 34.511719 42.976563 34.675781 43.308594 34.675781 C 43.492188 34.675781 43.675781 34.625 43.84375 34.515625 C 44.433594 34.140625 45.003906 33.679688 45.546875 33.152344 C 45.589844 33.191406 45.617188 33.238281 45.667969 33.265625 L 55.890625 39.882813 C 58.464844 41.550781 60 44.375 60 47.4375 L 60 51 C 60 51.550781 59.550781 52 59 52 L 52 52 L 52 50 C 52.554688 50 53 49.550781 53 49 L 53 47 C 53 46.449219 52.554688 46 52 46 C 51.789063 46 51.605469 46.082031 51.441406 46.191406 C 50.503906 43.066406 48.40625 40.34375 45.515625 38.667969 L 36.296875 33.328125 C 37.453125 31.597656 38.378906 29.671875 39.015625 27.734375 C 40.238281 27.273438 41.363281 25.773438 41.894531 23.777344 C 42.210938 22.597656 42.277344 21.410156 42.078125 20.433594 C 41.828125 19.214844 41.195313 18.414063 40.296875 18.171875 C 40.171875 18.140625 40.023438 18.113281 39.859375 18.105469 C 39.71875 17.035156 39.449219 16.035156 38.941406 14.667969 C 38.929688 14.628906 38.917969 14.59375 38.90625 14.5625 C 39.257813 14.589844 39.824219 14.734375 40.285156 14.921875 C 40.632813 15.066406 41.027344 15.007813 41.3125 14.765625 C 41.59375 14.527344 41.726563 14.148438 41.644531 13.785156 C 41.253906 11.996094 40.632813 10.386719 39.8125 8.96875 Z M 20.171875 10.125 C 19.582031 10.179688 19.027344 10.492188 18.683594 11.015625 L 17.078125 13.449219 C 16.773438 13.910156 16.902344 14.53125 17.363281 14.835938 C 17.53125 14.949219 17.722656 15 17.910156 15 C 18.238281 15 18.554688 14.84375 18.75 14.550781 L 20.355469 12.117188 L 21.917969 12.878906 C 24.765625 14.265625 27.941406 15 31.109375 15 L 33.667969 15 C 34.222656 15 34.667969 14.550781 34.667969 14 C 34.667969 13.449219 34.222656 13 33.667969 13 L 31.109375 13 C 28.246094 13 25.367188 12.335938 22.792969 11.078125 L 21.230469 10.316406 C 20.890625 10.152344 20.523438 10.09375 20.171875 10.125 Z M 16.90625 34.941406 C 19.339844 37.910156 22.503906 40 26 40 C 29.496094 40 32.65625 37.910156 35.089844 34.945313 L 44.511719 40.398438 C 47.898438 42.359375 50 46.007813 50 49.921875 L 50 57 C 50 57.550781 49.550781 58 49 58 L 3 58 C 2.449219 58 2 57.550781 2 57 L 2 49.917969 C 2 46.007813 4.105469 42.359375 7.488281 40.398438 Z M 18.0625 40 C 17.675781 39.976563 17.292969 40.183594 17.105469 40.550781 C 16.859375 41.046875 17.058594 41.648438 17.550781 41.894531 L 25.550781 45.894531 C 25.695313 45.964844 25.847656 46 26 46 C 26.152344 46 26.308594 45.964844 26.449219 45.894531 L 34.449219 41.894531 C 34.941406 41.648438 35.140625 41.046875 34.894531 40.550781 C 34.648438 40.058594 34.046875 39.859375 33.550781 40.105469 L 26 43.882813 L 18.449219 40.105469 C 18.324219 40.042969 18.195313 40.011719 18.0625 40 Z M 57 46 C 56.445313 46 56 46.449219 56 47 L 56 49 C 56 49.550781 56.445313 50 57 50 C 57.554688 50 58 49.550781 58 49 L 58 47 C 58 46.449219 57.554688 46 57 46 Z M 6 52 C 5.445313 52 5 52.449219 5 53 L 5 55 C 5 55.550781 5.445313 56 6 56 C 6.554688 56 7 55.550781 7 55 L 7 53 C 7 52.449219 6.554688 52 6 52 Z M 11 52 C 10.445313 52 10 52.449219 10 53 L 10 55 C 10 55.550781 10.445313 56 11 56 C 11.554688 56 12 55.550781 12 55 L 12 53 C 12 52.449219 11.554688 52 11 52 Z M 16 52 C 15.445313 52 15 52.449219 15 53 L 15 55 C 15 55.550781 15.445313 56 16 56 C 16.554688 56 17 55.550781 17 55 L 17 53 C 17 52.449219 16.554688 52 16 52 Z M 21 52 C 20.445313 52 20 52.449219 20 53 L 20 55 C 20 55.550781 20.445313 56 21 56 C 21.554688 56 22 55.550781 22 55 L 22 53 C 22 52.449219 21.554688 52 21 52 Z M 26 52 C 25.445313 52 25 52.449219 25 53 L 25 55 C 25 55.550781 25.445313 56 26 56 C 26.554688 56 27 55.550781 27 55 L 27 53 C 27 52.449219 26.554688 52 26 52 Z M 31 52 C 30.445313 52 30 52.449219 30 53 L 30 55 C 30 55.550781 30.445313 56 31 56 C 31.554688 56 32 55.550781 32 55 L 32 53 C 32 52.449219 31.554688 52 31 52 Z M 36 52 C 35.445313 52 35 52.449219 35 53 L 35 55 C 35 55.550781 35.445313 56 36 56 C 36.554688 56 37 55.550781 37 55 L 37 53 C 37 52.449219 36.554688 52 36 52 Z M 41 52 C 40.445313 52 40 52.449219 40 53 L 40 55 C 40 55.550781 40.445313 56 41 56 C 41.554688 56 42 55.550781 42 55 L 42 53 C 42 52.449219 41.554688 52 41 52 Z M 46 52 C 45.445313 52 45 52.449219 45 53 L 45 55 C 45 55.550781 45.445313 56 46 56 C 46.554688 56 47 55.550781 47 55 L 47 53 C 47 52.449219 46.554688 52 46 52 Z "></path>
			</g>
			</svg>
			</div>
			<label class="profile-label label-fade-in">Admin</label>
	</div>

	<div class="profile-content">
					 <label class="profile-title">Gender</label>
					 <div data-v-5830c558="" class="profile-icon label-fade-in" draggable="true" class="app-icon is-Dusk_Wired is-custom-size" style="width: 35px; height: 35px; fill:#666;"><!--?xml version="1.0"?-->
					 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
							 <path d="M 40 0.0546875 C 38.897 0.0546875 38 0.9516875 38 2.0546875 L 38 6.0546875 C 38 7.1576875 38.897 8.0546875 40 8.0546875 L 44.554688 8.0546875 L 40.230469 12.298828 C 39.913469 12.609828 39.426016 12.671312 39.041016 12.445312 C 35.834016 10.573313 32.167172 9.7504531 28.451172 10.064453 C 19.906172 10.786453 12.869078 17.760109 12.080078 26.287109 C 11.270078 35.031109 16.811859 43.049562 25.255859 45.351562 C 25.693859 45.471562 26 45.864547 26 46.310547 L 26 50 L 19 50 C 18.448 50 18 50.448 18 51 L 18 57 C 18 57.552 18.448 58 19 58 L 26 58 L 26 63 C 26 63.552 26.448 64 27 64 L 33 64 C 33.552 64 34 63.552 34 63 L 34 58 L 41 58 C 41.552 58 42 57.552 42 57 L 42 51 C 42 50.448 41.552 50 41 50 L 34 50 L 34 46.310547 C 34 45.865547 34.304234 45.472516 34.740234 45.353516 C 42.547234 43.225516 48 36.09 48 28 C 48 24.855 47.168656 21.75325 45.597656 19.03125 C 45.373656 18.64325 45.433141 18.151937 45.744141 17.835938 L 50 13.501953 L 50 18.054688 C 50 19.157688 50.897 20.054688 52 20.054688 L 56 20.054688 C 57.103 20.054688 58 19.157688 58 18.054688 L 58 2.0546875 C 58 0.9516875 57.103 0.0546875 56 0.0546875 L 40 0.0546875 z M 40 2.0546875 L 56 2.0546875 L 56 18.054688 L 52 18.054688 L 52 11.054688 C 52 10.648687 51.754906 10.282906 51.378906 10.128906 C 51.003906 9.9769063 50.570156 10.064516 50.285156 10.353516 L 44.316406 16.435547 C 43.378406 17.390547 43.194234 18.86925 43.865234 20.03125 C 45.262234 22.45025 46 25.206 46 28 C 46 35.19 41.154797 41.531875 34.216797 43.421875 C 32.911797 43.777875 32 44.964547 32 46.310547 L 32 51 C 32 51.552 32.448 52 33 52 L 40 52 L 40 56 L 33 56 C 32.448 56 32 56.448 32 57 L 32 62 L 28 62 L 28 57 C 28 56.448 27.552 56 27 56 L 20 56 L 20 52 L 27 52 C 27.552 52 28 51.552 28 51 L 28 46.310547 C 28 44.965547 27.08725 43.777875 25.78125 43.421875 C 18.27625 41.375875 13.351312 34.247656 14.070312 26.472656 C 14.771313 18.896656 21.026141 12.699594 28.619141 12.058594 C 31.927141 11.779594 35.183203 12.510828 38.033203 14.173828 C 39.195203 14.853828 40.673813 14.667563 41.632812 13.726562 L 47.701172 7.7695312 C 47.991172 7.4845312 48.078781 7.0537344 47.925781 6.6777344 C 47.771781 6.3007344 47.406 6.0546875 47 6.0546875 L 40 6.0546875 L 40 2.0546875 z M 20.960938 4.6894531 C 20.832234 4.6716562 20.697953 4.6802969 20.564453 4.7167969 C 20.030453 4.8597969 19.714422 5.4074063 19.857422 5.9414062 L 20.375 7.8710938 C 20.495 8.3180937 20.897844 8.6132812 21.339844 8.6132812 C 21.424844 8.6132812 21.513609 8.602125 21.599609 8.578125 C 22.133609 8.435125 22.449641 7.8875156 22.306641 7.3535156 L 21.789062 5.4238281 C 21.681812 5.0240781 21.347047 4.7428437 20.960938 4.6894531 z M 15.876953 6.6875 C 15.748125 6.7036406 15.6195 6.7449531 15.5 6.8144531 C 15.021 7.0904531 14.858766 7.7016875 15.134766 8.1796875 L 16.134766 9.9121094 C 16.320766 10.233109 16.655953 10.412109 17.001953 10.412109 C 17.170953 10.412109 17.343 10.368344 17.5 10.277344 C 17.979 10.001344 18.141234 9.3901094 17.865234 8.9121094 L 16.865234 7.1796875 C 16.657484 6.8204375 16.263437 6.6390781 15.876953 6.6875 z M 11.857422 9.8574219 C 11.601672 9.8574219 11.345891 9.9548906 11.150391 10.150391 C 10.759391 10.541391 10.759391 11.173453 11.150391 11.564453 L 12.564453 12.978516 C 12.759453 13.173516 13.015484 13.271484 13.271484 13.271484 C 13.527484 13.271484 13.783516 13.173516 13.978516 12.978516 C 14.369516 12.587516 14.369516 11.955453 13.978516 11.564453 L 12.564453 10.150391 C 12.368953 9.9548906 12.113172 9.8574219 11.857422 9.8574219 z M 8.8027344 14.007812 C 8.415875 13.959766 8.0214531 14.1415 7.8144531 14.5 C 7.5384531 14.978 7.7016875 15.589234 8.1796875 15.865234 L 9.9121094 16.865234 C 10.069109 16.956234 10.240156 17 10.410156 17 C 10.756156 17 11.092344 16.821 11.277344 16.5 C 11.553344 16.022 11.390109 15.410766 10.912109 15.134766 L 9.1796875 14.134766 C 9.0599375 14.065516 8.9316875 14.023828 8.8027344 14.007812 z M 30 16 C 23.383 16 18 21.383 18 28 C 18 34.617 23.383 40 30 40 C 36.617 40 42 34.617 42 28 C 42 21.383 36.617 16 30 16 z M 30 18 C 35.514 18 40 22.486 40 28 C 40 33.514 35.514 38 30 38 C 24.486 38 20 33.514 20 28 C 20 22.486 24.486 18 30 18 z M 6.5429688 18.832031 C 6.1568594 18.885703 5.8220938 19.164703 5.7148438 19.564453 C 5.5718438 20.097453 5.887875 20.646063 6.421875 20.789062 L 8.3535156 21.308594 C 8.4405156 21.331594 8.5282812 21.34375 8.6132812 21.34375 C 9.0542813 21.34375 9.459125 21.048563 9.578125 20.601562 C 9.722125 20.067562 9.4050938 19.519 8.8710938 19.375 L 6.9394531 18.857422 C 6.8059531 18.821422 6.6716719 18.814141 6.5429688 18.832031 z"></path>
					 </svg>
					 </div>
					 <label class="profile-label label-fade-in">${user.gender }</label>
			 </div>
<div class="profile-content">
 <label class="profile-title">Place Address</label>
 <div data-v-5830c558="" class="profile-icon label-fade-in" draggable="true" class="app-icon is-ios7 is-custom-size" style="width: 35px; height: 35  px; fill:#666;"><!--?xml version="1.0" encoding="UTF-8"?-->
	 <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 50 50" version="1.1">
	 <g id="surface1">
	 <path style=" " d="M 35 2 C 32.03125 2 29.433594 3.730469 28.050781 6.265625 C 27.097656 6.113281 26.132813 6.019531 25.199219 6.007813 L 25.199219 6 L 25 6 C 13.398438 6 4 15.398438 4 27 C 4 38.601563 13.398438 48 25 48 C 36.601563 48 46 38.601563 46 27 C 46 22.511719 44.476563 18.117188 41.839844 14.5625 C 42.535156 12.96875 43 11.5 43 10.402344 C 43 5.800781 39.398438 2 35 2 Z M 35 4 C 38.300781 4 41 6.898438 41 10.402344 C 41 12.800781 37.800781 18.398438 35 22.5 C 32.199219 18.398438 29 12.800781 29 10.402344 C 29 6.898438 31.699219 4 35 4 Z M 35 6 C 32.800781 6 31 7.800781 31 10 C 31 12.199219 32.800781 14 35 14 C 37.199219 14 39 12.199219 39 10 C 39 7.800781 37.199219 6 35 6 Z M 35 8 C 36.117188 8 37 8.882813 37 10 C 37 11.117188 36.117188 12 35 12 C 33.882813 12 33 11.117188 33 10 C 33 8.882813 33.882813 8 35 8 Z M 26 8.046875 C 26.425781 8.066406 26.863281 8.105469 27.300781 8.15625 C 27.113281 8.875 27 9.625 27 10.402344 C 27 11.824219 27.769531 13.863281 28.828125 16 L 26 16 Z M 24 8.132813 L 24 16 L 17.71875 16 C 19.179688 11.746094 21.4375 8.757813 24 8.132813 Z M 19.398438 8.839844 C 17.824219 10.578125 16.519531 13.035156 15.585938 16 L 9.523438 16 C 11.917969 12.640625 15.363281 10.082031 19.398438 8.839844 Z M 40.855469 16.613281 C 42.734375 19.375 43.785156 22.632813 43.960938 26 L 35.992188 26 C 35.988281 25.542969 35.96875 25.101563 35.941406 24.648438 C 37.097656 22.980469 39.160156 19.890625 40.855469 16.613281 Z M 8.265625 18 L 15.03125 18 C 14.445313 20.433594 14.09375 23.128906 14.027344 26 L 6.050781 26 C 6.199219 23.117188 6.96875 20.402344 8.265625 18 Z M 17.109375 18 L 24 18 L 24 26 L 16.027344 26 C 16.101563 23.136719 16.476563 20.414063 17.109375 18 Z M 26 18 L 29.898438 18 C 31.339844 20.589844 32.875 22.929688 33.902344 24.421875 C 33.933594 24.9375 33.953125 25.46875 33.96875 26 L 26 26 Z M 6.050781 28 L 14.027344 28 C 14.09375 30.871094 14.445313 33.566406 15.03125 36 L 8.265625 36 C 6.96875 33.597656 6.199219 30.882813 6.050781 28 Z M 16.027344 28 L 24 28 L 24 36 L 17.109375 36 C 16.476563 33.585938 16.101563 30.863281 16.027344 28 Z M 26 28 L 33.972656 28 C 33.898438 30.863281 33.523438 33.585938 32.890625 36 L 26 36 Z M 35.972656 28 L 43.949219 28 C 43.800781 30.882813 43.03125 33.597656 41.734375 36 L 34.96875 36 C 35.554688 33.566406 35.90625 30.871094 35.972656 28 Z M 9.523438 38 L 15.585938 38 C 16.519531 40.964844 17.824219 43.421875 19.398438 45.160156 C 15.363281 43.917969 11.917969 41.359375 9.523438 38 Z M 17.71875 38 L 24 38 L 24 45.871094 C 21.441406 45.242188 19.179688 42.253906 17.71875 38 Z M 26 38 L 32.28125 38 C 30.820313 42.253906 28.558594 45.242188 26 45.871094 Z M 34.414063 38 L 40.476563 38 C 38.082031 41.359375 34.636719 43.917969 30.601563 45.160156 C 32.175781 43.421875 33.480469 40.964844 34.414063 38 Z "></path>
	 </g>
	 </svg>
	 </div>
 <label class="profile-label label-fade-in">${user.address }</label>
</div>
</div>
<div class="profile-nav">

		<div class="dropdown">
			 <div class="profile-nav-icon">
				<svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" viewBox="0 0 24 24" style="fill:#fff; position:absolute;">
							<path d="M0 0h24v24H0z" fill="none"/>
							<path d="M6 10c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm12 0c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm-6 0c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"/>
					</svg>
			</div>
			 <div class="dropdown-content">
							<a onclick="edit_function()">edit profile</a>
							<a onclick="change_pass()">change password</a>
			 </div>
 </div>
	 </div>
 </div>


		<!--edit-proflie-->

		<div class="profile-edit-container" id="profile-edit-container-id">
			<div class="profile-container-inner">
			 <div class="profile-content">
				 <label class="profile-title">Acount Name</label>
				 <div data-v-5830c558="" class="password-profile-icon" draggable="true" class="app-icon is-dotty is-custom-size" style="width: 35px; height: 35px; fill:#666;"><!--?xml version="1.0" encoding="UTF-8"?-->
							 <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 80 80" version="1.1">
							 <g id="surface1">
							 <path style=" " d="M 38.726563 9 C 33.886719 9 29.535156 11.648438 26.378906 14.222656 C 23.222656 16.800781 21.210938 19.386719 21.210938 19.386719 L 20.308594 20.542969 L 21.71875 20.957031 C 21.71875 20.957031 22.265625 21.109375 22.921875 21.78125 C 23.574219 22.449219 24.273438 23.589844 24.273438 25.75 C 24.273438 28.550781 24.703125 30.8125 24.917969 31.769531 C 24.359375 32.277344 24 32.996094 24 33.800781 C 24 34.449219 24.195313 35.003906 24.355469 35.546875 C 24.433594 35.820313 24.511719 36.074219 24.5625 36.265625 C 24.613281 36.457031 24.625 36.644531 24.625 36.5 C 24.625 37.859375 25.765625 38.921875 27.109375 38.96875 C 27.292969 42.84375 29.160156 46.265625 32 48.519531 L 32 52.25 C 30.558594 52.6875 27.097656 53.804688 23.574219 55.46875 C 21.273438 56.554688 18.960938 57.863281 17.160156 59.414063 C 15.359375 60.964844 14 62.820313 14 65 L 14 71 L 66 71 L 66 65 C 66 62.820313 64.640625 60.964844 62.839844 59.414063 C 61.039063 57.863281 58.726563 56.554688 56.425781 55.46875 C 52.902344 53.804688 49.441406 52.6875 48 52.25 L 48 48.523438 C 50.839844 46.269531 52.707031 42.847656 52.890625 38.96875 C 54.234375 38.921875 55.375 37.859375 55.375 36.5 C 55.375 36.644531 55.386719 36.457031 55.4375 36.265625 C 55.488281 36.074219 55.566406 35.820313 55.644531 35.546875 C 55.804688 35.003906 56 34.449219 56 33.800781 C 56 32.980469 55.628906 32.257813 55.058594 31.746094 C 55.242188 30.691406 56 26.175781 56 23 C 56 19.40625 54.65625 16.832031 52.84375 15.234375 C 51.214844 13.804688 49.300781 13.230469 47.605469 13.109375 C 47.332031 12.675781 46.847656 11.996094 45.84375 11.210938 C 44.402344 10.089844 42.089844 9 38.726563 9 Z M 38.726563 11 C 41.664063 11 43.488281 11.910156 44.609375 12.789063 C 45.734375 13.667969 46.105469 14.441406 46.105469 14.441406 L 46.378906 15 L 47 15 C 48.332031 15 50.125 15.507813 51.519531 16.738281 C 52.917969 17.96875 54 19.890625 54 23 C 54 25.789063 53.335938 29.859375 53.140625 31 C 53.136719 31 53.132813 31 53.125 31 C 53.039063 31 53.054688 31.019531 53 31.027344 L 53 28 C 53 24.578125 51.601563 22.277344 50.195313 20.914063 C 48.789063 19.550781 47.316406 19.050781 47.316406 19.050781 L 46.746094 18.859375 L 46.308594 19.277344 C 46.308594 19.277344 45.679688 19.894531 44.160156 20.589844 C 42.640625 21.285156 40.289063 22 37 22 C 35.199219 22 32.828125 22.636719 30.769531 24.074219 C 28.71875 25.507813 27.011719 27.851563 27.003906 31.03125 C 26.949219 31.023438 26.960938 31 26.875 31 C 26.851563 31 26.828125 31.007813 26.804688 31.007813 C 26.601563 30.042969 26.273438 28.160156 26.273438 25.75 C 26.273438 23.132813 25.335938 21.394531 24.355469 20.386719 C 23.9375 19.957031 23.84375 20.03125 23.480469 19.816406 C 24.171875 19.003906 25.457031 17.5625 27.644531 15.777344 C 30.617188 13.351563 34.632813 11 38.726563 11 Z M 47 21.15625 C 47.242188 21.25 47.875 21.449219 48.804688 22.347656 C 49.898438 23.410156 51 25.105469 51 28 L 51 34.304688 L 52.503906 33.421875 C 52.761719 33.273438 53 33.140625 53.167969 33.054688 C 53.1875 33.042969 53.195313 33.042969 53.214844 33.03125 C 53.671875 33.078125 54 33.398438 54 33.796875 L 54 33.800781 C 54 33.875 53.878906 34.460938 53.726563 34.984375 C 53.648438 35.242188 53.570313 35.503906 53.503906 35.742188 C 53.441406 35.980469 53.375 36.148438 53.375 36.5 C 53.375 36.765625 53.15625 37 52.8125 37 L 51 37 L 51 38.367188 C 51 43.789063 47.089844 48.269531 41.941406 49.1875 L 41.65625 49.234375 L 41.441406 49.433594 C 41.050781 49.789063 40.558594 50 40 50 C 39.441406 50 38.949219 49.789063 38.558594 49.433594 L 38.34375 49.234375 L 38.058594 49.1875 C 32.910156 48.269531 29 43.789063 29 38.367188 L 29 37 L 27.1875 37 C 26.84375 37 26.625 36.765625 26.625 36.5 C 26.625 36.148438 26.558594 35.980469 26.492188 35.742188 C 26.425781 35.503906 26.347656 35.242188 26.269531 34.984375 C 26.117188 34.460938 26 33.875 26 33.800781 C 26 33.398438 26.328125 33.078125 26.785156 33.03125 C 26.804688 33.042969 26.8125 33.042969 26.832031 33.054688 C 27 33.140625 27.238281 33.273438 27.496094 33.421875 L 29 34.304688 L 29 31.050781 C 29 28.558594 30.242188 26.882813 31.914063 25.714844 C 33.585938 24.546875 35.710938 24 37 24 C 40.582031 24 43.230469 23.214844 44.992188 22.410156 C 46.300781 21.8125 46.644531 21.445313 47 21.15625 Z M 34.5 33 C 33.671875 33 33 33.671875 33 34.5 C 33 35.328125 33.671875 36 34.5 36 C 35.328125 36 36 35.328125 36 34.5 C 36 33.671875 35.328125 33 34.5 33 Z M 45.5 33 C 44.671875 33 44 33.671875 44 34.5 C 44 35.328125 44.671875 36 45.5 36 C 46.328125 36 47 35.328125 47 34.5 C 47 33.671875 46.328125 33 45.5 33 Z M 34 49.824219 C 35.066406 50.382813 36.21875 50.8125 37.441406 51.058594 C 38.148438 51.621094 39.023438 52 40 52 C 40.972656 52 41.84375 51.621094 42.546875 51.0625 C 43.773438 50.820313 44.929688 50.390625 46 49.828125 L 46 55.6875 C 45.878906 55.929688 44.296875 59 40 59 C 35.703125 59 34.121094 55.929688 34 55.6875 Z M 32 54.355469 L 32 56.234375 L 32.105469 56.449219 C 32.105469 56.449219 34.464844 61 40 61 C 45.535156 61 47.894531 56.449219 47.894531 56.449219 L 48 56.234375 L 48 54.355469 C 49.605469 54.859375 52.546875 55.851563 55.574219 57.28125 C 57.773438 58.320313 59.960938 59.574219 61.535156 60.929688 C 63.109375 62.285156 64 63.679688 64 65 L 64 69 L 16 69 L 16 65 C 16 63.679688 16.890625 62.285156 18.464844 60.929688 C 20.039063 59.574219 22.226563 58.320313 24.425781 57.28125 C 27.453125 55.851563 30.394531 54.859375 32 54.355469 Z M 20 65 C 19.449219 65 19 65.449219 19 66 C 19 66.550781 19.449219 67 20 67 C 20.550781 67 21 66.550781 21 66 C 21 65.449219 20.550781 65 20 65 Z M 24 65 C 23.449219 65 23 65.449219 23 66 C 23 66.550781 23.449219 67 24 67 C 24.550781 67 25 66.550781 25 66 C 25 65.449219 24.550781 65 24 65 Z M 28 65 C 27.449219 65 27 65.449219 27 66 C 27 66.550781 27.449219 67 28 67 C 28.550781 67 29 66.550781 29 66 C 29 65.449219 28.550781 65 28 65 Z M 32 65 C 31.449219 65 31 65.449219 31 66 C 31 66.550781 31.449219 67 32 67 C 32.550781 67 33 66.550781 33 66 C 33 65.449219 32.550781 65 32 65 Z M 36 65 C 35.449219 65 35 65.449219 35 66 C 35 66.550781 35.449219 67 36 67 C 36.550781 67 37 66.550781 37 66 C 37 65.449219 36.550781 65 36 65 Z M 40 65 C 39.449219 65 39 65.449219 39 66 C 39 66.550781 39.449219 67 40 67 C 40.550781 67 41 66.550781 41 66 C 41 65.449219 40.550781 65 40 65 Z M 44 65 C 43.449219 65 43 65.449219 43 66 C 43 66.550781 43.449219 67 44 67 C 44.550781 67 45 66.550781 45 66 C 45 65.449219 44.550781 65 44 65 Z M 48 65 C 47.449219 65 47 65.449219 47 66 C 47 66.550781 47.449219 67 48 67 C 48.550781 67 49 66.550781 49 66 C 49 65.449219 48.550781 65 48 65 Z M 52 65 C 51.449219 65 51 65.449219 51 66 C 51 66.550781 51.449219 67 52 67 C 52.550781 67 53 66.550781 53 66 C 53 65.449219 52.550781 65 52 65 Z M 56 65 C 55.449219 65 55 65.449219 55 66 C 55 66.550781 55.449219 67 56 67 C 56.550781 67 57 66.550781 57 66 C 57 65.449219 56.550781 65 56 65 Z M 60 65 C 59.449219 65 59 65.449219 59 66 C 59 66.550781 59.449219 67 60 67 C 60.550781 67 61 66.550781 61 66 C 61 65.449219 60.550781 65 60 65 Z "></path>
							 </g>
							 </svg>
				 </div>
					<input class="password-input" type="text" value="BaBa Kaung Htet"></input>
		 </div>




	 <div class="profile-content">
		 <label class="profile-title">Email Address</label>
		 <div data-v-5830c558="" class="password-profile-icon" draggable="true" class="app-icon is-ios7 is-custom-size" style="width: 35px; height: 35px; fill:#666;"><!--?xml version="1.0" encoding="UTF-8"?-->
			 <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 50 50" version="1.1">
			 <g id="surface1">
			 <path style=" " d="M 0 7 L 0 43 L 50 43 L 50 7 Z M 2 9 L 48 9 L 48 11.5 C 47.609375 11.839844 30.074219 27.136719 28.4375 28.5625 L 28.34375 28.65625 C 27.046875 29.785156 25.71875 30 25 30 C 24.285156 30 22.953125 29.785156 21.65625 28.65625 C 21.285156 28.332031 18.613281 26.023438 16.6875 24.34375 C 10.972656 19.359375 2.292969 11.757813 2 11.5 Z M 2 14.15625 C 3.734375 15.667969 9.886719 21.023438 15.125 25.59375 L 2 35.96875 Z M 48 14.15625 L 48 35.96875 L 34.875 25.59375 C 40.113281 21.023438 46.265625 15.667969 48 14.15625 Z M 16.65625 26.9375 C 17.871094 27.996094 20.066406 29.914063 20.34375 30.15625 L 20.375 30.1875 C 22.066406 31.640625 23.863281 32 25 32 C 26.144531 32 27.957031 31.636719 29.65625 30.15625 C 29.9375 29.914063 32.148438 28.007813 33.375 26.9375 L 48 38.5 L 48 41 L 2 41 L 2 38.5 Z "></path>
			 </g>
			 </svg>
			 </div>
			<input class="password-input" type="email" value="kaunghtet29.9.1997@gmail.com"></input>
	</div>

		 <div class="profile-content">
			 <label class="profile-title">Phone Number</label>
			 <div data-v-5830c558="" class="password-profile-icon" draggable="true" class="app-icon is-Dusk_Wired is-custom-size" style="width: 35px; height: 35px; fill: #666;"><!--?xml version="1.0" encoding="UTF-8"?-->
					 <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 64 64" version="1.1">
					 <g id="surface1">
					 <path style=" " d="M 28.1875 2.117188 C 27.929688 2.113281 27.671875 2.207031 27.472656 2.398438 L 24.59375 5.179688 C 24.199219 5.5625 24.1875 6.195313 24.574219 6.59375 C 24.769531 6.792969 25.027344 6.898438 25.292969 6.898438 C 25.542969 6.898438 25.792969 6.804688 25.984375 6.617188 L 28.863281 3.835938 C 29.261719 3.453125 29.269531 2.820313 28.886719 2.421875 C 28.695313 2.226563 28.441406 2.125 28.1875 2.117188 Z M 15.730469 6 C 13.535156 6 11.59375 6.703125 10.40625 7.929688 L 10.289063 8.046875 C 8.859375 9.507813 5.507813 12.933594 5.507813 19.664063 C 5.507813 25.441406 8.941406 31.023438 10.984375 33.839844 L 11.0625 33.941406 C 11.109375 34.003906 11.191406 34.125 11.3125 34.300781 C 17.804688 43.769531 25.828125 50.839844 33.914063 54.207031 C 41.089844 57.199219 44.886719 57.996094 47.484375 57.996094 C 48.582031 57.996094 49.464844 57.855469 50.300781 57.675781 C 54.027344 56.867188 58.652344 54.125 59.878906 50.628906 C 60.878906 47.789063 61.1875 44.59375 60.574219 43.515625 C 60.167969 42.796875 59.417969 42.433594 58.378906 41.929688 C 58.152344 41.820313 57.90625 41.703125 57.640625 41.566406 C 57.5625 41.527344 49.964844 37.722656 48.5625 37.234375 C 46.800781 36.5625 45.238281 37.039063 44.160156 38.574219 L 43.609375 39.355469 C 42.542969 40.859375 41.535156 42.28125 40.71875 43.164063 C 40.199219 43.722656 39.308594 43.699219 38.660156 43.429688 L 38.242188 43.257813 C 36.496094 42.546875 32.863281 41.070313 28.371094 37.046875 C 24.777344 33.828125 22.199219 29.746094 21.261719 28.152344 C 20.871094 27.480469 21.035156 27.238281 21.703125 26.449219 C 22.0625 26 22.414063 25.625 22.765625 25.25 C 23.058594 24.941406 23.347656 24.632813 23.640625 24.289063 L 23.777344 24.136719 C 24.367188 23.445313 24.792969 22.949219 25.230469 22.015625 C 25.964844 20.578125 25.28125 19.148438 25.058594 18.675781 C 24.835938 18.210938 23.292969 14.445313 22.167969 11.695313 L 21.027344 8.914063 L 21.023438 8.910156 C 19.960938 6.347656 18.898438 6.121094 17.296875 6.054688 C 16.832031 6.027344 16.308594 6 15.730469 6 Z M 34.734375 7.546875 C 34.605469 7.546875 34.472656 7.570313 34.34375 7.621094 L 28.78125 9.867188 C 28.265625 10.074219 28.023438 10.660156 28.230469 11.171875 C 28.386719 11.5625 28.761719 11.796875 29.15625 11.796875 C 29.28125 11.796875 29.40625 11.773438 29.53125 11.722656 L 35.09375 9.476563 C 35.605469 9.269531 35.851563 8.6875 35.644531 8.171875 C 35.492188 7.789063 35.125 7.554688 34.734375 7.546875 Z M 16.085938 8.007813 C 16.480469 8.015625 16.851563 8.03125 17.199219 8.050781 C 18.296875 8.097656 18.527344 8.105469 19.175781 9.671875 L 20.316406 12.453125 C 21.839844 16.175781 23.023438 19.058594 23.25 19.535156 C 23.589844 20.246094 23.648438 20.714844 23.4375 21.136719 C 23.097656 21.855469 22.816406 22.179688 22.261719 22.828125 L 22.214844 22.886719 Z M 14.035156 8.1875 C 14.050781 8.253906 14.046875 8.320313 14.074219 8.382813 L 20.71875 24.519531 C 20.527344 24.734375 20.332031 24.960938 20.125 25.214844 C 19.488281 25.96875 18.417969 27.230469 19.53125 29.15625 C 20.757813 31.25 23.367188 35.253906 27.035156 38.539063 C 31.785156 42.792969 35.78125 44.417969 37.484375 45.109375 L 37.886719 45.277344 C 39.460938 45.933594 41.148438 45.640625 42.1875 44.523438 C 42.761719 43.902344 43.398438 43.066406 44.0625 42.152344 L 58.222656 49.230469 C 58.152344 49.472656 58.082031 49.714844 57.992188 49.96875 C 57.054688 52.636719 53.050781 55.03125 49.878906 55.71875 C 47.890625 56.144531 45.160156 56.730469 34.683594 52.359375 C 26.953125 49.136719 19.238281 42.324219 12.964844 33.171875 C 12.816406 32.957031 12.710938 32.808594 12.671875 32.753906 L 12.605469 32.660156 C 10.703125 30.042969 7.507813 24.875 7.507813 19.660156 C 7.507813 13.746094 10.351563 10.839844 11.71875 9.445313 L 11.839844 9.320313 C 12.347656 8.796875 13.121094 8.40625 14.035156 8.1875 Z M 29.78125 16.003906 C 29.226563 16.003906 28.78125 16.453125 28.78125 17.003906 C 28.78125 17.558594 29.226563 18.003906 29.78125 18.003906 L 33.78125 18.003906 C 34.332031 18.003906 34.78125 17.558594 34.78125 17.003906 C 34.78125 16.453125 34.332031 16.003906 33.78125 16.003906 Z M 17.648438 30.660156 C 17.519531 30.675781 17.390625 30.71875 17.273438 30.789063 C 16.796875 31.070313 16.636719 31.683594 16.917969 32.15625 C 17.246094 32.71875 17.832031 33.578125 18.488281 34.460938 C 18.683594 34.726563 18.988281 34.863281 19.292969 34.863281 C 19.5 34.863281 19.707031 34.800781 19.886719 34.667969 C 20.332031 34.339844 20.425781 33.710938 20.09375 33.269531 C 19.183594 32.039063 18.753906 31.332031 18.640625 31.144531 C 18.433594 30.785156 18.035156 30.609375 17.648438 30.660156 Z M 22.0625 36.203125 C 21.804688 36.1875 21.542969 36.269531 21.339844 36.453125 C 20.925781 36.816406 20.886719 37.449219 21.253906 37.863281 C 22.410156 39.167969 23.589844 40.363281 24.761719 41.410156 C 27.507813 43.871094 30.269531 45.824219 32.972656 47.214844 C 33.117188 47.289063 33.277344 47.324219 33.429688 47.324219 C 33.792969 47.324219 34.140625 47.128906 34.316406 46.78125 C 34.574219 46.292969 34.378906 45.6875 33.890625 45.4375 C 31.335938 44.121094 28.714844 42.265625 26.09375 39.921875 C 24.980469 38.921875 23.855469 37.785156 22.75 36.535156 C 22.566406 36.332031 22.316406 36.214844 22.0625 36.203125 Z M 46.953125 38.941406 C 47.226563 38.921875 47.527344 38.980469 47.875 39.109375 C 48.949219 39.484375 54.832031 42.394531 56.734375 43.355469 C 57.011719 43.492188 57.269531 43.617188 57.507813 43.734375 C 58.054688 43.996094 58.734375 44.324219 58.8125 44.453125 C 58.917969 44.738281 58.945313 45.789063 58.703125 47.234375 L 45.246094 40.503906 L 45.796875 39.730469 C 46.140625 39.238281 46.503906 38.980469 46.953125 38.941406 Z "></path>
					 </g>
					 </svg>
					 </div>
				<input class="password-input" type="text" value="09-790375266"></input>
	 </div>
	</div>

	<div class="profile-container-inner profile-extra">
	 <div class="profile-content">
				<label class="profile-title">Acount Type</label>
				<div data-v-5830c558="" class="password-profile-icon" draggable="true" class="app-icon is-Dusk_Wired is-custom-size" style="width: 35px; height: 35px; fill:#666;"><!--?xml version="1.0" encoding="UTF-8"?-->
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 64 64" version="1.1">
				<g id="surface1">
				<path style=" " d="M 26 2 C 23.796875 2 20.648438 2.6875 18.691406 4.007813 C 14.96875 4.140625 12.417969 6.757813 12.003906 10.902344 C 11.746094 13.460938 11.980469 15.292969 12.136719 16.503906 C 12.191406 16.925781 12.25 17.402344 12.230469 17.542969 C 12.199219 17.726563 12.167969 17.914063 12.140625 18.105469 C 11.976563 18.113281 11.832031 18.136719 11.703125 18.171875 C 10.804688 18.414063 10.171875 19.214844 9.921875 20.433594 C 9.722656 21.410156 9.785156 22.597656 10.101563 23.777344 C 10.636719 25.773438 11.757813 27.273438 12.984375 27.734375 C 13.617188 29.671875 14.546875 31.597656 15.703125 33.332031 L 6.484375 38.671875 C 2.484375 40.984375 0 45.296875 0 49.917969 L 0 57 C 0 58.652344 1.347656 60 3 60 L 49 60 C 50.652344 60 52 58.652344 52 57 L 52 54 L 59 54 C 60.652344 54 62 52.652344 62 51 L 62 47.4375 C 62 43.691406 60.121094 40.242188 56.976563 38.203125 L 46.871094 31.667969 C 48.003906 30.210938 48.957031 28.46875 49.578125 26.609375 C 50.53125 26.195313 51.363281 25.058594 51.769531 23.527344 C 52.015625 22.609375 52.066406 21.683594 51.90625 20.917969 C 51.707031 19.925781 51.152344 19.238281 50.394531 19.035156 C 50.34375 19.019531 50.289063 19.007813 50.230469 19 C 50.128906 18.34375 49.957031 17.699219 49.683594 16.917969 C 49.863281 16.960938 50.054688 17.023438 50.222656 17.09375 C 50.570313 17.238281 50.964844 17.175781 51.25 16.9375 C 51.535156 16.699219 51.664063 16.320313 51.585938 15.957031 C 50.355469 10.328125 46.179688 6.96875 40.414063 6.96875 L 39.671875 6.96875 C 39.304688 6.96875 38.898438 6.996094 38.480469 7.046875 C 35.816406 3.8125 31.839844 2 27 2 Z M 26 4 L 27 4 C 33.070313 4 37.453125 7.101563 39.25 12.582031 C 38.5625 12.503906 37.847656 12.585938 37.355469 13.0625 C 36.972656 13.425781 36.613281 14.125 37.066406 15.359375 C 37.683594 17.035156 37.90625 18.027344 37.96875 19.433594 C 37.988281 19.792969 38.195313 20.113281 38.511719 20.277344 C 38.832031 20.4375 39.214844 20.417969 39.515625 20.222656 C 39.675781 20.121094 39.761719 20.105469 39.78125 20.105469 C 39.824219 20.125 40.011719 20.296875 40.121094 20.832031 C 40.257813 21.503906 40.199219 22.386719 39.96875 23.257813 C 39.472656 25.101563 38.53125 25.878906 38.234375 25.878906 C 37.792969 25.878906 37.402344 26.171875 37.277344 26.59375 C 35.589844 32.265625 31.175781 38 26 38 C 20.824219 38 16.410156 32.261719 14.726563 26.59375 C 14.597656 26.171875 14.210938 25.878906 13.765625 25.878906 C 13.472656 25.878906 12.527344 25.101563 12.035156 23.257813 C 11.800781 22.386719 11.746094 21.503906 11.882813 20.832031 C 11.996094 20.273438 12.191406 20.109375 12.214844 20.105469 C 12.21875 20.105469 12.304688 20.105469 12.488281 20.222656 C 12.785156 20.417969 13.167969 20.4375 13.488281 20.277344 C 13.804688 20.113281 14.015625 19.792969 14.03125 19.433594 C 14.054688 18.910156 14.113281 18.390625 14.203125 17.890625 C 14.277344 17.460938 14.214844 16.980469 14.121094 16.25 C 13.976563 15.128906 13.761719 13.433594 13.996094 11.101563 C 14.316406 7.910156 16.1875 6 19.019531 6 C 19.234375 6 19.445313 5.929688 19.621094 5.800781 C 20.988281 4.773438 23.730469 4 26 4 Z M 39.8125 8.96875 L 40.414063 8.96875 C 44.6875 8.96875 47.8125 11.085938 49.1875 14.84375 C 48.738281 14.851563 48.296875 14.964844 47.960938 15.285156 C 47.621094 15.609375 47.296875 16.21875 47.683594 17.269531 C 48.132813 18.496094 48.292969 19.214844 48.34375 20.234375 C 48.359375 20.59375 48.566406 20.914063 48.886719 21.078125 C 49.195313 21.234375 49.566406 21.222656 49.863281 21.035156 C 49.988281 21.320313 50.097656 22.035156 49.839844 23.011719 C 49.53125 24.15625 48.953125 24.730469 48.792969 24.777344 C 48.351563 24.777344 47.960938 25.066406 47.832031 25.488281 C 46.902344 28.617188 44.960938 31.433594 42.765625 32.832031 C 42.300781 33.128906 42.164063 33.746094 42.464844 34.214844 C 42.652344 34.511719 42.976563 34.675781 43.308594 34.675781 C 43.492188 34.675781 43.675781 34.625 43.84375 34.515625 C 44.433594 34.140625 45.003906 33.679688 45.546875 33.152344 C 45.589844 33.191406 45.617188 33.238281 45.667969 33.265625 L 55.890625 39.882813 C 58.464844 41.550781 60 44.375 60 47.4375 L 60 51 C 60 51.550781 59.550781 52 59 52 L 52 52 L 52 50 C 52.554688 50 53 49.550781 53 49 L 53 47 C 53 46.449219 52.554688 46 52 46 C 51.789063 46 51.605469 46.082031 51.441406 46.191406 C 50.503906 43.066406 48.40625 40.34375 45.515625 38.667969 L 36.296875 33.328125 C 37.453125 31.597656 38.378906 29.671875 39.015625 27.734375 C 40.238281 27.273438 41.363281 25.773438 41.894531 23.777344 C 42.210938 22.597656 42.277344 21.410156 42.078125 20.433594 C 41.828125 19.214844 41.195313 18.414063 40.296875 18.171875 C 40.171875 18.140625 40.023438 18.113281 39.859375 18.105469 C 39.71875 17.035156 39.449219 16.035156 38.941406 14.667969 C 38.929688 14.628906 38.917969 14.59375 38.90625 14.5625 C 39.257813 14.589844 39.824219 14.734375 40.285156 14.921875 C 40.632813 15.066406 41.027344 15.007813 41.3125 14.765625 C 41.59375 14.527344 41.726563 14.148438 41.644531 13.785156 C 41.253906 11.996094 40.632813 10.386719 39.8125 8.96875 Z M 20.171875 10.125 C 19.582031 10.179688 19.027344 10.492188 18.683594 11.015625 L 17.078125 13.449219 C 16.773438 13.910156 16.902344 14.53125 17.363281 14.835938 C 17.53125 14.949219 17.722656 15 17.910156 15 C 18.238281 15 18.554688 14.84375 18.75 14.550781 L 20.355469 12.117188 L 21.917969 12.878906 C 24.765625 14.265625 27.941406 15 31.109375 15 L 33.667969 15 C 34.222656 15 34.667969 14.550781 34.667969 14 C 34.667969 13.449219 34.222656 13 33.667969 13 L 31.109375 13 C 28.246094 13 25.367188 12.335938 22.792969 11.078125 L 21.230469 10.316406 C 20.890625 10.152344 20.523438 10.09375 20.171875 10.125 Z M 16.90625 34.941406 C 19.339844 37.910156 22.503906 40 26 40 C 29.496094 40 32.65625 37.910156 35.089844 34.945313 L 44.511719 40.398438 C 47.898438 42.359375 50 46.007813 50 49.921875 L 50 57 C 50 57.550781 49.550781 58 49 58 L 3 58 C 2.449219 58 2 57.550781 2 57 L 2 49.917969 C 2 46.007813 4.105469 42.359375 7.488281 40.398438 Z M 18.0625 40 C 17.675781 39.976563 17.292969 40.183594 17.105469 40.550781 C 16.859375 41.046875 17.058594 41.648438 17.550781 41.894531 L 25.550781 45.894531 C 25.695313 45.964844 25.847656 46 26 46 C 26.152344 46 26.308594 45.964844 26.449219 45.894531 L 34.449219 41.894531 C 34.941406 41.648438 35.140625 41.046875 34.894531 40.550781 C 34.648438 40.058594 34.046875 39.859375 33.550781 40.105469 L 26 43.882813 L 18.449219 40.105469 C 18.324219 40.042969 18.195313 40.011719 18.0625 40 Z M 57 46 C 56.445313 46 56 46.449219 56 47 L 56 49 C 56 49.550781 56.445313 50 57 50 C 57.554688 50 58 49.550781 58 49 L 58 47 C 58 46.449219 57.554688 46 57 46 Z M 6 52 C 5.445313 52 5 52.449219 5 53 L 5 55 C 5 55.550781 5.445313 56 6 56 C 6.554688 56 7 55.550781 7 55 L 7 53 C 7 52.449219 6.554688 52 6 52 Z M 11 52 C 10.445313 52 10 52.449219 10 53 L 10 55 C 10 55.550781 10.445313 56 11 56 C 11.554688 56 12 55.550781 12 55 L 12 53 C 12 52.449219 11.554688 52 11 52 Z M 16 52 C 15.445313 52 15 52.449219 15 53 L 15 55 C 15 55.550781 15.445313 56 16 56 C 16.554688 56 17 55.550781 17 55 L 17 53 C 17 52.449219 16.554688 52 16 52 Z M 21 52 C 20.445313 52 20 52.449219 20 53 L 20 55 C 20 55.550781 20.445313 56 21 56 C 21.554688 56 22 55.550781 22 55 L 22 53 C 22 52.449219 21.554688 52 21 52 Z M 26 52 C 25.445313 52 25 52.449219 25 53 L 25 55 C 25 55.550781 25.445313 56 26 56 C 26.554688 56 27 55.550781 27 55 L 27 53 C 27 52.449219 26.554688 52 26 52 Z M 31 52 C 30.445313 52 30 52.449219 30 53 L 30 55 C 30 55.550781 30.445313 56 31 56 C 31.554688 56 32 55.550781 32 55 L 32 53 C 32 52.449219 31.554688 52 31 52 Z M 36 52 C 35.445313 52 35 52.449219 35 53 L 35 55 C 35 55.550781 35.445313 56 36 56 C 36.554688 56 37 55.550781 37 55 L 37 53 C 37 52.449219 36.554688 52 36 52 Z M 41 52 C 40.445313 52 40 52.449219 40 53 L 40 55 C 40 55.550781 40.445313 56 41 56 C 41.554688 56 42 55.550781 42 55 L 42 53 C 42 52.449219 41.554688 52 41 52 Z M 46 52 C 45.445313 52 45 52.449219 45 53 L 45 55 C 45 55.550781 45.445313 56 46 56 C 46.554688 56 47 55.550781 47 55 L 47 53 C 47 52.449219 46.554688 52 46 52 Z "></path>
				</g>
				</svg>
				</div>
				<select class="password-input"name="user_type">
						 <option value="" selected disabled hidden>Register as</option>
						 <option value="saab">Artist</option>
						 <option value="fiat" selected>Usert</option>
				 </select>
		</div>

		<div class="profile-content">
							<label class="profile-title">Gender</label>
							<div data-v-5830c558="" class="password-profile-icon" draggable="true" class="app-icon is-Dusk_Wired is-custom-size" style="width: 35px; height: 35px; fill:#666;"><!--?xml version="1.0"?-->
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
									<path d="M 40 0.0546875 C 38.897 0.0546875 38 0.9516875 38 2.0546875 L 38 6.0546875 C 38 7.1576875 38.897 8.0546875 40 8.0546875 L 44.554688 8.0546875 L 40.230469 12.298828 C 39.913469 12.609828 39.426016 12.671312 39.041016 12.445312 C 35.834016 10.573313 32.167172 9.7504531 28.451172 10.064453 C 19.906172 10.786453 12.869078 17.760109 12.080078 26.287109 C 11.270078 35.031109 16.811859 43.049562 25.255859 45.351562 C 25.693859 45.471562 26 45.864547 26 46.310547 L 26 50 L 19 50 C 18.448 50 18 50.448 18 51 L 18 57 C 18 57.552 18.448 58 19 58 L 26 58 L 26 63 C 26 63.552 26.448 64 27 64 L 33 64 C 33.552 64 34 63.552 34 63 L 34 58 L 41 58 C 41.552 58 42 57.552 42 57 L 42 51 C 42 50.448 41.552 50 41 50 L 34 50 L 34 46.310547 C 34 45.865547 34.304234 45.472516 34.740234 45.353516 C 42.547234 43.225516 48 36.09 48 28 C 48 24.855 47.168656 21.75325 45.597656 19.03125 C 45.373656 18.64325 45.433141 18.151937 45.744141 17.835938 L 50 13.501953 L 50 18.054688 C 50 19.157688 50.897 20.054688 52 20.054688 L 56 20.054688 C 57.103 20.054688 58 19.157688 58 18.054688 L 58 2.0546875 C 58 0.9516875 57.103 0.0546875 56 0.0546875 L 40 0.0546875 z M 40 2.0546875 L 56 2.0546875 L 56 18.054688 L 52 18.054688 L 52 11.054688 C 52 10.648687 51.754906 10.282906 51.378906 10.128906 C 51.003906 9.9769063 50.570156 10.064516 50.285156 10.353516 L 44.316406 16.435547 C 43.378406 17.390547 43.194234 18.86925 43.865234 20.03125 C 45.262234 22.45025 46 25.206 46 28 C 46 35.19 41.154797 41.531875 34.216797 43.421875 C 32.911797 43.777875 32 44.964547 32 46.310547 L 32 51 C 32 51.552 32.448 52 33 52 L 40 52 L 40 56 L 33 56 C 32.448 56 32 56.448 32 57 L 32 62 L 28 62 L 28 57 C 28 56.448 27.552 56 27 56 L 20 56 L 20 52 L 27 52 C 27.552 52 28 51.552 28 51 L 28 46.310547 C 28 44.965547 27.08725 43.777875 25.78125 43.421875 C 18.27625 41.375875 13.351312 34.247656 14.070312 26.472656 C 14.771313 18.896656 21.026141 12.699594 28.619141 12.058594 C 31.927141 11.779594 35.183203 12.510828 38.033203 14.173828 C 39.195203 14.853828 40.673813 14.667563 41.632812 13.726562 L 47.701172 7.7695312 C 47.991172 7.4845312 48.078781 7.0537344 47.925781 6.6777344 C 47.771781 6.3007344 47.406 6.0546875 47 6.0546875 L 40 6.0546875 L 40 2.0546875 z M 20.960938 4.6894531 C 20.832234 4.6716562 20.697953 4.6802969 20.564453 4.7167969 C 20.030453 4.8597969 19.714422 5.4074063 19.857422 5.9414062 L 20.375 7.8710938 C 20.495 8.3180937 20.897844 8.6132812 21.339844 8.6132812 C 21.424844 8.6132812 21.513609 8.602125 21.599609 8.578125 C 22.133609 8.435125 22.449641 7.8875156 22.306641 7.3535156 L 21.789062 5.4238281 C 21.681812 5.0240781 21.347047 4.7428437 20.960938 4.6894531 z M 15.876953 6.6875 C 15.748125 6.7036406 15.6195 6.7449531 15.5 6.8144531 C 15.021 7.0904531 14.858766 7.7016875 15.134766 8.1796875 L 16.134766 9.9121094 C 16.320766 10.233109 16.655953 10.412109 17.001953 10.412109 C 17.170953 10.412109 17.343 10.368344 17.5 10.277344 C 17.979 10.001344 18.141234 9.3901094 17.865234 8.9121094 L 16.865234 7.1796875 C 16.657484 6.8204375 16.263437 6.6390781 15.876953 6.6875 z M 11.857422 9.8574219 C 11.601672 9.8574219 11.345891 9.9548906 11.150391 10.150391 C 10.759391 10.541391 10.759391 11.173453 11.150391 11.564453 L 12.564453 12.978516 C 12.759453 13.173516 13.015484 13.271484 13.271484 13.271484 C 13.527484 13.271484 13.783516 13.173516 13.978516 12.978516 C 14.369516 12.587516 14.369516 11.955453 13.978516 11.564453 L 12.564453 10.150391 C 12.368953 9.9548906 12.113172 9.8574219 11.857422 9.8574219 z M 8.8027344 14.007812 C 8.415875 13.959766 8.0214531 14.1415 7.8144531 14.5 C 7.5384531 14.978 7.7016875 15.589234 8.1796875 15.865234 L 9.9121094 16.865234 C 10.069109 16.956234 10.240156 17 10.410156 17 C 10.756156 17 11.092344 16.821 11.277344 16.5 C 11.553344 16.022 11.390109 15.410766 10.912109 15.134766 L 9.1796875 14.134766 C 9.0599375 14.065516 8.9316875 14.023828 8.8027344 14.007812 z M 30 16 C 23.383 16 18 21.383 18 28 C 18 34.617 23.383 40 30 40 C 36.617 40 42 34.617 42 28 C 42 21.383 36.617 16 30 16 z M 30 18 C 35.514 18 40 22.486 40 28 C 40 33.514 35.514 38 30 38 C 24.486 38 20 33.514 20 28 C 20 22.486 24.486 18 30 18 z M 6.5429688 18.832031 C 6.1568594 18.885703 5.8220938 19.164703 5.7148438 19.564453 C 5.5718438 20.097453 5.887875 20.646063 6.421875 20.789062 L 8.3535156 21.308594 C 8.4405156 21.331594 8.5282812 21.34375 8.6132812 21.34375 C 9.0542813 21.34375 9.459125 21.048563 9.578125 20.601562 C 9.722125 20.067562 9.4050938 19.519 8.8710938 19.375 L 6.9394531 18.857422 C 6.8059531 18.821422 6.6716719 18.814141 6.5429688 18.832031 z"></path>
							</svg>
							</div>
							 <select class="password-input"name="gender">
										<option value="" selected disabled hidden>Gender</option>
										<option value="saab" selected>Male</option>
										<option value="fiat">Female</option>
								</select>

		</div>
		<div class="profile-content">
				 <label class="profile-title">Place Address</label>
			 <div data-v-5830c558="" class="password-profile-icon" draggable="true" class="app-icon is-ios7 is-custom-size" style="width: 35px; height: 35  px; fill:#666;"><!--?xml version="1.0" encoding="UTF-8"?-->
						 <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 50 50" version="1.1">
						 <g id="surface1">
						 <path style=" " d="M 35 2 C 32.03125 2 29.433594 3.730469 28.050781 6.265625 C 27.097656 6.113281 26.132813 6.019531 25.199219 6.007813 L 25.199219 6 L 25 6 C 13.398438 6 4 15.398438 4 27 C 4 38.601563 13.398438 48 25 48 C 36.601563 48 46 38.601563 46 27 C 46 22.511719 44.476563 18.117188 41.839844 14.5625 C 42.535156 12.96875 43 11.5 43 10.402344 C 43 5.800781 39.398438 2 35 2 Z M 35 4 C 38.300781 4 41 6.898438 41 10.402344 C 41 12.800781 37.800781 18.398438 35 22.5 C 32.199219 18.398438 29 12.800781 29 10.402344 C 29 6.898438 31.699219 4 35 4 Z M 35 6 C 32.800781 6 31 7.800781 31 10 C 31 12.199219 32.800781 14 35 14 C 37.199219 14 39 12.199219 39 10 C 39 7.800781 37.199219 6 35 6 Z M 35 8 C 36.117188 8 37 8.882813 37 10 C 37 11.117188 36.117188 12 35 12 C 33.882813 12 33 11.117188 33 10 C 33 8.882813 33.882813 8 35 8 Z M 26 8.046875 C 26.425781 8.066406 26.863281 8.105469 27.300781 8.15625 C 27.113281 8.875 27 9.625 27 10.402344 C 27 11.824219 27.769531 13.863281 28.828125 16 L 26 16 Z M 24 8.132813 L 24 16 L 17.71875 16 C 19.179688 11.746094 21.4375 8.757813 24 8.132813 Z M 19.398438 8.839844 C 17.824219 10.578125 16.519531 13.035156 15.585938 16 L 9.523438 16 C 11.917969 12.640625 15.363281 10.082031 19.398438 8.839844 Z M 40.855469 16.613281 C 42.734375 19.375 43.785156 22.632813 43.960938 26 L 35.992188 26 C 35.988281 25.542969 35.96875 25.101563 35.941406 24.648438 C 37.097656 22.980469 39.160156 19.890625 40.855469 16.613281 Z M 8.265625 18 L 15.03125 18 C 14.445313 20.433594 14.09375 23.128906 14.027344 26 L 6.050781 26 C 6.199219 23.117188 6.96875 20.402344 8.265625 18 Z M 17.109375 18 L 24 18 L 24 26 L 16.027344 26 C 16.101563 23.136719 16.476563 20.414063 17.109375 18 Z M 26 18 L 29.898438 18 C 31.339844 20.589844 32.875 22.929688 33.902344 24.421875 C 33.933594 24.9375 33.953125 25.46875 33.96875 26 L 26 26 Z M 6.050781 28 L 14.027344 28 C 14.09375 30.871094 14.445313 33.566406 15.03125 36 L 8.265625 36 C 6.96875 33.597656 6.199219 30.882813 6.050781 28 Z M 16.027344 28 L 24 28 L 24 36 L 17.109375 36 C 16.476563 33.585938 16.101563 30.863281 16.027344 28 Z M 26 28 L 33.972656 28 C 33.898438 30.863281 33.523438 33.585938 32.890625 36 L 26 36 Z M 35.972656 28 L 43.949219 28 C 43.800781 30.882813 43.03125 33.597656 41.734375 36 L 34.96875 36 C 35.554688 33.566406 35.90625 30.871094 35.972656 28 Z M 9.523438 38 L 15.585938 38 C 16.519531 40.964844 17.824219 43.421875 19.398438 45.160156 C 15.363281 43.917969 11.917969 41.359375 9.523438 38 Z M 17.71875 38 L 24 38 L 24 45.871094 C 21.441406 45.242188 19.179688 42.253906 17.71875 38 Z M 26 38 L 32.28125 38 C 30.820313 42.253906 28.558594 45.242188 26 45.871094 Z M 34.414063 38 L 40.476563 38 C 38.082031 41.359375 34.636719 43.917969 30.601563 45.160156 C 32.175781 43.421875 33.480469 40.964844 34.414063 38 Z "></path>
						 </g>
						 </svg>
				 </div>
				<input class="password-input" type="text" value="Phakant/Khachin"></input>
	 </div>
 </div>

 <div class="profile-nav">
		<div class="profile-back-icon-div" onclick="back_profile_from_edit()">
			<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
				 width="35px" height="35px" viewBox="0 0 24 24" enable-background="new 0 0 24 24" xml:space="preserve" fill="#fff">
			<path d="M15.41,16.59L10.83,12l4.58-4.59L14,6l-6,6l6,6L15.41,16.59z"/>
			<path fill="none" d="M0,0h24v24H0V0z"/>
				</svg>
		</div>
		<input class="profile-input-submit" type="submit" value="save"/>
	</div>
	</div>


	<!-- change password div-->
		<div class="profile-change-password-container" id="profile-change-password-container-id">
				<div class="profile-container-inner">
					<div class="profile-content">
							 <label class="profile-title">Existing Password</label>
							 <div data-v-5830c558="" class="password-profile-icon" draggable="true" class="app-icon is-Dusk_Wired is-custom-size" style="width: 32px; height: 32px; fill: rgb(0, 0, 0);"><!--?xml version="1.0" encoding="UTF-8"?-->
									<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 64 64" version="1.1">
									<g id="surface1">
									<path style=" " d="M 32 0 C 23.179688 0 16 7.179688 16 16 L 16 24.488281 C 11.691406 28.679688 9 34.53125 9 41 C 9 53.679688 19.320313 64 32 64 C 44.679688 64 55 53.679688 55 41 C 55 34.53125 52.308594 28.679688 48 24.488281 L 48 16 C 48 7.179688 40.820313 0 32 0 Z M 32 2 C 32.679688 2 33.34375 2.066406 34 2.160156 L 34 6.203125 C 33.351563 6.070313 32.683594 6 32 6 C 31.316406 6 30.648438 6.070313 30 6.203125 L 30 2.160156 C 30.65625 2.066406 31.320313 2 32 2 Z M 28 2.589844 L 28 6.84375 C 24.472656 8.390625 22 11.914063 22 16 L 22 20.292969 C 20.578125 20.980469 19.238281 21.8125 18 22.769531 L 18 16 C 18 9.671875 22.222656 4.316406 28 2.589844 Z M 36 2.589844 C 41.777344 4.316406 46 9.671875 46 16 L 46 22.769531 C 44.761719 21.808594 43.421875 20.980469 42 20.289063 L 42 16 C 42 11.910156 39.527344 8.390625 36 6.84375 Z M 32 8 C 36.410156 8 40 11.589844 40 16 L 40 19.4375 C 37.511719 18.507813 34.808594 18 32 18 C 29.191406 18 26.488281 18.507813 24 19.4375 L 24 16 C 24 11.589844 27.589844 8 32 8 Z M 32 20 C 34.828125 20 37.53125 20.558594 40 21.589844 C 40.691406 21.871094 41.351563 22.1875 42 22.539063 C 43.449219 23.328125 44.789063 24.28125 46 25.359375 C 46.71875 26 47.378906 26.691406 48 27.421875 C 51.109375 31.078125 53 35.820313 53 41 C 53 52.578125 43.578125 62 32 62 C 20.421875 62 11 52.578125 11 41 C 11 35.820313 12.890625 31.078125 16 27.421875 C 16.621094 26.691406 17.28125 26 18 25.359375 C 19.210938 24.28125 20.550781 23.328125 22 22.539063 C 22.648438 22.1875 23.308594 21.871094 24 21.589844 C 26.46875 20.558594 29.171875 20 32 20 Z M 32 24 C 22.625 24 15 31.625 15 41 C 15 42.105469 15.105469 43.207031 15.316406 44.277344 C 15.410156 44.753906 15.828125 45.085938 16.296875 45.085938 C 16.359375 45.085938 16.425781 45.078125 16.488281 45.066406 C 17.03125 44.960938 17.386719 44.4375 17.28125 43.894531 C 17.09375 42.949219 17 41.976563 17 41 C 17 32.730469 23.730469 26 32 26 C 33.460938 26 34.898438 26.210938 36.285156 26.621094 C 36.816406 26.78125 37.371094 26.476563 37.53125 25.949219 C 37.6875 25.417969 37.382813 24.859375 36.855469 24.703125 C 35.285156 24.234375 33.652344 24 32 24 Z M 40.632813 26.4375 C 40.246094 26.378906 39.847656 26.546875 39.625 26.894531 C 39.332031 27.363281 39.476563 27.980469 39.941406 28.273438 C 40.511719 28.628906 41.058594 29.023438 41.574219 29.453125 C 41.761719 29.609375 41.988281 29.683594 42.214844 29.683594 C 42.5 29.683594 42.785156 29.558594 42.984375 29.324219 C 43.335938 28.898438 43.277344 28.265625 42.855469 27.914063 C 42.269531 27.429688 41.648438 26.980469 41.003906 26.578125 C 40.886719 26.503906 40.761719 26.460938 40.632813 26.4375 Z M 45.15625 30.675781 C 44.90625 30.636719 44.636719 30.691406 44.410156 30.855469 C 43.964844 31.175781 43.863281 31.800781 44.183594 32.25 C 46.027344 34.808594 47 37.835938 47 41 C 47 47.867188 42.359375 53.84375 35.714844 55.535156 C 35.175781 55.671875 34.855469 56.21875 34.988281 56.753906 C 35.105469 57.207031 35.511719 57.503906 35.957031 57.503906 C 36.039063 57.503906 36.125 57.496094 36.203125 57.472656 C 43.738281 55.554688 49 48.78125 49 41 C 49 37.414063 47.898438 33.984375 45.808594 31.082031 C 45.648438 30.859375 45.410156 30.71875 45.15625 30.675781 Z M 32.082031 32 C 31.632813 31.996094 31.179688 32.039063 30.726563 32.132813 C 28.394531 32.617188 26.535156 34.527344 26.105469 36.886719 C 25.722656 38.96875 26.445313 41.054688 28 42.449219 L 28 46 C 28 48.207031 29.792969 50 32 50 C 34.207031 50 36 48.207031 36 46 L 36 42.449219 C 37.277344 41.308594 38 39.714844 38 38 C 38 36.1875 37.191406 34.488281 35.785156 33.34375 C 34.730469 32.484375 33.429688 32.019531 32.082031 32 Z M 32.011719 34 C 32.929688 34 33.796875 34.308594 34.523438 34.894531 C 35.460938 35.660156 36 36.789063 36 38 C 36 39.25 35.414063 40.410156 34.394531 41.179688 C 34.144531 41.367188 34 41.664063 34 41.980469 L 34 46 C 34 47.101563 33.101563 48 32 48 C 30.898438 48 30 47.101563 30 46 L 30 41.980469 C 30 41.664063 29.855469 41.367188 29.605469 41.179688 C 28.363281 40.242188 27.789063 38.773438 28.070313 37.246094 C 28.355469 35.679688 29.585938 34.414063 31.132813 34.09375 C 31.429688 34.03125 31.722656 34 32.011719 34 Z M 18.75 48.007813 C 18.625 48.023438 18.496094 48.066406 18.375 48.136719 L 16.644531 49.136719 C 16.164063 49.410156 16 50.023438 16.277344 50.5 C 16.464844 50.820313 16.796875 51 17.144531 51 C 17.3125 51 17.488281 50.957031 17.644531 50.863281 L 19.375 49.863281 C 19.855469 49.589844 20.019531 48.976563 19.742188 48.5 C 19.535156 48.140625 19.136719 47.960938 18.75 48.007813 Z M 21.914063 51.730469 C 21.660156 51.75 21.414063 51.871094 21.234375 52.082031 L 19.949219 53.613281 C 19.59375 54.035156 19.648438 54.667969 20.074219 55.023438 C 20.257813 55.179688 20.488281 55.257813 20.714844 55.257813 C 21 55.257813 21.285156 55.136719 21.484375 54.902344 L 22.765625 53.367188 C 23.121094 52.945313 23.070313 52.3125 22.644531 51.957031 C 22.433594 51.78125 22.167969 51.707031 21.914063 51.730469 Z M 26.160156 54.15625 C 25.773438 54.175781 25.414063 54.425781 25.273438 54.8125 L 24.589844 56.691406 C 24.402344 57.210938 24.667969 57.785156 25.1875 57.972656 C 25.300781 58.015625 25.414063 58.035156 25.53125 58.035156 C 25.9375 58.035156 26.320313 57.785156 26.46875 57.375 L 27.152344 55.496094 C 27.339844 54.976563 27.074219 54.40625 26.554688 54.21875 C 26.425781 54.167969 26.292969 54.148438 26.160156 54.15625 Z M 31 55 C 30.449219 55 30 55.449219 30 56 L 30 58 C 30 58.550781 30.449219 59 31 59 C 31.550781 59 32 58.550781 32 58 L 32 56 C 32 55.449219 31.550781 55 31 55 Z "></path>
									</g>
									</svg>
									</div>
							 <input class="password-input" type="password"></input>
					 </div>
				</div>
				<div  class="profile-container-inner password-extra">
					 <div class="profile-content">
								 <label class="profile-title">New Password</label>
								 <div data-v-5830c558="" draggable="true" class="password-profile-icon" class="app-icon is-dotty is-custom-size" style="width: 32px; height: 32px; fill: rgb(0, 0, 0);"><!--?xml version="1.0" encoding="UTF-8"?-->
									<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 80 80" version="1.1">
									<g id="surface1">
									<path style=" " d="M 40 8 C 29.519531 8 21 16.519531 21 27 L 21 31 L 14 31 C 12.355469 31 11 32.355469 11 34 L 11 62.417969 C 9.894531 62.859375 9 63.742188 9 65 L 9 68 C 9 69.644531 10.355469 71 12 71 L 68 71 C 69.644531 71 71 69.644531 71 68 L 71 65 C 71 63.742188 70.105469 62.859375 69 62.417969 L 69 34 C 69 32.355469 67.644531 31 66 31 L 59 31 L 59 27 C 59 16.519531 50.480469 8 40 8 Z M 40 10 C 49.402344 10 57 17.597656 57 27 L 57 31 L 23 31 L 23 27 C 23 17.597656 30.597656 10 40 10 Z M 14 33 L 66 33 C 66.566406 33 67 33.433594 67 34 L 67 64 L 68 64 C 68.566406 64 69 64.433594 69 65 L 69 68 C 69 68.566406 68.566406 69 68 69 L 12 69 C 11.433594 69 11 68.566406 11 68 L 11 65 C 11 64.433594 11.433594 64 12 64 L 13 64 L 13 34 C 13 33.433594 13.433594 33 14 33 Z M 16 36 C 15.449219 36 15 36.449219 15 37 C 15 37.550781 15.449219 38 16 38 C 16.550781 38 17 37.550781 17 37 C 17 36.449219 16.550781 36 16 36 Z M 20 36 C 19.449219 36 19 36.449219 19 37 C 19 37.550781 19.449219 38 20 38 C 20.550781 38 21 37.550781 21 37 C 21 36.449219 20.550781 36 20 36 Z M 24 36 C 23.449219 36 23 36.449219 23 37 C 23 37.550781 23.449219 38 24 38 C 24.550781 38 25 37.550781 25 37 C 25 36.449219 24.550781 36 24 36 Z M 28 36 C 27.449219 36 27 36.449219 27 37 C 27 37.550781 27.449219 38 28 38 C 28.550781 38 29 37.550781 29 37 C 29 36.449219 28.550781 36 28 36 Z M 32 36 C 31.449219 36 31 36.449219 31 37 C 31 37.550781 31.449219 38 32 38 C 32.550781 38 33 37.550781 33 37 C 33 36.449219 32.550781 36 32 36 Z M 36 36 C 35.449219 36 35 36.449219 35 37 C 35 37.550781 35.449219 38 36 38 C 36.550781 38 37 37.550781 37 37 C 37 36.449219 36.550781 36 36 36 Z M 40 36 C 39.449219 36 39 36.449219 39 37 C 39 37.550781 39.449219 38 40 38 C 40.550781 38 41 37.550781 41 37 C 41 36.449219 40.550781 36 40 36 Z M 44 36 C 43.449219 36 43 36.449219 43 37 C 43 37.550781 43.449219 38 44 38 C 44.550781 38 45 37.550781 45 37 C 45 36.449219 44.550781 36 44 36 Z M 48 36 C 47.449219 36 47 36.449219 47 37 C 47 37.550781 47.449219 38 48 38 C 48.550781 38 49 37.550781 49 37 C 49 36.449219 48.550781 36 48 36 Z M 52 36 C 51.449219 36 51 36.449219 51 37 C 51 37.550781 51.449219 38 52 38 C 52.550781 38 53 37.550781 53 37 C 53 36.449219 52.550781 36 52 36 Z M 56 36 C 55.449219 36 55 36.449219 55 37 C 55 37.550781 55.449219 38 56 38 C 56.550781 38 57 37.550781 57 37 C 57 36.449219 56.550781 36 56 36 Z M 60 36 C 59.449219 36 59 36.449219 59 37 C 59 37.550781 59.449219 38 60 38 C 60.550781 38 61 37.550781 61 37 C 61 36.449219 60.550781 36 60 36 Z M 64 36 C 63.449219 36 63 36.449219 63 37 C 63 37.550781 63.449219 38 64 38 C 64.550781 38 65 37.550781 65 37 C 65 36.449219 64.550781 36 64 36 Z M 24 48 C 22.894531 48 22 48.894531 22 50 C 22 51.105469 22.894531 52 24 52 C 25.105469 52 26 51.105469 26 50 C 26 48.894531 25.105469 48 24 48 Z M 32 48 C 30.894531 48 30 48.894531 30 50 C 30 51.105469 30.894531 52 32 52 C 33.105469 52 34 51.105469 34 50 C 34 48.894531 33.105469 48 32 48 Z M 40 48 C 38.894531 48 38 48.894531 38 50 C 38 51.105469 38.894531 52 40 52 C 41.105469 52 42 51.105469 42 50 C 42 48.894531 41.105469 48 40 48 Z M 48 48 C 46.894531 48 46 48.894531 46 50 C 46 51.105469 46.894531 52 48 52 C 49.105469 52 50 51.105469 50 50 C 50 48.894531 49.105469 48 48 48 Z M 56 48 C 54.894531 48 54 48.894531 54 50 C 54 51.105469 54.894531 52 56 52 C 57.105469 52 58 51.105469 58 50 C 58 48.894531 57.105469 48 56 48 Z M 16 62 C 15.449219 62 15 62.449219 15 63 C 15 63.550781 15.449219 64 16 64 C 16.550781 64 17 63.550781 17 63 C 17 62.449219 16.550781 62 16 62 Z M 20 62 C 19.449219 62 19 62.449219 19 63 C 19 63.550781 19.449219 64 20 64 C 20.550781 64 21 63.550781 21 63 C 21 62.449219 20.550781 62 20 62 Z M 24 62 C 23.449219 62 23 62.449219 23 63 C 23 63.550781 23.449219 64 24 64 C 24.550781 64 25 63.550781 25 63 C 25 62.449219 24.550781 62 24 62 Z M 28 62 C 27.449219 62 27 62.449219 27 63 C 27 63.550781 27.449219 64 28 64 C 28.550781 64 29 63.550781 29 63 C 29 62.449219 28.550781 62 28 62 Z M 32 62 C 31.449219 62 31 62.449219 31 63 C 31 63.550781 31.449219 64 32 64 C 32.550781 64 33 63.550781 33 63 C 33 62.449219 32.550781 62 32 62 Z M 36 62 C 35.449219 62 35 62.449219 35 63 C 35 63.550781 35.449219 64 36 64 C 36.550781 64 37 63.550781 37 63 C 37 62.449219 36.550781 62 36 62 Z M 40 62 C 39.449219 62 39 62.449219 39 63 C 39 63.550781 39.449219 64 40 64 C 40.550781 64 41 63.550781 41 63 C 41 62.449219 40.550781 62 40 62 Z M 44 62 C 43.449219 62 43 62.449219 43 63 C 43 63.550781 43.449219 64 44 64 C 44.550781 64 45 63.550781 45 63 C 45 62.449219 44.550781 62 44 62 Z M 48 62 C 47.449219 62 47 62.449219 47 63 C 47 63.550781 47.449219 64 48 64 C 48.550781 64 49 63.550781 49 63 C 49 62.449219 48.550781 62 48 62 Z M 52 62 C 51.449219 62 51 62.449219 51 63 C 51 63.550781 51.449219 64 52 64 C 52.550781 64 53 63.550781 53 63 C 53 62.449219 52.550781 62 52 62 Z M 56 62 C 55.449219 62 55 62.449219 55 63 C 55 63.550781 55.449219 64 56 64 C 56.550781 64 57 63.550781 57 63 C 57 62.449219 56.550781 62 56 62 Z M 60 62 C 59.449219 62 59 62.449219 59 63 C 59 63.550781 59.449219 64 60 64 C 60.550781 64 61 63.550781 61 63 C 61 62.449219 60.550781 62 60 62 Z M 64 62 C 63.449219 62 63 62.449219 63 63 C 63 63.550781 63.449219 64 64 64 C 64.550781 64 65 63.550781 65 63 C 65 62.449219 64.550781 62 64 62 Z "></path>
									</g>
									</svg>
									</div>
									 <input class="password-input" type="password"></input>
					 </div>
					 <div class="profile-content">
							<label class="profile-title">Retype New Password</label>
							<div data-v-5830c558="" draggable="true" class="password-profile-icon" class="app-icon is-dotty is-custom-size" style="width: 32px; height: 32px; fill: rgb(0, 0, 0);"><!--?xml version="1.0" encoding="UTF-8"?-->
								<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 80 80" version="1.1">
								<g id="surface1">
								<path style=" " d="M 40 8 C 29.519531 8 21 16.519531 21 27 L 21 31 L 14 31 C 12.355469 31 11 32.355469 11 34 L 11 62.417969 C 9.894531 62.859375 9 63.742188 9 65 L 9 68 C 9 69.644531 10.355469 71 12 71 L 68 71 C 69.644531 71 71 69.644531 71 68 L 71 65 C 71 63.742188 70.105469 62.859375 69 62.417969 L 69 34 C 69 32.355469 67.644531 31 66 31 L 59 31 L 59 27 C 59 16.519531 50.480469 8 40 8 Z M 40 10 C 49.402344 10 57 17.597656 57 27 L 57 31 L 23 31 L 23 27 C 23 17.597656 30.597656 10 40 10 Z M 14 33 L 66 33 C 66.566406 33 67 33.433594 67 34 L 67 64 L 68 64 C 68.566406 64 69 64.433594 69 65 L 69 68 C 69 68.566406 68.566406 69 68 69 L 12 69 C 11.433594 69 11 68.566406 11 68 L 11 65 C 11 64.433594 11.433594 64 12 64 L 13 64 L 13 34 C 13 33.433594 13.433594 33 14 33 Z M 16 36 C 15.449219 36 15 36.449219 15 37 C 15 37.550781 15.449219 38 16 38 C 16.550781 38 17 37.550781 17 37 C 17 36.449219 16.550781 36 16 36 Z M 20 36 C 19.449219 36 19 36.449219 19 37 C 19 37.550781 19.449219 38 20 38 C 20.550781 38 21 37.550781 21 37 C 21 36.449219 20.550781 36 20 36 Z M 24 36 C 23.449219 36 23 36.449219 23 37 C 23 37.550781 23.449219 38 24 38 C 24.550781 38 25 37.550781 25 37 C 25 36.449219 24.550781 36 24 36 Z M 28 36 C 27.449219 36 27 36.449219 27 37 C 27 37.550781 27.449219 38 28 38 C 28.550781 38 29 37.550781 29 37 C 29 36.449219 28.550781 36 28 36 Z M 32 36 C 31.449219 36 31 36.449219 31 37 C 31 37.550781 31.449219 38 32 38 C 32.550781 38 33 37.550781 33 37 C 33 36.449219 32.550781 36 32 36 Z M 36 36 C 35.449219 36 35 36.449219 35 37 C 35 37.550781 35.449219 38 36 38 C 36.550781 38 37 37.550781 37 37 C 37 36.449219 36.550781 36 36 36 Z M 40 36 C 39.449219 36 39 36.449219 39 37 C 39 37.550781 39.449219 38 40 38 C 40.550781 38 41 37.550781 41 37 C 41 36.449219 40.550781 36 40 36 Z M 44 36 C 43.449219 36 43 36.449219 43 37 C 43 37.550781 43.449219 38 44 38 C 44.550781 38 45 37.550781 45 37 C 45 36.449219 44.550781 36 44 36 Z M 48 36 C 47.449219 36 47 36.449219 47 37 C 47 37.550781 47.449219 38 48 38 C 48.550781 38 49 37.550781 49 37 C 49 36.449219 48.550781 36 48 36 Z M 52 36 C 51.449219 36 51 36.449219 51 37 C 51 37.550781 51.449219 38 52 38 C 52.550781 38 53 37.550781 53 37 C 53 36.449219 52.550781 36 52 36 Z M 56 36 C 55.449219 36 55 36.449219 55 37 C 55 37.550781 55.449219 38 56 38 C 56.550781 38 57 37.550781 57 37 C 57 36.449219 56.550781 36 56 36 Z M 60 36 C 59.449219 36 59 36.449219 59 37 C 59 37.550781 59.449219 38 60 38 C 60.550781 38 61 37.550781 61 37 C 61 36.449219 60.550781 36 60 36 Z M 64 36 C 63.449219 36 63 36.449219 63 37 C 63 37.550781 63.449219 38 64 38 C 64.550781 38 65 37.550781 65 37 C 65 36.449219 64.550781 36 64 36 Z M 24 48 C 22.894531 48 22 48.894531 22 50 C 22 51.105469 22.894531 52 24 52 C 25.105469 52 26 51.105469 26 50 C 26 48.894531 25.105469 48 24 48 Z M 32 48 C 30.894531 48 30 48.894531 30 50 C 30 51.105469 30.894531 52 32 52 C 33.105469 52 34 51.105469 34 50 C 34 48.894531 33.105469 48 32 48 Z M 40 48 C 38.894531 48 38 48.894531 38 50 C 38 51.105469 38.894531 52 40 52 C 41.105469 52 42 51.105469 42 50 C 42 48.894531 41.105469 48 40 48 Z M 48 48 C 46.894531 48 46 48.894531 46 50 C 46 51.105469 46.894531 52 48 52 C 49.105469 52 50 51.105469 50 50 C 50 48.894531 49.105469 48 48 48 Z M 56 48 C 54.894531 48 54 48.894531 54 50 C 54 51.105469 54.894531 52 56 52 C 57.105469 52 58 51.105469 58 50 C 58 48.894531 57.105469 48 56 48 Z M 16 62 C 15.449219 62 15 62.449219 15 63 C 15 63.550781 15.449219 64 16 64 C 16.550781 64 17 63.550781 17 63 C 17 62.449219 16.550781 62 16 62 Z M 20 62 C 19.449219 62 19 62.449219 19 63 C 19 63.550781 19.449219 64 20 64 C 20.550781 64 21 63.550781 21 63 C 21 62.449219 20.550781 62 20 62 Z M 24 62 C 23.449219 62 23 62.449219 23 63 C 23 63.550781 23.449219 64 24 64 C 24.550781 64 25 63.550781 25 63 C 25 62.449219 24.550781 62 24 62 Z M 28 62 C 27.449219 62 27 62.449219 27 63 C 27 63.550781 27.449219 64 28 64 C 28.550781 64 29 63.550781 29 63 C 29 62.449219 28.550781 62 28 62 Z M 32 62 C 31.449219 62 31 62.449219 31 63 C 31 63.550781 31.449219 64 32 64 C 32.550781 64 33 63.550781 33 63 C 33 62.449219 32.550781 62 32 62 Z M 36 62 C 35.449219 62 35 62.449219 35 63 C 35 63.550781 35.449219 64 36 64 C 36.550781 64 37 63.550781 37 63 C 37 62.449219 36.550781 62 36 62 Z M 40 62 C 39.449219 62 39 62.449219 39 63 C 39 63.550781 39.449219 64 40 64 C 40.550781 64 41 63.550781 41 63 C 41 62.449219 40.550781 62 40 62 Z M 44 62 C 43.449219 62 43 62.449219 43 63 C 43 63.550781 43.449219 64 44 64 C 44.550781 64 45 63.550781 45 63 C 45 62.449219 44.550781 62 44 62 Z M 48 62 C 47.449219 62 47 62.449219 47 63 C 47 63.550781 47.449219 64 48 64 C 48.550781 64 49 63.550781 49 63 C 49 62.449219 48.550781 62 48 62 Z M 52 62 C 51.449219 62 51 62.449219 51 63 C 51 63.550781 51.449219 64 52 64 C 52.550781 64 53 63.550781 53 63 C 53 62.449219 52.550781 62 52 62 Z M 56 62 C 55.449219 62 55 62.449219 55 63 C 55 63.550781 55.449219 64 56 64 C 56.550781 64 57 63.550781 57 63 C 57 62.449219 56.550781 62 56 62 Z M 60 62 C 59.449219 62 59 62.449219 59 63 C 59 63.550781 59.449219 64 60 64 C 60.550781 64 61 63.550781 61 63 C 61 62.449219 60.550781 62 60 62 Z M 64 62 C 63.449219 62 63 62.449219 63 63 C 63 63.550781 63.449219 64 64 64 C 64.550781 64 65 63.550781 65 63 C 65 62.449219 64.550781 62 64 62 Z "></path>
								</g>
								</svg>
								</div>
							 <input class="password-input" type="password"></input>
					 </div>
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



					<label class="password-label">To change the current user's password,enter the new password in both field! </label>
	 </div>


</div>
</div>
</div>
</div>


	 








		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/bootstrap/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/js/skel.min.js"></script>
			<script src="${pageContext.request.contextPath}/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/js/kaung.js"></script>
		 <script src="${pageContext.request.contextPath}/js/texteditor.js"></script>
			<script type="text/javascript" src="${pageContext.request.contextPath}/js/hla.js"></script>

	</body>
</html>
    