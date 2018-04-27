<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Citas.aspx.cs" Inherits="Index.Citas" %>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Citas Mantra Spa</title>
	<meta name="description" content="Citas Spa">
	<link rel="stylesheet" href="style.css">
	<script defer src="iconos/fontawesome-all.js"></script>
	<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
</head>
<script>
	function validar(url){
		var eliminar=confirm("¿Desea eliminar el elemento")
		if(eliminar==true){
			window.location=url;
		}
		else{
			return false;
		}
	}
</script>
<body>
	
	<div id="headMenu" class="centrar">
		<div id="imglogo">
			<a href="Index.aspx"><img src="imagenes/logo.png" alt="Mantra Spa" width="250"></a>
		</div>
		<div id="menu">
			<ul>
				<li> <a href="TratamientosAdmin.aspx">TRATAMIENTOS</a>	</li>
				<li> <a href="Membresia.aspx">MEMBRESIA</a>	</li>
				<li> <a href="Promociones.aspx">PROMOCIONES</a>	</li>
				<li> <a href="Citas.aspx">CITAS </a>	</li>
				<li><a class="reservaLetra" href="salida.aspx" style="color: red;"></i> ¡SALIR DE SESION!</a></li>
			</ul>
		</div>
	</div>

	<br>	

	<div id="contenedor">
		<div class="centrar" >
			<span class="verde">BIENVENIDO ADMINISTRADO AL PANEL DE CONTROL DE VISUALIZACION DE CITAS.</span>
		</div>
		<div id="circulos">
		<div class="centrar"><div class="circulo" id="circulo1">

		</div>
		<div class="circulo" id="circulo2"></div>
		<div class="circulo" id="circulo3"></div></div>
		
		</div>
		

		
		

		<div class="centrar">
			<a name="Masajes" id="a"></a>
			<p style="font-size: 25px;" class="verde titulos">
				Estas son las sitas actuales. Para marcar como realizada una cita, seleccione "lista".
			</p>
			
			<table width="700">

				<h3> Aqui muestra las citas recuperadas de la BD</h3>

			




		</table>
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
