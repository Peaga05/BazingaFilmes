using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BazingaFilmes.Paginas.Idioma
{
    public partial class UpdateIdioma : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["id"]);
            if (!IsPostBack)
            {
                BazingaFilmesDSTableAdapters.IdiomaTableAdapter dt = new BazingaFilmesDSTableAdapters.IdiomaTableAdapter();
                BazingaFilmesDS.IdiomaDataTable result = dt.SelectIdiomaId(id);
                txtDescricao.Text = result[0].descricao;
            }

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            string descricao = txtDescricao.Text;

            if (descricao == null || descricao == "")
            {
                lblMensagemErro.InnerText = "Erro: campo vazio!";
                alert.Visible = true;
            }
            else
            {
                int? retorno = null;
                BazingaFilmesDSTableAdapters.IdiomaTableAdapter dt = new BazingaFilmesDSTableAdapters.IdiomaTableAdapter();
                dt.UpdateIdioma(descricao, id, ref retorno);

                if(retorno == 0)
                {
                    Response.Redirect("~/Paginas/Idioma/Idioma.aspx");
                }
                else if(retorno == 1)
                {
                    lblMensagemErro.InnerText = "Erro: Entre em contato com o administrador!";
                    alert.Visible = true;
                }
            }
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Paginas/Idioma/Idioma.aspx");
        }
    }
}