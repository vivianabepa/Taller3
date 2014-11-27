function iniciar () {
	var elemento=document.getElementById  ('lienzo');
	lienzo=elemento.getContext('2d');

	var imagen=new Image ();
	//imagen.src="http://i1291.photobucket.com/albums/b559/vivianabp/ATMIcon_zpsf57e870c.png";
	imagen.addEventListener("load", function() {

		lienzo.drawImage(imagen,0,0,256,256,50,50,256,256)
	},false);
}
	
window.addEventListener ("load", iniciar, false);



