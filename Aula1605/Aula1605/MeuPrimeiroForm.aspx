<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MeuPrimeiroForm.aspx.cs" Inherits="Aula1605.MeuPrimeiroForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Meu primeiro form!! #mentira</h1>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">  <%--serve para não atualizar a página quando atualiza um campo--%>
        <ContentTemplate>  <%--conteúdo da página--%>
             <div class="row"> 
                <asp:Label ID="lblNome" class="col-sm-2 control-label" runat="server" Text="Nome"></asp:Label>
                <asp:TextBox ID="txtNome" class="form-control" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator ID="reqNome" runat="server"      
                    ErrorMessage="Campo nome é obrigatório" 
                    ControlToValidate="txtNome"></asp:RequiredFieldValidator>  <%--valida o campo para ser obrigatório--%>
            </div>
            <div class="row">
                <asp:Label ID="lblDescricao" class="col-sm-2 control-label" runat="server" Text="Descrição"></asp:Label>
                <asp:TextBox ID="txtArea" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>
            <br />
            <div class="col-sm-offset-2 col-sm-10">
                <div class="row">
                    <asp:CheckBox ID="checkAtivo" runat="server" />
                    <asp:Label ID="lblAtivo" class="checkbox-inline" runat="server" Text="Ativo"></asp:Label>
                </div>
            </div>
            <br />
            <br />
             <div class="col-sm-offset-2 col-sm-10">
                <asp:Button ID="bttSalvar" class="btn btn-info" runat="server" Text="Salvar" OnClick="bttSalvar_Click" />
                <asp:Button ID="bttCancelar" class="btn btn-danger" runat="server" Text="Cancelar" OnClick="bttCancelar_Click" CausesValidation="false"/> 
                 <%--CALSESVALIDATION=FALSE : RETIRA O BOTÃO DA VALIDAÇÃO--%>
            </div>
         </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
