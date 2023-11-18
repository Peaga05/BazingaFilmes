<%@ Page Title="Idioma" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Idioma.aspx.cs" Inherits="BazingaFilmes.Paginas.Idiomas.Idiomas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="m-auto">
        <h1 id="title" class="text-center mt-5">IDIOMAS</h1>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-4 mt-3 mb-3">
                    <asp:GridView ID="gvIdiomas" CssClass="w-100 m-auto table table-striped" runat="server" AutoGenerateColumns="False" OnRowDataBound="gvIdioma_RowDataBound">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="Id" />
                            <asp:BoundField DataField="descricao" HeaderText="Descrição" />
                            <asp:BoundField DataField="funcao" HeaderText="Funções" HtmlEncode="False" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
    <div class=" mt-3 m-auto  text-center">
        <a id="btnIdioma" runat="server" class="btn btn-outline-warning w-25" href="~/CadastrarIdioma">CADASTRAR IDIOMA</a>
    </div>
</asp:Content>
