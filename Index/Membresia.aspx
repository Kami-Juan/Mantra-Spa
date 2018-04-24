<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Membresia.aspx.cs" Inherits="Index.Membresia" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Membresias MantraSpa</title>
	<meta name="description" content="Membresias MantraSpa">
	<link rel="stylesheet" href="style.css">
	<script defer src="iconos/fontawesome-all.js"></script>
	<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
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

	<div id="infoPromos" class="centrar">
		<p style="font-size: 52px;">Membresía</p>
		<hr style="height: 0px; width: 100px; margin: auto; border: 1px red solid;"><br>
		<p class="verde" style="font-size: 20px;">CUANDO NOS VISITES PRESENTA TU MEMBRESÍA Y HAZ VÁLIDAS LAS SIGUIENTES PROMOCIONES EXCLUSIVAS PARA TI:</p>
	</div>

	
	<div id="circulosMembre" class="centrar">
		<div class="circulo" id="circuloMembre1">
			<p style="font-size: 35px; color: white;">$100 de credito</p>
				
		</div>
		<div class="circulo" id="circuloMembre2">
			<p style="font-size: 35px; color: white;">%15 de descuento</p>
				
		</div>
		<div class="circulo" id="circuloMembre3">
			<p style="font-size: 35px; color: black;">Sesion anual gratis</p>
				
		</div>

	</div>
	<div id="reglas" class="centrar">
		<p style="font-size: 52px" class="verde">¿CÓMO FUNCIONA?</p>
	</div>	
	<div id="reglasUL" class="centrar">
		<ul><br>
			<li>Adquiere la membresía en cualquiera de nuestras sucursales y llévala contigo siempre.</li><br>
			<li>Por cada compra que realices, se abonará a tu cuenta el 5% del valor pagado en puntos.</li><br>
			<li>Cada punto abonado representa UN PESO.</li><br>
			<li>Puedes acumular tantos puntos (pesos) como desees y canjearlos por cualquier servicio. Es posible cubrir total o parcialmente el monto del servicio con los puntos acumulados y en dado caso, pagar un excedente.</li><br>
			<li>Es indispensable presentar la membresía y una identificación al momento de canjear los puntos.</li><br>
			<li>Los beneficios exclusivos de la membresía no aplican sobre otras promociones*.</li><br>
			<li>La membresía es personal e intransferible.</li><br>
 			<li>El canje de puntos sólo aplica para la compra de servicios, no de productos.</li>
		</ul>
	</div><br><br>
	<hr>
	<div class="centrar" style="text-align: center;"><iframe width="700" height="415" src="https://www.youtube.com/embed/ffKOsU6N868?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe></div>
	<hr>
	
		
	
	

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