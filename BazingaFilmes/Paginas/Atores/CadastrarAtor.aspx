<%@ Page Title="Cadastrar Ator" Language="C#" MasterPageFile="~/SiteCrud.Master" AutoEventWireup="true" CodeBehind="CadastrarAtor.aspx.cs" Inherits="BazingaFilmes.Paginas.Atores.CadastrarAtor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 id="title" class="text-center mt-5">Cadastrar Ator</h1>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-4 mt-3 mb-3">
                <div class="form-group">
                    <label id="lbLNome" for="txtNome" class="form-label lbl-default">NOME:</label>
                    <asp:TextBox ID="txtNome" class="form-control input-default" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label id="lblSobrenome" for="txtSobrenome" class="form-label lbl-default">SOBRENOME:</label>
                    <asp:TextBox ID="txtSobrenome" class="form-control input-default" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>
    <div class=" mt-3 m-auto  text-center">
        <asp:Button ID="btnSalvar" class="btn btn-outline-warning w-25 btn-default" Text="Cadastrar" OnClick="btnSalvar_Click" runat="server" />
    </div>
    <div class=" mt-3  text-center">
        <asp:Button ID="btnVoltar" class="btn btn-outline-warning w-25 btn-default" Text="Voltar" OnClick="btnVoltar_Click" runat="server" />
    </div>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-4 mt-3 mb-3">
                <div class="mt-3 text-center">
                    <div class="alert alert-danger" role="alert" runat="server" id="alert" visible="false">
                        <label runat="server" id="lblMensagemErro"></label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
