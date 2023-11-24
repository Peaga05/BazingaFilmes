using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BazingaFilmes.Paginas.Atuacao
{
    public partial class CadastrarAtuacao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetFilmes();
                GetAtores();
            }
               
        }

        private void GetAtores()
        {
            BazingaFilmesDSTableAdapters.AtorTableAdapter dt = new BazingaFilmesDSTableAdapters.AtorTableAdapter();
            var result = dt.SelectAtor("", "");
            var filmesComNomeSobrenome = result.AsEnumerable().Select(row => new {
                Id = row.Field<int>("id"),
                NomeSobrenome = $"{row.Field<string>("nome")} {row.Field<string>("sobrenome")}"
            });
            ddlAtor.DataSource = filmesComNomeSobrenome;
            ddlAtor.DataTextField = "NomeSobrenome";
            ddlAtor.DataValueField = "id";
            ddlAtor.DataBind();
        }

        private void GetFilmes()
        {
            BazingaFilmesDSTableAdapters.FilmeTableAdapter dt = new BazingaFilmesDSTableAdapters.FilmeTableAdapter();
            var result = dt.SelectFilme("");
            ddlFilme.DataSource = result;
            ddlFilme.DataTextField = "titulo";
            ddlFilme.DataValueField = "id";
            ddlFilme.DataBind();
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/");
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            int? retorno = null;
            var ator = ddlAtor.SelectedValue;
            var filme = ddlFilme.SelectedValue;
            BazingaFilmesDSTableAdapters.AtuacaoTableAdapter dt = new BazingaFilmesDSTableAdapters.AtuacaoTableAdapter();
             dt.InsertAtuacao(Convert.ToInt32(filme), Convert.ToInt32(ator), ref retorno);

            if(retorno == -1)
            {
                alert.Visible = true;
                lblMensagemErro.InnerText = "Erro: Esse ator(a) já atua nesse filme!";
            }
            else
            {
                Response.Redirect("~/");
            }
        }
    }
}