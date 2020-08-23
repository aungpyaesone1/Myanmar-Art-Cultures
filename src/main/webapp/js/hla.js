
$(document).ready(function(){

	  /*loading icon */
	  $(window).load(function() {
			// Animate loader off screen
			$(".loader").fadeOut("slow");;
		});

	  /* art container part loading icon function */
	  var auto_refresh = setInterval(
			  function ()
			  {
				
				  $('#load_art_paint_container').load('art #art_paint_post_container').fadeIn("slow");
				  $('#load_art_carving_container').load('art #art_carving_post_container').fadeIn("slow");
			}, 30000); // autorefresh the content of the div after
			             //every 10000 milliseconds(10sec)
	  
	  var auto_refresh = setInterval(
			  function ()
			  {
				
				  $('#load_culture_container').load('culture_page #culture_container_post').fadeIn("slow");
	
			}, 3000); 
	  
	  
	  var auto_refresh = setInterval(
			  function ()
			  {
				
				  $('#play-auction-other-item-div').load('auction_check #play-auction-refresh-label').fadeIn("slow");
				  $('#auction_winner_announce').load('auction_check #auction_winner_announce_refresh').fadeIn("slow");
				  $('#auction_winner_announce1').load('auction #auction_winner_announce_refresh1').fadeIn("slow");
	
			}, 1000); 

  $("#alert_container").fadeTo(1000, 500).slideUp(500, function(){
    $("#alert_container").slideUp(500);
});

  // toggle acc setting icon start

    $('.acc_setting_icon').click( function(e) {

        e.preventDefault(); // stops link from making page jump to the top
        e.stopPropagation(); // when you click the button, it stops the page from seeing it as clicking the body too
        $('.acc_setting_content').toggle();

    });

    $('.acc_setting_icon').click( function(e) {

        e.stopPropagation(); // when you click within the content area, it stops the page from seeing it as clicking the body too

    });

    $('.ph_size_acc_setting_btn').click( function(e) {

        e.preventDefault(); // stops link from making page jump to the top
        e.stopPropagation(); // when you click the button, it stops the page from seeing it as clicking the body too
        $('.ph_size_acc_setting_content').toggle();

    });

    $('.ph_size_acc_setting_btn').click( function(e) {

        e.stopPropagation(); // when you click within the content area, it stops the page from seeing it as clicking the body too

    });



    $('body').click( function() {

        $('.acc_setting_content').hide();
        $('.ph_size_acc_setting_content').hide();
    });

//toggle acc setting icon end


// $(".acc_setting_icon").click(function () {
//         $(".acc_setting_content").toggle("slide",{direction: "right"},500);
//         $(document.body).mousedown(function(event) {
//             var target = $(event.target);
//             if (!target.parents().andSelf().is('.acc_setting_content')) { // Clicked outside
//                 $('.acc_setting_content').hide('slide', {direction: 'right'}, 500);
//             }
//         });
//     });


           // $(".acc_setting_icon").click(function(){
           //     $(".acc_setting_content").toggleClass("visible");
           //
           //     });
           //   $(".ph_size_acc_setting_btn").click(function(){
           //
           //     $(".ph_size_acc_setting_content").toggleClass("visible");
           //   });
           //
           //   $(document.body).mousedown(function(event) {
           //       var target = $(event.target);
           //       if (!target.parents().andSelf().is('.acc_setting_icon')) { // Clicked outside
           //           $('.acc_setting_content').hide('slide', {direction: 'right'}, 500);
           //       }
           //   });

       // $(".acc_setting_icon").mouseup(function (e){
       //
       //  	var container = $(".acc_setting_content");
       //
       //  	if (!container.is(e.target) && container.has(e.target).length === 0){
       //
       //  		container.fadeIn();
       //
       //  	}
       //  });



    /* window resize and panel visible or hidden*/
        $(window).on('resize', function() {
        mainWidth = $(window).width();
          if (mainWidth > 720 && $("#navPanel").hasClass("visible")){
            $("#navPanel").removeClass("visible");
            $('body').removeClass("hide_body_overflow");

            document.getElementById("hamburger").style.visibility = "hidden";
          }else if (mainWidth < 720 && $("#navPanel").hasClass("visible")) {
            document.getElementById("hamburger").style.visibility = "hidden";
          }
          else {
            document.getElementById("hamburger").style.visibility = "visible";

          }
          if (mainWidth > 720 && $(".acc_setting_content").hasClass("visible")){
              $(".acc_setting_content").removeClass = ("visible");
          }
        });

        /* hamburger btn click function*/
    $("#hamburger").click(function(){
      $("#navPanel").addClass("visible");
      document.getElementById("hamburger").style.visibility = "hidden";
       $('body').addClass("hide_body_overflow");
    });

    $(".close_nav").click(function(){
      $("#navPanel").removeClass("visible");
      document.getElementById("hamburger").style.visibility = "visible";
      $('body').removeClass("hide_body_overflow");
    });



    /*on scroll and come up nav bar*/
    window.onscroll = function() {returnToTop()};
    function returnToTop() {
      if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50){

      }else {

      }
    }
      window.onscroll = function() {scrollFunction()};

      function scrollFunction() {
          if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        	  /*return to top btn fade in and out */
              if(document.body.scrollTop > 500 || document.documentElement.scrollTop > 500){
           	  $("#return-to-top").fadeIn(300);
              }else if (document.body.scrollTop < 500 || document.documentElement.scrollTop < 500) {
                 $('#return-to-top').fadeOut(300);
              }
              document.getElementById("header").style.background ="rgba(12, 43, 93, 0.5)";
              document.getElementById("ph_size_nav").style.backgroundColor = "rgba(12, 43, 93, 0.5)";
              $("#bg .inner li a").addClass("scrolled");
              document.getElementById("nav4").style.color = "#fff";
      		  document.getElementById("nav3").style.color = "#fff";
              document.getElementById("nav2").style.color = "#fff";
      		  document.getElementById("nav1").style.color = "#fff";
      		  document.getElementById("nav1").style.borderBottomColor = "#fff";
              document.getElementById("nav2").style.borderBottomColor = "#fff";
              document.getElementById("nav3").style.borderBottomColor = "#fff";
              document.getElementById("nav4").style.borderBottomColor = "#fff";
              document.getElementById("title").style.color = "#fff";
              document.getElementById("ph_size_title").style.color = "#fff";
              document.getElementById("acc_setting_icon").style.fill = "#fff";
              document.getElementById("ph_size_acc_setting_icon").style.fill = "#fff";
              document.getElementById("ph_size_menu_icon").style.fill = "#fff";
             
              document.getElementById("login_icon").style.fill = "#fff";
              document.getElementById("ph_size_login_icon").style.fill = "#fff";
             
             
            

          } else {
              $('#bg .inner li a').removeClass("scrolled");
               document.getElementById("header").style.background = "transparent";
               document.getElementById("ph_size_nav").style.background ="transparent";
               document.getElementById("nav4").style.color = "#0c2b5d";
      		   document.getElementById("nav3").style.color = "#0c2b5d";
      		   document.getElementById("nav2").style.color = "#0c2b5d";
      		   document.getElementById("nav1").style.color = "#0c2b5d";
      		    document.getElementById("nav1").style.borderBottomColor = "#0c2b5d";
                document.getElementById("nav2").style.borderBottomColor = "#0c2b5d";
                document.getElementById("nav3").style.borderBottomColor = "#0c2b5d";
                document.getElementById("nav4").style.borderBottomColor = "#0c2b5d";
                document.getElementById("acc_setting_icon").style.fill = "#0c2b5d";
                document.getElementById("ph_size_acc_setting_icon").style.fill = "#0c2b5d";
         	   document.getElementById("title").style.color = "#0c2b5d";
         	   document.getElementById("ph_size_title").style.color = "#0c2b5d";
         	  document.getElementById("ph_size_menu_icon").style.fill = "#0c2b5d";    
               document.getElementById("login_icon").style.fill = "#0c2b5d";
               document.getElementById("ph_size_login_icon").style.fill = "#0c2b5d";             
                        
              
           
            }
      }
      /*return to top when click*/
      $('#return-to-top').click(function() {      // When arrow is clicked
          $('body,html').animate({
              scrollTop : 0                       // Scroll to top of body
          }, 500);
      });


    $(".signin").click(function(){
        window.location.href="login.jsp";
      });

    $(".ph_size_login_btn").click(function(){
        window.location.href="login.jsp";
      });

      /*back to top function */
      $(".go_up").click(function(){
        $('body,html').animate({
        scrollTop : 0                       // Scroll to top of body
    }, 400);

      });

      var selected_index = document.getElementById("id_of_select_postOrEvent");

      selected_index.addEventListener('change', function() {
        var index = selected_index.selectedIndex;
        if (index === 1){
        	$(".post_default_container").addClass("hide");
            $(".post_container").addClass("visible");
            $(".event_container").removeClass("visible");
            $(".aution_container").removeClass("visible");
        }
         else if (index === 2) {
        	 $(".post_default_container").addClass("hide");
             $(".post_container").removeClass("visible");
             $(".event_container").addClass("visible");
             $(".aution_container").removeClass("visible");
         }else if (index === 3){
        	 $(".post_default_container").addClass("hide");
             $(".post_container").removeClass("visible");
             $(".event_container").removeClass("visible");
             $(".aution_container").addClass("visible");
         }
      });

});

