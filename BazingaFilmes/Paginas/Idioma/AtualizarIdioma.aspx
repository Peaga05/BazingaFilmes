<%@ Page Title="Atulizar Idioma" Language="C#" MasterPageFile="~/SiteCrud.Master" AutoEventWireup="true" CodeBehind="AtualizarIdioma.aspx.cs" Inherits="BazingaFilmes.Paginas.Idioma.UpdateIdioma" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h1 id="title" class="text-center mt-5">Atualizar Idioma</h1>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-4 mt-3 mb-3">
                <div class="form-group">
                    <label id="lblText" for="txtDescricao" class="form-label">DESCRIÇÃO:</label>
                    <asp:TextBox ID="txtDescricao" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>
    <div class=" mt-3 m-auto  text-center">
        <asp:Button ID="btnSalvar" class="btn btn-outline-warning w-25" Text="Atualizar" OnClick="btnSalvar_Click" runat="server" />
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
