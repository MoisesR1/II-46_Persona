<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.vb" Inherits="Persona.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <p>Your app description page.</p>
        <p>Use this area to provide additional information.</p>

        <asp:TextBox ID="Txt_nombre" runat="server"></asp:TextBox>
         <asp:TextBox ID="Txt_apellido" runat="server"></asp:TextBox>
         <asp:TextBox ID="Txt_edad" runat="server"></asp:TextBox>
        <asp:Button ID="Btn_guardar" runat="server" Text="Guardar" OnClick="Btn_guardar_Click" />
        <asp:Label ID="lbl_mensaje" runat="server" Text="Label"></asp:Label>

    </main>
</asp:Content>
