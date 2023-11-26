using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BazingaFilmes.Paginas.Atores
{
    public partial class DeletarAtor : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["id"]);
            if (!IsPostBack)
            {
                BazingaFilmesDSTableAdapters.AtorTableAdapter dt = new BazingaFilmesDSTableAdapters.AtorTableAdapter();
                BazingaFilmesDS.AtorDataTable result = dt.SelectAtorById(id);
                lblAtor.InnerText = result[0].nome;
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Paginas/Idioma/Idioma.aspx");
        }

        protected void btnApagar_Click(object sender, EventArgs e)
        {
            //Realiza a exclusão física no banco e verifica os possíveis erros retornados
            int? retorno = null;
            BazingaFilmesDSTableAdapters.AtorTableAdapter dt = new BazingaFilmesDSTableAdapters.AtorTableAdapter();
            dt.DeleteAtor(id, ref retorno);
            if (retorno == -1)
            {
                lblMensagemErro.InnerText = "Erro: não é possível excluir um ator vinculado a um filme!";
                alert.Visible = true;
            }
            else if (retorno == 1)
            {
                lblMensagemErro.InnerText = "Erro: entre em contato com o administrador!";
                alert.Visible = true;
            }
            else if (retorno == 0)
            {
                Response.Redirect("~/Paginas/Atores/Ator.aspx");
            }
        }
    }
}