<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Index.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>LoginPanchito</title>
	<meta name="description" content="Login de admin" >
	<link rel="stylesheet" href="estilo.css">
	<link rel="stylesheet" href="style.css">
    <script src=scripts/jquery.js"></script>
    <appSettings>
        <add key="ValidationSettings:UnobtrusiveValidationMode" value="None" />
    </appSettings>
</head>
<body>
	<form id="form1" runat="server">
	<div id="contenedorX">
		<div id="titulo" >
			<h1>Bienvenido a Mantra Spa</h1>
		</div>
		<div id="imagenLog" >
			<div class="circulo" id="imagenLogin"></div>
		</div>
		<div id="ingreso">
			<br>
			<div id="error">
                <asp:Label ID="lblError" runat="server" CssClass="msgError"></asp:Label><br />   							 
			 </div>			
			<p style="text-align: center;">Introduce tu nombre de usuario y contraseña</p>
			<br>
			<div id="labelNinput">				
					<div id="divLabels">
						<label class="labels" for="">Nombre de usuario:</label> <br>
						<label class="labels" for="">Contraseña:</label>
					</div>
					<div id="divInputs">
			            <asp:TextBox ID="txtUsername" runat="server" CssClass="inputs"></asp:TextBox><br>
			            <asp:TextBox ID="txtPassword" runat="server" CssClass="inputs" TextMode="Password" ></asp:TextBox><br>
                        
                        <span style="color:red;font-weight:bold;"><asp:RequiredFieldValidator ID="VCRDato1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Ingrese el usuario"></asp:RequiredFieldValidator></span>
                        <br />
                        <span style="color:red;font-weight:bold;"><asp:RequiredFieldValidator ID="VCRDato2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Ingrese el password"></asp:RequiredFieldValidator></span><br />    
                        <asp:Button ID="btnLogin" runat="server" Text="Iniciar sesión" CssClass="boton" OnClick="btnLogin_Click" />
					</div>				
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
    </form>	
</body>
</html>