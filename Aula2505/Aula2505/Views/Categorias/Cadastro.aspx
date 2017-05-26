<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Aula2505.Views.Categorias.Cadastro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Cadastro de categoria</h1>
    <br />
    <div class="row">
        <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>
        <br />
        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
    </div>
    <div class="row">
        <asp:Label ID="lblDescricao" runat="server" Text="Descrição"></asp:Label>
        <br />
        <asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox>
    </div>
    <div class="row">
        <asp:Label ID="lblAtivo" runat="server" Text="Ativo"></asp:Label>
        <asp:CheckBox ID="ckbAtivo" runat="server" />
    </div>
    <div class="row">
        <asp:Button ID="bttSalvar" runat="server" Text="Salvar" OnClick="bttSalvar_Click" />
        <asp:Button ID="bttCancelar" runat="server" Text="Cancelar" />
    </div>
    
    

</asp:Content>
