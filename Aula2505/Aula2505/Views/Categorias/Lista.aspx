<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="Aula2505.Views.Categorias.Lista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Lista de Categorias</h1>
    <h3>Localizar categoria por id</h3>
    <asp:TextBox ID="txtPesquisa" runat="server" OnTextChanged="txtPesquisa_TextChanged"></asp:TextBox>
    <br />
    <br />
    <asp:GridView ID="gvCategorias" runat="server" OnRowCommand="gvCategorias_RowCommand" OnRowCancelingEdit="gvCategorias_RowCancelingEdit" OnRowDeleting="gvCategorias_RowDeleting" OnRowEditing="gvCategorias_RowEditing" OnRowUpdating="gvCategorias_RowUpdating">
        <Columns>

            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:Button ID="bttSalvar" runat="server" Text="Salvar" CommandName="Update" />
                    <asp:Button ID="bttCancelar" runat="server" Text="Cancelar" CommandName="Cancel" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Button ID="bttEditar" runat="server" Text="Editar" CommandName="Edit" />
                    <asp:Button ID="bttExcluir" runat="server" Text="Excluir" CommandName="Delete" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

    </asp:GridView>
    <br />
    <div class="row">
        <asp:Button ID="bttCadastrar" class="btn btn-primary" runat="server" Text="Cadastrar nova categoria " />
    </div>
    
</asp:Content>
