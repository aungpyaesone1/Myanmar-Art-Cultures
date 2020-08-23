$(document).ready(function(){
    // ===== Scroll to Top ====
    $(window).scroll(function() {
    if ($(this).scrollTop() >= 10) {
            // If page is scrolled more than 50px
            document.getElementById("return-to-top").style.display = "block";
        $('#return-to-top').fadeIn(200);    // Fade in the arrow
    } else {
        $('#return-to-top').fadeOut(200);   // Else fade out the arrow
        document.getElementById("return-to-top").style.display = "none";
    }
});
$('#return-to-top').click(function() {      // When arrow is clicked
    $('body,html').animate({
        scrollTop : 0                       // Scroll to top of body
    }, 500);
});
});
