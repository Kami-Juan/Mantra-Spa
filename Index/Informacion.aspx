<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Informacion.aspx.cs" Inherits="Index.Información" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="style.css">
    <script src=scripts/jquery.js"></script>
    <appSettings>
        <add key="ValidationSettings:UnobtrusiveValidationMode" value="None" />
    </appSettings>
</head>
<body>
    <div class="contacto-respuesta">
        <asp:Label ID="lblNombre" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="lblTel" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="lblMensaje" runat="server" Text="Label"></asp:Label>
    </div>
</body>
</html>
