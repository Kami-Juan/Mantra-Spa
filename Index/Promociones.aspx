<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Promociones.aspx.cs" Inherits="Index.Promociones" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Promociones Mantra Spa</title>
	<meta name="description" content="Promos de Mantra Spa">
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
		<p style="font-size: 52px;">Promociones</p>
		<hr style="height: 0px; width: 100px; margin: auto; border: 1px red solid;"><br>
		<p class="verde" style="font-size: 16px;">DISFRUTA 
		DE NUESTRAS PROMOCIONES ESPECIALES PARA TI</p>
	</div><br>
	<div class="centrar">
		<iframe width="980" height="550" src="https://www.youtube.com/embed/QQpYMQ5Dx8s?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
	</div>
	
	<div id="promo" ><div id="marquesina">
				<marquee behavior="scroll" direction="left">!CONOCENOS Y HAZ DE TU DIA UNO INOLVIDALE¡ </marquee>
			</div>
		<div class="centrar">
			
			<div class="circulo" id="circuloPromo"></div>
			
			<div id="info1">
			<p style="font-size: 25px; color:#649005">Rejoice therapy: Mani + pedi</p>
			<p>
				Consiente a tus manos y pies con una renovadora exfoliación y envoltura, seguidas de un relajante masaje con piedras calientes para lucir de maravilla en los eventos de esta temporada.
			</p><br>
			<p>60 minutos</p>
			<p>$500</p>
			
			</div>
		</div>
		
	</div>
	<div id="promo2" ><div id="marquesina">
				<marquee behavior="scroll" direction="right"><p style="color:white;">¡APROVECHA NUESTRAS GRANDIOSAS PROMOCIONES DEL MOMENTO!</p></marquee>
			</div>
		<div class="centrar">
			
			
			<div id="info2">
			<p style="font-size: 25px; color:#649005;">Rejoice therapy: Mani + pedi</p>
			<p style="color : #E9DADA;">
				Consiente a tus manos y pies con una renovadora exfoliación y envoltura, seguidas de un relajante masaje con piedras calientes para lucir de maravilla en los eventos de esta temporada.
			</p><br>
			<p  style="color : #E9DADA;">50 minutos</p>
			<p  style="color : #E9DADA;">$650</p>
			
			</div><div class="circulo" id="circuloPromo2"></div>
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
