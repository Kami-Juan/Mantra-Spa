<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Index.Index" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Mantra Spa</title>
	<meta name="description" content="Mantra Spa en Mérida Yucatan, visitanos para una experencia relajante. El mejor spa a tu disposición.">
	<link rel="stylesheet" href="style.css">
	<script defer src="iconos/fontawesome-all.js"></script>
	<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
	
</head>
<body>
	<div id="headMenu" class="centrar">
		<div id="imglogo">
		    <a href="Index.aspx"><img src="imagenes/logo.png" alt="Mantra Spa" width="250"></a>
		</div>
		<div id="menu">
			<ul>
				<li> <a href="Tratamientos.aspx">TRATAMIENTOS</a>	</li>
				<li> <a href="Membresia.aspx">MEMBRESIA</a>	</li>
				<li> <a href="Promociones.aspx">PROMOCIONES</a>	</li>
				<li> <a href="Contacto.aspx">NOSOTROS </a>	</li>
				<li><a class="reservaLetra" href="Tratamientos.aspx"> <i class="fa fa-calendar" aria-hidden="true"></i> ¡RESERVAR CITA!</a><br>
				</li>
			</ul>
			
		</div>

	</div>
	<div class="slideshow-container">

		<div class="mySlides fade">
	   	    
	    	<img src="imagenes/img1.jpg" style="width:100%;" >
	  	</div>

	 	<div class="mySlides fade">
	    	
	    	<img src="imagenes/img2.jpg" style="width:100%">
	    	
	 	</div>

	  	<div class="mySlides fade">
	   		
	    	<img src="imagenes/img3.jpg" style="width:100%" >
		    
	  	</div>

	  	
	</div>
	
	<script>
		var slideIndex = 0;
		showSlides();

	function showSlides() {

	    var i;
	    var slides = document.getElementsByClassName("mySlides");
	    for (i = 0; i < slides.length; i++) {
	       
	        slides[i].style.display = "none"; 
   		 }
    	slideIndex++;
    
	    if (slideIndex > slides.length) {slideIndex = 1} 
	    slides[slideIndex-1].style.display = "block"; 
	    setTimeout(showSlides, 3000); 
	}
	</script>
	
	<div id="razones" class="centrar">
		<p style="text-align: center; font-size: 50px;">¿Por qué visitarnos?</p>

		<div class="div1 razon">
			
			<i  class="fas fa-users fa-lg"></i><br><br>
			<p style="text-align: center; font-size: 20px;" >¿QUE OFRECEMOS?</p><br>
			<p  class="negro">Mantra Spa te brinda una experiencia de relajación total en un ambiente de lujo y elegancia. Cuidamos cada detalle para llegar a cada uno de tus sentidos y ofrecerte todo el confort que te mereces.</p>
		</div>
		<div class="div1 razon">
			<i class="fas fa-smile fa-lg"></i><br><br>
			<p style="text-align: center; font-size: 20px;">SERVICIOS PARA CADA NECESIDAD</p><br>
			<p class="negro">Déjanos consentirte con los tratamientos y productos correctivos, relajantes y revitalizantes que tenemos para ti. Dentro de nuestro menú encontrarás un servicio ideal para tus necesidades: apapacharte, cuidarte, activarte, desestresarte o simplemente vivir un momento Mantra</p>	
		</div>
		<div class="div1 razon">			<i class="fas fa-star fa-lg"></i><br><br>
			<p style="text-align: center; font-size: 20px;">ATENCIÓN Y SERVICIO DE CALIDAD</p><br>
			<p class="negro">Manos prodigiosas, vanguardia en productos y tratamientos, tecnología, compromiso y cumplimiento con cada uno de nuestros clientes. Sorpréndete con nuestras instalaciones, la calidad en los productos y servicios así como la atención que recibirás desde que ingreses a la atmósfera de Mantra Spa.</p>
		</div>
	</div>
	<div id="circulos">
		<div class="centrar"><div class="circulo" id="circulo1">

		</div>
		<div class="circulo" id="circulo2"></div>
		<div class="circulo" id="circulo3"></div></div>
		
	</div>
	<div id="opciones">
		<div class="centrar">
			<div class="div1 razon">
				<p>MEMBRESIA <span style="color: #18E9BA">MANTRA SPA</span></p><br>
				<p class="negro">Ser miembro Mantra Spa, es saber apreciar las cosas buenas de la vida: el bienestar, la relajación, la comodidad, pero sobre todo, los beneficios. Obtén tu membresía y accede a las ofertas exclusivas para ti.</p><br>
				<a href="membresia.php">Hacerme miembro</a>
			</div>
			<div class="div1 razon">
				<p>CITAS Y RESERVACIONES <span style="color: #18E9BA">MANTRA SPA</span></p><br>
				<p class="negro">Comunícate con nosotros vía telefónica o haz tu cita desde nuestra página web. Te invitamos a disfrutar de una experiencia inolvidable de relajación que te hará sentir completamente renovado.</p><br>
				<a href="tratamientos.php">Hacer una cita</a>
			</div>
			<div class="div1 razon">
				<p>PROMOCIONES <span style="color: #18E9BA">MANTRA SPA</span></p><br>
				<p class="negro">Descubre nuestras increibles promociones que haran que estancia con nosotros sea amable y placentera con tu bolsillo. Consulta nuestras promociones 2017</p><br>
				<a href="promociones.php">Ver promociones</a>
			</div>
		</div>
		
	</div>
	
	

<div id="footer">
		<div id="sucur"  class="footerDiv">
			<p><span style="color:#3F8180">SUCURSAL</span> </p>
			<p>Merida Yucatan</p>
			<p>Calle 19a #345 x8b y 12c Zapata Oriente</p>
			<p style="border-bottom: 1px black solid ">99-92-13-14-55</p>

		</div>
		<div id="horarios" class="footerDiv">
			<p> <span style="color: #3F8180">HORARIOS</span></p>
			<p>Lunes a Viernes</p>
			<p >8:00 am - 8:00 pm</p>

		</div> 
		<div id="social" class="footerDiv">
			<p> <span style="color: #3F8180">SIGUENOS </span></p>
			<br>
			<a style="text-decoration: none; color:black;" href=""><i class="fa fa-facebook""></i> Facebook</a>
			<a style="text-decoration: none; color:black;" href=""><i class="fa fa-twitter"></i>Twitter</a>
			<a style="text-decoration: none; color: black;" href=""><i class="fa fa-amazon"></i>Youtube</a>
		</div>
		<div id="logoFooter" >
			<img src="imagenes/logo.png" alt="" style="width: 90%">

		</div>
	</div>
</body>
</html>
