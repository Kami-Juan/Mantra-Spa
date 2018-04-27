<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agendar.aspx.cs" Inherits="Index.Agendar" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Agendar Cita</title>
	<meta name="description" content="Agendar en MantaSpa">
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
		<p style="font-size: 52px;">AGENDA UNA CITA</p>
		<hr style="height: 0px; width: 100px; margin: auto; border: 1px red solid;"><br>
		<p class="verde" style="font-size: 20px;">Solo tienes que llenar el formulario con tus datos y el horario que prefieras, nosotros te agendaremos</p>
	</div><br><br>

	<div id="email2">

		
		<div id="emailForm"  class="centrar">
			
				 <div id="seleccion" style="text-align: center">
				 	<label for="">Seleccionaste el tratamiento:</label><br>
				 	<input class="verde" style="text-align: center; font-size: 30px" value="Recupera nombre aqui" name="nombre" readonly >
				 </div>
			<div class="colum">

				
				<label for="">Nombre</label><br>
				<asp:TextBox ID="txtNombre" runat="server" Height="23px" Width="359px"></asp:TextBox> <br />
                <span style="color:red">
                 <asp:RequiredFieldValidator ID="VCRDato1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Ingrese su nombre"></asp:RequiredFieldValidator>
                </span>
                    <br><br>
				<label for="">Telefono</label><br>
                
				<asp:TextBox ID="txtTelefono" runat="server" Height="23px" Width="359px"></asp:TextBox><br />
                <span style="color:red">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Número no valido" ControlToValidate="txtTelefono" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
			    </span>
                    </div>
			<div class="colum2">
				<label for="">Correo</label><br>
				<asp:TextBox ID="txtEmail" runat="server" Height="23px" Width="359px"></asp:TextBox><br />
                <span style="color:red">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Correo no valido" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 </span>
                    <br> <br>
				<label for="">Sexo</label><br>
				<select name="sexo" id="selector">
					<option value="hombre">Hombre</option>
					<option value="mujer">Mujer</option>
				</select>
			</div>
			<div id="mensaje" style="padding-top: 30px;">
				<label for="">HORARIO</label><br>
				<p style="font-size: 10px;">En caso de variaciones en el horario comunicate con nosotros</p><br>
				<select name="horario" id="selector" class="" required>
					<option value="temprano">Matutino 8:00 am</option>
					<option value="tarde">Vespertino 13:00 pm</option>
					<option value="noche">Nocturno 8:00 pm</option>
				</select>
			</div><br>
			<button class="boton2">Enviar</button>
			
		</div>
		
	</div>
	
    </form>
	
</body>
</html>

