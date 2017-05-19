<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calculadora2.aspx.cs" Inherits="Aula1805.Calculadora2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
            <div class="row">
                <h1>RESULTADOS</h1>
            <div>
                <asp:TextBox ID="txtValor1" runat="server"></asp:TextBox>
                <asp:Label ID="lblMais" runat="server" Text="+"></asp:Label>
                <asp:TextBox ID="txtValor2" runat="server"></asp:TextBox>
                <asp:Label ID="lblIgual1" runat="server" Text="="></asp:Label>
                <asp:TextBox ID="txtResp1" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:TextBox ID="txtValor3" runat="server"></asp:TextBox>
                <asp:Label ID="lblMenos" runat="server" Text="-"></asp:Label>
                <asp:TextBox ID="txtValor4" runat="server"></asp:TextBox>
                <asp:Label ID="lblIgual2" runat="server" Text="="></asp:Label>
                <asp:TextBox ID="txtResp2" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:TextBox ID="txtValor5" runat="server"></asp:TextBox>
                <asp:Label ID="lblVezes" runat="server" Text="*"></asp:Label>
                <asp:TextBox ID="txtValor6" runat="server"></asp:TextBox>
                <asp:Label ID="lblIgual3" runat="server" Text="="></asp:Label>
                <asp:TextBox ID="txtResp3" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:TextBox ID="txtValor7" runat="server"></asp:TextBox>
                <asp:Label ID="lblDivisao" runat="server" Text="/"></asp:Label>
                <asp:TextBox ID="txtValor8" runat="server"></asp:TextBox>
                <asp:Label ID="lblIgual4" runat="server" Text="="></asp:Label>
                <asp:TextBox ID="txtResp4" runat="server"></asp:TextBox>
            </div>
            </div>
        </div>
</asp:Content>
