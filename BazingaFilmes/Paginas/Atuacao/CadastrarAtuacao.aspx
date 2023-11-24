<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCrud.Master" AutoEventWireup="true" CodeBehind="CadastrarAtuacao.aspx.cs" Inherits="BazingaFilmes.Paginas.Atuacao.CadastrarAtuacao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 id="title" class="text-center mt-5">Cadastrar Filme</h1>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-4 mt-3 mb-3">
                <div class="form-group">
                    <label for="ddlFilme" class="form-label lbl-default">Filme:</label>
                    <asp:DropDownList ID="ddlFilme" runat="server" CssClass="form-control input-default"></asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="ddlAtor" class="form-label lbl-default">Ator:</label>
                    <asp:DropDownList ID="ddlAtor" runat="server" CssClass="form-control input-default"></asp:DropDownList>
                </div>
            </div>
        </div>
    </div>
    <div class=" text-center">
        <asp:Button ID="btnSalvar" class="btn btn-outline-warning w-25 btn-default" Text="Cadastrar" OnClick="btnSalvar_Click" runat="server" />

    </div>
    <div class=" mt-3 text-center">
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
