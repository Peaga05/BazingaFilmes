<%@ Page Title="Cadastrar Filme" Language="C#" MasterPageFile="~/SiteCrud.Master" AutoEventWireup="true" CodeBehind="CadastrarFilme.aspx.cs" Inherits="BazingaFilmes.Paginas.Filmes.CadastrarFilme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 id="title" class="text-center mt-5">Cadastrar Filme</h1>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-4 mt-3 mb-3">
                <div class="form-group">
                    <label for="txtTitulo" class="form-label lbl-default">Título</label>
                    <asp:TextBox ID="txtTitulo" class="form-control input-default" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtDescricao" class="form-label lbl-default">Descrição</label>
                    <asp:TextBox ID="txtDescricao" class="form-control input-default" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="sltClassificacao" class="form-label lbl-default">Classificação</label>
                    <select runat="server" class="form-control input-default" id="sltClassificacao">
                        <option value="L">Livre</option>
                        <option value="10">+10</option>
                        <option value="12">+12</option>
                        <option value="14">+14</option>
                        <option value="16">+16</option>
                        <option value="18">+18</option>
                    </select>
                </div>
            </div>
            <div class="col-4 mt-3 mb-3">
                <div class="form-group">
                    <label for="txtCategoria" class="form-label lbl-default">Categoria</label>
                    <asp:TextBox ID="txtCategoria" class="form-control input-default" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtData" class="form-label lbl-default">Data de lançamento</label>
                    <input type="date" id="txtData" class="form-control input-default" runat="server" />
                </div>
                <div class="form-group">
                    <label for="ddlIdiomas" class="form-label lbl-default">Idioma:</label>
                    <asp:DropDownList ID="ddlIdiomas" runat="server" CssClass="form-control input-default"></asp:DropDownList>
                </div>
            </div>

        </div>
    </div>
    <div class=" mt-3 m-auto  text-center">
        <asp:Button ID="btnVoltar" class="btn btn-outline-warning w-25 btn-default mr-4" Text="Voltar" OnClick="btnVoltar_Click" runat="server" />
        <asp:Button ID="btnSalvar" class="btn btn-outline-warning w-25 btn-default" Text="Cadastrar" OnClick="btnSalvar_Click" runat="server" />  
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
