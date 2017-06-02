<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Aula2505.Views.Categorias.Cadastro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Cadastro de categoria</h1>
    <br />

    <div class="form-group">
        <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>
        <br />
        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="lblDescricao" runat="server" Text="Descrição"></asp:Label>
        <br />
        <asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox>
    </div>
    <div class="checkbox">
        <asp:Label ID="lblAtivo" runat="server" Text="Ativo"></asp:Label>
        <asp:CheckBox ID="ckbAtivo" runat="server" />
    </div>

        <asp:Button ID="bttSalvar" class="btn btn-success" runat="server" Text="Salvar" OnClick="bttSalvar_Click" />
        <asp:Button ID="bttCancelar" class="btn btn-default" runat="server" Text="Cancelar" />

    <br />
    <br />

       <asp:Button ID="bttListaCategorias" class="btn btn-primary" runat="server" Text="Voltar à lista de categorias" />

    
    

</asp:Content>
