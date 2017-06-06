﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastraLeitor.aspx.cs" Inherits="Biblioteca.Views.Leitor.CadastraLeitor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>

            <legend>Cadastro de Leitor</legend>

            <div class="form-group">
                <label for="lblNome" class="col-lg-2 control-label">Nome:</label>
                <asp:TextBox ID="txtNome" class="form-control" placeholder="Nome" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="txtNome"
                    ErrorMessage="O nome é obrigatório."
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="lblCpf" class="col-lg-2 control-label">CPF:</label>
                <asp:TextBox ID="txtCpf" class="form-control" placeholder="CPF" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="txtCpf"
                    ErrorMessage="O CPF é requerido."
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
                <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
                    ControlToValidate="txtCpf" ErrorMessage="Insira somente números." />
            </div>

            <div class="form-group">
                <label for="lblDataNasc" class="col-lg-2 control-label">Data de nascimento:</label>
  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ControlToValidate="txtNome"
                    ErrorMessage="O sexo é requerido."
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="lblAgencia" class="col-lg-2 control-label">Agência:</label>
                <asp:DropDownList ID="ddlAgencia" class="form-control" runat="server"></asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="lblConta" class="col-lg-2 control-label">Conta:</label>
                <asp:TextBox ID="txtConta" class="form-control" placeholder="Conta" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                    ControlToValidate="txtNome"
                    ErrorMessage="A conta é requerida."
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
                <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
                    ControlToValidate="txtConta" ErrorMessage="Insira somente números." />
            </div>

            <div class="form-group">
                <div class="col-lg-10 col-lg-offset-2">
                    <asp:Button ID="btnCancelar" class="btn btn-default" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
                    <asp:Button ID="btnSalvar" class="btn btn-primary" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
