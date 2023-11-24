﻿<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BazingaFilmes._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="m-auto">
        <h1 id="title" class="text-center mt-3">Atuações</h1>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 mt-3 mb-3">
                    <div class="mb-3 text-center">
                        <asp:TextBox ID="txtBusca" runat="server" CssClass="m-auto form-control w-50 d-inline input-default"></asp:TextBox>
                        <asp:Button ID="btnBusca" CssClass="btn btn-outline-warning w-25 btn-default" runat="server" Text="Buscar" OnClick="btnBusca_Click" />
                    </div>
                    <asp:GridView ID="gvAtuacao" CssClass="w-100 m-auto table table-striped text-center" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="gvAtuacao_PageIndexChanging" AllowPaging="True" PageSize="4">
                        <Columns>
                            <asp:BoundField DataField="titulo" HeaderText="Título" />
                            <asp:BoundField DataField="nome" HeaderText="Ator" />
                        </Columns>
                        <PagerStyle HorizontalAlign="Center" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
    <div class=" mt-3 m-auto  text-center">
        <a id="btnAtuacao" runat="server" class="btn btn-outline-warning w-25 btn-default" href="Paginas/Atuacao/CadastrarAtuacao.aspx">CADASTRAR ATUAÇÃO</a>
    </div>

</asp:Content>
