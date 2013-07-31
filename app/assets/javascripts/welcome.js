$(".myBox").click(function(){
     window.location=$(this).find("a").attr("href");
     return false;
});

$(".welcome").mouseenter(function(){
  $(".welcome").fadeTo("fast",1);
});

$(".welcome").mouseleave(function(){
  $(".welcome").fadeTo("fast",.8);
});


// change welcome to body to do for all pages
$(document).ready(function() {

$('.welcome').css('display', 'none');

$('.welcome').fadeIn(500);



$('.link').click(function(event) {

event.preventDefault();

newLocation = this.href;

$('.welcome').fadeOut(1000, newpage);

});



function newpage() {

window.location = newLocation;

}

});
