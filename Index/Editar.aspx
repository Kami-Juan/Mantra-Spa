<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editar.aspx.cs" Inherits="Index.Editar" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Editar</title>
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
				<li><a class="reservaLetra" href="salida.aspx" style="color: red;"></i> ¡SALIR DE SESION!</a></li>
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
		<div id="agregarNuevo" class="centrar">
			<a href="TratamientosAdmin.aspx">Regresar a tratamientos</a>
		</div>

		<div class="centrar">
			<a name="Masajes" id="a"></a>
			<p class="verde titulos">
				Editar Tratamiento
			</p>
			
			<table width="700">

				

				<div id="formularioEditar">
				
					<table border="1">
						<tr>
							<td class="label" width="100">Nombre:</td>
							<td width="768">
								<input required type="text" size="105" name="nombre" value="recupera de BD">
							</td>
						</tr>
						<tr>
							<td class="label">Descripcion:</td>
							<td>
								<input required type="text" size="105" name="descripcion" value="recupera de BD">
							</td>
						</tr>
						
						<tr>
							<td class="label">Tipo:</td>
							<td><select required name="tipo" id="">
								<option value="">Escoge una opcion</option>
								<option value="masaje"
								
								>Facial</option>
								<option value="facial"
								
								>Depilacion</option>
								<option value="depilacion"
								
								 >Depilacion</option>
								 <option value="maniypedi"
								
								 >Manicure y Pedicure</option>
							</select></td>
						</tr>
						
						<tr>
							<td class="label">Zonas:</td>
							<td>
								<input required type="text" size="105" name="zonas" value="Recupera de DB">
							</td>
						</tr>
						<tr>
							<td class="label">Presion:</td>
							<td><select required name="presion" id="">
								<option value="">Escoge una opcion</option>
								<option value="fuerte"
								>Fuerte</option>
								<option value="media"
								
								>Media</option>
								<option value="suave"
								
								>Suave</option>
								
							</select></td>
						</tr>
						<tr>
							<td class="label">Duracion:</td>
							<td>
								<input required type="text" size="105" name="duracion" value="Recupera de BD">
							</td>
						</tr>
						<tr>
							<td class="label">Precio:</td>
							<td>
								<input required type="text" size="105" name="precio" value="Recupera de BD">
							</td>
						</tr>
						<tr>
							<td></td>
							<td id="celdaBotones" height="60">
								<input name="id" type="hidden" value="Recupera de BD">
								<button class="boton">Actualizar</button>
							</td>
						</tr>
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