<%@ Page Title="Cadastrar Filme" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastrarFilme.aspx.cs" Inherits="BazingaFilmes.Paginas.Filmes.CadastrarFilme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 id="title" class="text-center">Cadastrar Filme</h1>

    <div>
        <form id="form-cadastrar-filme">
            <div class="form-group">
                <label for="txtTitulo" class="form-label">Título</label>
                <asp:TextBox ID="txtTitulo" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtDescricao" class="form-label">Descrição</label>
                <asp:TextBox ID="txtDescricao" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtData" class="form-label">Data de lançamento</label>
                <input type="date" ID="txtData" class="form-control" runat="server" />
            </div>
        </form>
    </div>
</asp:Content>
