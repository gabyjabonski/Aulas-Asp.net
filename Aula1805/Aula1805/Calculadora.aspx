<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="Aula1805.Calculadora" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <div class="jumbotron">
        <h1>Calculadora</h1>
        <br />
         <div class="row">
             <asp:Label ID="lblValor1" runat="server" Text="Valor 1"></asp:Label>
             <br />
             <div>
                 <asp:TextBox ID="txtValor1" runat="server"></asp:TextBox>    
             </div>
         </div>
         <br />
         <div class="row">
             <asp:Label ID="lblValor2" runat="server" Text="Valor 2"></asp:Label>
             <br />
             <div>
                 <asp:TextBox ID="txtValor2" runat="server"></asp:TextBox>
             </div>
             <div>
                <asp:Button ID="bttMais" CssClass="btn btn-default" runat="server" Text="+" Width="85px" OnClick="bttMais_Click" />
                <asp:Button ID="bttIgual" CssClass="btn btn-primary" runat="server" Text="=" Width="85px" OnClick="bttIgual_Click" />
            </div>
         </div>
         <br />
         <div class="row">
             <asp:Label ID="lblResultado" runat="server" Text="Resultado"></asp:Label>
             <div>
                 <asp:TextBox ID="txtResult" runat="server"></asp:TextBox>
             </div>
         </div>
    </div>
            </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
