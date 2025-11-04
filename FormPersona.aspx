<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FormPersona.aspx.vb" Inherits="Persona.FormPersona" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:hiddenField ID="editando" runat="server" />
    <style>
    .btn-hover-move {
        transition: transform 0.5s ease, box-shadow 0.2s;
    }
    .btn-hover-move:hover{
        transform: translate(-4px) scale(1.04);
        box-shadow: 0 6px 18px rgb(0 148 255);
    }
</style>

<div class="container d-flex flex-column mb-3 gap-2">

    <%--Nombre--%>
     <asp:TextBox ID="Txt_nombre" Placeholder="Nombre" runat="server"></asp:TextBox>
     <asp:requiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="Txt_nombre" ErrorMessage="El Nombre es obligatorio."
         ValidationGroup="vsPersona" CssClass="alert alert-warning" Display="Dynamic"></asp:requiredFieldValidator>

     <%--Apellido--%>
  <asp:TextBox ID="Txt_apellido" Placeholder="Apellido" runat="server"></asp:TextBox>
       <asp:requiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="Txt_apellido" ErrorMessage="El Apellido es obligatorio."
       ValidationGroup="vsPersona" CssClass="alert alert-warning" Display="Dynamic"></asp:requiredFieldValidator>

     <%--Edad--%>
  <asp:TextBox ID="Txt_edad" Placeholder="Edad" runat="server"></asp:TextBox>
       <asp:requiredFieldValidator ID="rfvEdad" runat="server" ControlToValidate="Txt_edad" ErrorMessage="La Edad es obligatorio."
       ValidationGroup="vsPersona" CssClass="alert alert-warning" Display="Dynamic"></asp:requiredFieldValidator>

  <asp:Button ID="Btn_guardar" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="Btn_guardar_Click" ValidationGroup="vsPersona"/>
  <asp:Button ID="BtnActualizar" CssClass="btn btn-success" Visible="false" runat="server" Text="Actualizar" OnClick="BtnActualizar_Click" />
  <asp:Button ID="BtnCancelar" CssClass="btn btn-danger btn-hover-move" Visible="false" runat="server" Text="Cancelar" OnClick="BtnCancelar_Click" />
  <asp:Label ID="lbl_mensaje" runat="server" Text=""></asp:Label>


  <asp:validationSummary ID="vsPersona" runat="server" showsummary="true" CssClass="alert alert-warning" HeaderText="Corrige los siguientes errores:" />
    </div>
    
    <asp:GridView ID="Gv_personas" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource" Width="742px" OnRowDeleting="Gv_personas_RowDeleting" OnRowEditing="Gv_personas_RowEditing" OnRowCancelingEdit="Gv_personas_RowCancelingEdit" OnRowUpdating="Gv_personas_RowUpdating" OnSelectedIndexChanged="Gv_personas_SelectedIndexChanged" >
        <Columns>
            <asp:CommandField ShowSelectButton="true"  ControlStyle-CssClass="btn btn-success" />
            <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="btn btn-primary" />
            <asp:BoundField DataField="ID" HeaderText="ID" Visible="false" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
            <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
            <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger"  />
           
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:II-46ConnectionString %>" ProviderName="<%$ ConnectionStrings:II-46ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Personas]"></asp:SqlDataSource>
</asp:Content>
