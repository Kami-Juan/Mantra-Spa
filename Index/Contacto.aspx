<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="Index.Contacto" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Contacto Mantra Spa</title>
	<meta name="description" content="Ponte en contacto con nosotros">
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
		<p style="font-size: 52px;">Contáctanos</p>
		<hr style="height: 0px; width: 100px; margin: auto; border: 1px red solid;"><br>
		<p class="verde" style="font-size: 20px;">SI TIENES ALGUNA DUDA, COMENTARIO O SUGERENCIA, NO DUDES EN LLAMARNOS, VISITARNOS O ESCRIBIRNOS. ¡QUEREMOS ESCUCHARTE!</p>
	</div><br>
        <asp:Label ID="lblRespuesta" runat="server" Font-Size="XX-Large" ForeColor="#33CC33"></asp:Label>
        <br>
    <div >

    </div>
	<div id="email">
		<div id="emailForm"  class="centrar">
			<!--<form action="enviarEmail.php" method="POST">-->
			<div class="colum">
				<label for="">Nombre</label><br>
				<asp:TextBox ID="txtNombre" runat="server" CssClass="inputs" Width="360px" OnTextChanged="txtNombre_TextChanged"></asp:TextBox>
                <br>
                    <asp:RequiredFieldValidator CssClass="errorMensaje" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="El Nombre es requerido"></asp:RequiredFieldValidator>
                <br>
				<label for="">Telefono</label><br>
				<asp:TextBox ID="TextBox1" runat="server" CssClass="inputs" Width="360px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator CssClass="errorMensaje" ID="RegularExpressionValidator1" runat="server" ErrorMessage="El teléfono debe ser una cifra numérica" ControlToValidate="TextBox1" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
			</div>
			<div class="colum2">
				<label for="">Correo</label><br>
				<asp:TextBox ID="txtEmail" CssClass="inputs" runat="server" Width="360px" OnTextChanged="txtEmail_TextChanged"></asp:TextBox>
                <br>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" CssClass="errorMensaje" ErrorMessage="El email debe ser válido." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
                <br>
				<label for="">Sexo</label><br>
				<select name="sexo" id="selector">
					<option value="hombre">Hombre</option>
					<option value="mujer">Mujer</option>
				</select>
			</div>
			<div id="mensaje">
				<label for="">Mensaje<br />
                <asp:TextBox ID="txtMensaje" runat="server" TextMode="MultiLine" Columns="135" Rows="10" OnTextChanged="txtMensaje_TextChanged"></asp:TextBox>
                </label><br>

				&nbsp;</div>
            
            <br>
			<!--</form>-->
		    <asp:Button 
                CssClass="boton2" 
                ID="btnContactar" 
                runat="server" 
                Text="Guardar" 
                OnClick="btnContactar_Click"
                 />
		</div>
		
	</div>
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.491552155988!2d-89.66899778569216!3d21.01300899369309!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8f5674891d01315f%3A0xcb8ba96b39a6031c!2sInstituto+Tecnol%C3%B3gico+de+M%C3%A9rida%2C+Campus+Poniente!5e0!3m2!1ses!2smx!4v1512962838700" style="width: 100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

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
    </form>
</body>
</html>
