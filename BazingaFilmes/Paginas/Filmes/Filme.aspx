<%@ Page Title="Filmes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Filme.aspx.cs" Inherits="BazingaFilmes.Paginas.Filmes.Filme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="m-auto">
        <h1 id="title" class="text-center mt-3">FILMES</h1>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 mt-3 mb-3">
                    <div class="mb-3 text-center">
                        <asp:TextBox ID="txtBusca" runat="server" CssClass="m-auto form-control w-50 d-inline input-default"></asp:TextBox>
                        <asp:Button ID="btnBusca" CssClass="btn btn-outline-warning w-25 btn-default" runat="server" Text="Buscar" OnClick="btnBusca_Click" />
                    </div>
                    <asp:GridView ID="gvFilme" CssClass="w-100 m-auto table table-striped text-center" runat="server" DataKeyNames="id" AutoGenerateColumns="False" OnRowDataBound="gvFilme_RowDataBound" OnPageIndexChanging="gvFilme_PageIndexChanging" AllowPaging="True" PageSize="4">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="Id" />
                            <asp:BoundField DataField="titulo" HeaderText="Título" />
                            <asp:BoundField DataField="descricao" HeaderText="Descrição" />
                            <asp:BoundField DataField="categoria" HeaderText="Categoria" />
                            <asp:BoundField DataField="lancamento" HeaderText="Lançamento" />
                            <asp:BoundField DataField="idioma" HeaderText="Idioma" />
                            <asp:BoundField DataField="classificacao" HeaderText="Classificação" />
                            <asp:BoundField DataField="funcao" HeaderText="Funções" HtmlEncode="False" />
                        </Columns>
                        <PagerStyle HorizontalAlign="Center" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
    <div class=" mt-3 m-auto  text-center">
        <a id="btnFilme" runat="server" class="btn btn-outline-warning w-25 btn-default" href="~/CadastrarFilme">CADASTRAR FILME</a>
    </div>
</asp:Content>
