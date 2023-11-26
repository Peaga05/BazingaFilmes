﻿<%@ Page Title="Deletar Ator" Language="C#" MasterPageFile="~/SiteCrud.Master" AutoEventWireup="true" CodeBehind="DeletarAtor.aspx.cs" Inherits="BazingaFilmes.Paginas.Atores.DeletarAtor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="m-auto">
        <h1 id="title" class="text-center mt-5">Deseja mesmo excluir o ator:
            <label id="lblAtor" runat="server"></label>
        </h1>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 mt-3 mb-3">
                    <div class=" mt-3 m-auto  text-center">
                        <asp:Button ID="btnCancelar" CssClass="btn btn-warning w-50" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
                        <asp:Button ID="btnApagar" CssClass="btn btn-danger w-50 mt-3" runat="server" Text="Apagar" OnClick="btnApagar_Click" />
                    </div>
                </div>
            </div>
        </div>
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
