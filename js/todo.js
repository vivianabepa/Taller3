var canvas = document.getElementById("graphCanvas");
var context = canvas.getContext("2d");


function allowDrop(ev) {
    ev.preventDefault();
}

function drag(ev) {
    ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("text");
    context.fillStyle="#FFFFFF";
    context.fillRect(0,0,340,200); 
    context.drawImage(document.getElementById(data), 150, 75);

    if(data == "drag1"){
        $("#iconoActual").val("restaurantes");
    }
    if(data == "drag2"){
        $("#iconoActual").val("hoteles");
    }
    if(data == "drag3"){
        $("#iconoActual").val("cajeros");
    }

    iconoActual = $("#iconoActual").val();  

    console.log(iconoActual);

    $.ajax({
      type: "GET",
      url: "php/places.php",
      data: { iconoActual: iconoActual}
    }).done(function(){
      console.log("Solicitud enviada al API");
    }).success(function(result){
      var resultado = JSON.parse(result);

      var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 13,
        center: new google.maps.LatLng(3.382621, -76.541985),
        mapTypeId: google.maps.MapTypeId.ROADMAP
      });

      var infowindow = new google.maps.InfoWindow();
      var marker, i;

      
      for (i = 0; i < resultado.length; i++) {
        console.log(i);
        marker = new google.maps.Marker({
          position: new google.maps.LatLng(resultado[i][2], resultado[i][3]),
          map: map
        });

        google.maps.event.addListener(marker, 'click', (function(marker, i) {
          
          return function() {
            infowindow.setContent(resultado[i][2]);
            infowindow.open(map, marker);
          }          

        })(marker, i));
      }
    }).error(function(error){
      console.log("Error: "+error);
    })
}

