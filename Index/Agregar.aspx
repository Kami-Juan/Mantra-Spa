<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agregar.aspx.cs" Inherits="Index.Agregar" %>

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
				<li> <a href="TratamientosAdmin.aspx">TRATAMIENTOS</a>	</li>
				<li> <a href="Membresia.aspx">MEMBRESIA</a>	</li>
				<li> <a href="Promociones.aspx">PROMOCIONES</a>	</li>
				<li> <a href="Citas.aspx">CITAS </a>	</li>
				<li><a class="reservaLetra" href="" style="color: red;"></i> ¡SALIR DE SESION!</a></li>
			</ul>
		</div>
	</div>

	<div id="formularioTratamiento" class="centrar">
		
			<p>Estimado Administrador por favor captura los datos del tratamiento nuevo</p><br><br>

			<input required class="inputTratamiento" type="text" placeholder="Nombre del tratamiento" name="nombre"><br><br>
			<input required style="" class="inputTratamiento" type="text" placeholder="Descripcion" name="descripcion"><br><br>
			<select required style="width: 550px;" class="inputTratamiento" name="tipo" id="">
				<option value="">--Tipo de tratamiento--</option>
				<option value="masaje">Masaje</option>
				<option value="corporal">Corporal</option>
				<option value="facial">Facial</option>
				<option value="depilacion">Depilacion</option>
				<option value="maniypedi">Manicure y Pedicure</option>
			</select><br><br>
			<input class="inputTratamiento" type="text" placeholder="Zonas" name="zonas"><br><br>
			<select required style="width: 550px;" class="inputTratamiento" name="presion" id="">
				<option value="">--Presion Ejercida--</option>
				<option value="fuerte">Fuerte</option>
				<option value="media">Media</option>
				<option value="suave">Suave</option>
			</select><br><br>
			<input required class="inputTratamiento" type="text" placeholder="Duracion en minutos o cantidad de sesiones" name="duracion"><br><br>
			<input required class="inputTratamiento" type="text" placeholder="Precio $$" name="precio"><br><br>

			<button class="boton">Enviar datos</button>

		

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
