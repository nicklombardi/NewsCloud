var map;
var heatmap;
var mapData;

window.onload = function(){

  var myLatlng = new google.maps.LatLng(24.84414,6.115662);

  var myOptions = {
    zoom: 2,
    center: myLatlng,
    mapTypeId: google.maps.MapTypeId.ROADMAP,
    disableDefaultUI: true,
    scrollwheel: false,
    draggable: false,
    navigationControl: false,
    mapTypeControl: false,
    scaleControl: false,
    disableDoubleClickZoom: true
  };

  map = new google.maps.Map(document.getElementById("heatmapArea"), myOptions);

  heatmap = new HeatmapOverlay(map, {"radius":10, "visible":true, "opacity":60});

  $.ajax({
    type: "GET",
    dataType: "json",
    url: "/home/geocoded_points",
    success: function(data){
      mapData={
        max: 46,
        data: data
      };
    }
  });

  google.maps.event.addListenerOnce(map, "idle", function(){
    heatmap.setDataSet(mapData);
  });
};