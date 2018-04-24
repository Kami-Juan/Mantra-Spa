<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tratamientos.aspx.cs" Inherits="Tratamientos.Tratamientos" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Tratamientos Mantra Spa</title>
	<meta name="description" content="Tratamientos de Mantra Spa">
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

	<br>	

	<div id="contenedor">
		<div class="centrar" >
			<span class="verde">DESCUBRE LA VARIEDAD DE TRATAMIENTOS CORRECTIVOS, RELAJANTES Y REVITALIZANTES QUE TENEMOS PARA TI. NUESTROS SERVICIOS SE AJUSTAN NO SÓLO A TUS DESEOS Y NECESIDADES, SINO AL TIEMPO QUE TENGAS PARA SATISFACERLOS Y A LA CALIDAD DEL SERVICIO QUE ESPERAS.</span>
		</div>
		<div id="circulos">
		<div class="centrar"><div class="circulo" id="circulo1">

		</div>
		<div class="circulo" id="circulo2"></div>
		<div class="circulo" id="circulo3"></div></div>
		
		</div>
		

		<div id="menuTratamiento">
			<a href="#Masajes">Masajes <i class="fa fa-angle-down" aria-hidden="true"></i></a>
			<a href="#Corporales">Corporales <i class="fa fa-angle-down" aria-hidden="true"></i></a>
			<a href="#Facial">Faciales <i class="fa fa-angle-down" aria-hidden="true"></i></a>
			<a href="#Depilacion">Depilacion <i class="fa fa-angle-down" aria-hidden="true"></i></a>
			<a href="#ManiPedi">Mani y pedi <i class="fa fa-angle-down" aria-hidden="true"></i></a>
			
		</div><br>

		<div class="centrar">
			<a name="Masajes" id="a"></a>
			<p class="verde titulos">
				Masajes
			</p>
			
			<table width="700">

				

			</table>
			<a name="Corporales" id="a"></a>

			<p class="verde titulos">
				Corporales
			</p>
			
			<table width="700">

				<h3>AQUI RECUPERA DATOSD DE LA BD</h3>
                <h4>Y cada tratamiento tiene botones para agendar la cita como este que te llevan a un formulario para agendar</h4> <br />
                <a style="border-radius: 16px; text-decoration:none;" class="boton" href="Agendar.aspx">Agendar Cita</a><br><br>

			</table>

			<a name="Facial" id="a"></a>

			<p class="verde titulos">
				Facial
			</p>
			
			<table width="700">

				<h3>AQUI RECUPERA DATOSD DE LA BD</h3>

			</table>
			<a name="Depilacion" id="a"></a>

			<p class="verde titulos">
				Depilacion
			</p>
			
			<table width="700">

				<h3>AQUI RECUPERA DATOSD DE LA BD</h3>

			</table>
			<a name="ManiPedi" id="a"></a>

			<p class="verde titulos">
				Manicure y Pedicure
			</p>
			
			<table width="700">

				<h3>AQUI RECUPERA DATOSD DE LA BD</h3>

			</table>


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
