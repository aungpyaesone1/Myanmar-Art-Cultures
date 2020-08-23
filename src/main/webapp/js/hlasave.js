$(document).ready(function(){


      $(".acc_setting_icon").click(function(){
          $(".acc_setting_content").toggleClass("visible");
        });
        $(".ph_size_acc_setting_btn").click(function(){
          $(".ph_size_acc_setting_content").toggleClass("visible");
        })
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
              document.getElementById("header").style.background ="rgba(12, 43, 93, 0.5)";
              document.getElementById("nav4").style.color = "#fff";
      				document.getElementById("nav3").style.color = "#fff";
              document.getElementById("nav2").style.color = "#fff";
      			  document.getElementById("nav1").style.color = "#fff";
      			  document.getElementById("title").style.color = "#fff";
              document.getElementById("login_icon").style.fill = "#fff";
              document.getElementById("acc_setting_icon").style.fill = "#fff";
              document.getElementById("ph_size_acc_setting_icon").style.fill = "#fff";
              document.getElementById("ph_size_nav").style.background ="rgba(12, 43, 93, 0.5)";
              document.getElementById("ph_size_menu_icon").style.fill = "#fff";
              document.getElementById("ph_size_title").style.color = "#fff";
              document.getElementById("ph_size_login_icon").style.fill = "#fff";
               $("#go_up").fadeIn(200);
               document.getElementById("nav1").style.borderBottomColor = "#fff";
               document.getElementById("nav2").style.borderBottomColor = "#fff";
               document.getElementById("nav3").style.borderBottomColor = "#fff";
               document.getElementById("nav4").style.borderBottomColor = "#fff";
               $('#bg .inner li a').addClass("scrolled");
               /*return to top btn fade in and out */
               if(document.body.scrollTop > 500 || document.documentElement.scrollTop > 500){
                   $('#return-to-top').fadeIn(300);
               }else if (document.body.scrollTop < 500 || document.documentElement.scrollTop < 500) {
                  $('#return-to-top').fadeOut(300);
               }


          } else {
              $('#bg .inner li a').removeClass("scrolled");
               document.getElementById("header").style.background = "transparent";
               document.getElementById("nav4").style.color = "#0c2b5d";
      				 document.getElementById("nav3").style.color = "#0c2b5d";
      				 document.getElementById("nav2").style.color = "#0c2b5d";
      				 document.getElementById("nav1").style.color = "#0c2b5d";
         			 document.getElementById("title").style.color = "#0c2b5d";
               document.getElementById("login_icon").style.fill = "#0c2b5d";
               document.getElementById("acc_setting_icon").style.fill = "#0c2b5d";
               document.getElementById("ph_size_acc_setting_icon").style.fill = "#0c2b5d";
               document.getElementById("ph_size_nav").style.background ="transparent";
               document.getElementById("ph_size_menu_icon").style.fill = "#0c2b5d";
               document.getElementById("ph_size_title").style.color = "#0c2b5d";
               document.getElementById("ph_size_login_icon").style.fill = "#0c2b5d";
               $("#go_up").fadeOut(200);
               document.getElementById("nav1").style.borderBottomColor = "#0c2b5d";
               document.getElementById("nav2").style.borderBottomColor = "#0c2b5d";
               document.getElementById("nav3").style.borderBottomColor = "#0c2b5d";
               document.getElementById("nav4").style.borderBottomColor = "#0c2b5d";

            }
      }
      /*return to top when click*/
      $('#return-to-top').click(function() {      // When arrow is clicked
          $('body,html').animate({
              scrollTop : 0                       // Scroll to top of body
          }, 500);
      });


    $(".signin").click(function(){
        window.location.href="widgets/login.jsp";
      });

    $(".ph_size_login_btn").click(function(){
        window.location.href="widgets/login.jsp";
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
          $(".event_container").removeClass("visible");
          $(".post_container").addClass("visible");
        }
         else if (index === 2) {
           $(".post_default_container").addClass("hide");
           $(".post_container").removeClass("visible");
           $(".event_container").addClass("visible");
         }
      });




});
