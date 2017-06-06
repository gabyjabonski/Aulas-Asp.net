<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastraLivro.aspx.cs" Inherits="Biblioteca.Views.Livro.CadastraLivro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>

            <legend>Cadastro de Livro</legend>

            <div class="form-group">
                <label for="lblLivro" class="col-lg-2 control-label">Nome do livro: </label>
                <asp:TextBox ID="txtNome" class="form-control" placeholder="Nome" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="txtNome"
                    ErrorMessage="O nome do livro é obrigatório."
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="lblAutor" class="col-lg-2 control-label">Autor:</label>
                <asp:TextBox ID="txtAutor" class="form-control" placeholder="Autor" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="txtAutor"
                    ErrorMessage="O nome do autor é obrigatório."
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="lblEditora" class="col-lg-2 control-label">Editora:</label>
                <asp:TextBox ID="txtEditora" class="form-control" placeholder="Editora" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ControlToValidate="txtEditora"
                    ErrorMessage="O nome da editora é obrigatório."
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <div class="col-lg-10 col-lg-offset-2">
                    <asp:Button ID="btnCancelar" class="btn btn-default" runat="server" Text="Cancelar"/>
                    <asp:Button ID="btnSalvar" class="btn btn-primary" runat="server" Text="Salvar"/>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
