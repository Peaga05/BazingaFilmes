using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BazingaFilmes.Paginas.Filmes
{
    public partial class CadastrarFilme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BazingaFilmesDSTableAdapters.IdiomaTableAdapter dt = new BazingaFilmesDSTableAdapters.IdiomaTableAdapter();
                var result = dt.SelectIdioma("");
                ddlIdiomas.DataSource = result;
                ddlIdiomas.DataTextField = "descricao";
                ddlIdiomas.DataValueField = "id";
                ddlIdiomas.DataBind();
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {

        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Paginas/Filmes/Filme.aspx");
        }
    }
}