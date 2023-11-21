<%@ Page Title="Idioma" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Idioma.aspx.cs" Inherits="BazingaFilmes.Paginas.Idiomas.Idiomas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="m-auto">
        <h1 id="title" class="text-center mt-3">IDIOMAS</h1>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-4 mt-3 mb-3">
                    <div class="mb-3 text-center">
                        <asp:TextBox ID="txtBusca" runat="server" CssClass="m-auto form-control w-50 d-inline input-default"></asp:TextBox>
                        <asp:Button ID="btnBusca" CssClass="btn btn-outline-warning w-25 btn-default" runat="server" Text="Buscar" OnClick="btnBusca_Click" />
                    </div>
                    <asp:GridView ID="gvIdiomas" CssClass="w-100 m-auto table table-striped text-center" runat="server" DataKeyNames="id" AutoGenerateColumns="False" OnRowDataBound="gvIdioma_RowDataBound" OnPageIndexChanging="gvIdiomas_PageIndexChanging" AllowPaging="True" PageSize="4">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="Id" />
                            <asp:BoundField DataField="descricao" HeaderText="Descrição" />
                            <asp:BoundField DataField="funcao" HeaderText="Funções" HtmlEncode="False" />
                        </Columns>
                        <PagerStyle HorizontalAlign="Center" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
    <div class=" mt-3 m-auto  text-center">
        <a id="btnIdioma" runat="server" class="btn btn-outline-warning w-25 btn-default" href="~/CadastrarIdioma">CADASTRAR IDIOMA</a>
    </div>
</asp:Content>
