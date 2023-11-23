using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BazingaFilmes.Paginas.Idioma
{
    public partial class DeletarIdioma : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["id"]);
            if (!IsPostBack)
            {
                BazingaFilmesDSTableAdapters.IdiomaTableAdapter dt = new BazingaFilmesDSTableAdapters.IdiomaTableAdapter();
                BazingaFilmesDS.IdiomaDataTable result = dt.SelectIdiomaId(id);
                lblIdioma.InnerText = result[0].descricao;
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
            BazingaFilmesDSTableAdapters.IdiomaTableAdapter dt = new BazingaFilmesDSTableAdapters.IdiomaTableAdapter();
            dt.DeleteIdioma(id, ref retorno);
            if (retorno == -1)
            {
                lblMensagemErro.InnerText = "Erro: não é possível excluir um idioma vinculado a um filme!";
                alert.Visible = true;
            } 
            else if(retorno == 1)
            {
                lblMensagemErro.InnerText = "Erro: entre em contato com o administrador!";
                alert.Visible = true;
            }     
            else if(retorno == 0)
            {
                Response.Redirect("~/Paginas/Idioma/Idioma.aspx");
            }
        }
    }
}