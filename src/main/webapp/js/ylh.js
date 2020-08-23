
// Set the date we're counting down to
var countDownDate = new Date("Jan 5, 2019 15:37:25").getTime();

// Update the count down every 1 second
var countdownfunction = setInterval(function() {

    // Get todays date and time
    var now = new Date().getTime();

    // Find the distance between now an the count down date
    var distance = countDownDate - now;

    // Time calculations for days, hours, minutes and seconds
    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

    // Output the result in an element with id="demo"
    document.getElementById("demo").innerHTML = days + "d " + hours + "h "
    + minutes + "m " + seconds + "s ";

    // If the count down is over, write some text
    if (distance < 0) {
        clearInterval(countdownfunction);
        document.getElementById("demo").innerHTML = "EXPIRED";
    }
}, 1000);



var carving = document.getElementById('art_carving');

carving.style.cursor = 'pointer';
carving.onclick = function(){
    document.getElementById("arts_sub_paint").style.color = "#666";
    document.getElementById("arts_sub_carving").style.color = "#4278b2";
    $(".paint").removeClass("visible");
    $(".paint").addClass("hide");
    $(".carving").removeClass("hide");
    $(".carving").addClass("visible");
};


var paint = document.getElementById('art_paint');

paint.style.cursor = 'pointer';
paint.onclick = function(){
    document.getElementById("arts_sub_paint").style.color = "#4278b2";
    document.getElementById("arts_sub_carving").style.color = "#666";

    $(".carving").removeClass("visible");
    $(".carving").addClass("hide");
    $(".paint").removeClass("hide");
    $(".paint").addClass("visible");

};

$('#artist_post_icon').click( function() {

    $('.arts_body').addClass("hide");
    $('.artist_post_upload_container').removeClass("hide");
    $('.artist_post_upload_container').addClass("visible");

});
