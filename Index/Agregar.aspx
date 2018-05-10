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
    <script src=scripts/jquery-3.2.1.js"></script>
    <appSettings>
        <add key="ValidationSettings:UnobtrusiveValidationMode" value="None" />
    </appSettings>
</head>
<body>
	<form id="form1" runat="server">
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

	<div id="formularioTratamiento" class="centrar">
             <asp:Label ID="Label1" runat="server" Text="Label">Estimado Administrador por favor captura los datos del tratamiento nuevo</asp:Label>
			<br><br>

			<input required class="inputTratamiento" type="text" placeholder="Nombre del tratamiento" name="txtNombre" id="txtNombre"><br><br>
			<input required style="" class="inputTratamiento" type="text" placeholder="Descripcion" name="txtDescripcion" id="txtDescipcion"><br><br>
			<select required style="width: 550px;" class="inputTratamiento" name="tipo" id="tipo">
				<option value="">--Tipo de tratamiento--</option>
				<option value="masaje">Masaje</option>
				<option value="corporal">Corporal</option>
				<option value="facial">Facial</option>
				<option value="depilacion">Depilacion</option>
				<option value="maniypedi">Manicure y Pedicure</option>
			</select><br><br>
			<input class="inputTratamiento" type="text" placeholder="Zonas" name="zonas" id="zonas"><br><br>
			<select required style="width: 550px;" class="inputTratamiento" name="presion" id="presion">
				<option value="">--Presion Ejercida--</option>
				<option value="fuerte">Fuerte</option>
				<option value="media">Media</option>
				<option value="suave">Suave</option>
			</select><br />
             <br />
             <asp:Label ID="Label2" runat="server" Text="Tratamiento"></asp:Label>
             <br />
             <br />
            <asp:TextBox ID="txtTratamiento" runat="server" Height="56px" Width="535px"></asp:TextBox>
             <br />
             <br />
             <asp:Label ID="Label3" runat="server" Text="Precio"></asp:Label>
             <br>
			<br />
            <asp:TextBox ID="txtPrecio" runat="server" Height="56px" Width="535px"></asp:TextBox>
            <br/>
            <span style="color:red">
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Precio fuera de rango" ControlToValidate="txtPrecio" MinimumValue="300" MaximumValue="6000" ></asp:RangeValidator>
            </span>
             <br><br>

	

	         <asp:Button ID="btnEnviar" CssClass="boton" runat="server" Text="Enviar datos" OnClick="btnEnviar_Click" />

		

	         <asp:Label ID="lblRespuesta" runat="server" Text="Label"></asp:Label>

		

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
			&nbsp;<img src="imagenes/logo.png" alt="" style="width: 90%"></div>
	</div>
    </form>
</body>
</html>
