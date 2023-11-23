using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BazingaFilmes.Paginas.Filmes
{
    public partial class DeletarFilme : System.Web.UI.Page
    {
        BazingaFilmesDSTableAdapters.FilmeTableAdapter dt = new BazingaFilmesDSTableAdapters.FilmeTableAdapter();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["id"]);
            if (!IsPostBack)
            {
                //É feita a busca do filme com base no id que é passado pela url e exibe o titulo do filme
                BazingaFilmesDS.FilmeDataTable result = dt.SelectFilmeById(id);
                lblIFilme.InnerText = result[0].titulo;
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Paginas/Filmes/Filme.aspx");
        }

        protected void btnApagar_Click(object sender, EventArgs e)
        {
            //Realiza a exclusão física no banco e verifica os possíveis erros retornados
            int? retorno = null;
            dt.DeleteFilme(id, ref retorno);
            if (retorno == -1)
            {
                lblMensagemErro.InnerText = "Erro: não é possível excluir um filme pois tem atores vinculados a ele!";
                alert.Visible = true;
            }
            else if (retorno == 1)
            {
                lblMensagemErro.InnerText = "Erro: entre em contato com o administrador!";
                alert.Visible = true;
            }
            else if (retorno == 0)
            {
                Response.Redirect("~/Paginas/Filmes/Filme.aspx");
            }
        }
    }
}