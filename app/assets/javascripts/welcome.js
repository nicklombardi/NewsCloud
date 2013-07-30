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