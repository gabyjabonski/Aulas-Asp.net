<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="Aula2505.Views.Categorias.Lista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Lista de Categorias</h1>
    <h3>Localizar categoria por id</h3>
    <asp:TextBox ID="txtPesquisa" runat="server"></asp:TextBox>
    <asp:Button ID="bttBuscar" class="btn btn-primary" runat="server" Text="Buscar" OnClick="bttBuscar_Click" />
    <br />
    <br />
    <asp:GridView ID="gvCategorias" runat="server" OnRowDeleting="gvCategorias_RowDeleting">
        <Columns>

            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="bttEditar" class="btn btn-default" runat="server" Text="Editar" CommandName="Edit" />
                    <asp:Button ID="bttExcluir" class="btn btn-default" runat="server" Text="Excluir" CommandName="Delete" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

    </asp:GridView>
    <br />
    <div class="row">
        <asp:Button ID="bttCadastrar" class="btn btn-success" runat="server" Text="Cadastrar nova categoria " />
    </div>
    
</asp:Content>
