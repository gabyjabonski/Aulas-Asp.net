<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Aula1105.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Sobre</h2>
    <h3>Descrição da aplicação</h3>
    <p>Use this area to provide additional information.</p>

    <asp:Calendar ID="calDAtaInicio" runat="server"></asp:Calendar>
    <br />
    <asp:TextBox ID="txtData" runat="server"></asp:TextBox>
    <asp:Button ID="bttSalvar" Cssclass="btn btn-primary" runat="server" Text="Salvar" OnClick="bttSalvar_Click" />
</asp:Content>
