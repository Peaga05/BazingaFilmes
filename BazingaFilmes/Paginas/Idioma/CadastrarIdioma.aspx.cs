using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BazingaFilmes.Paginas.Idiomas
{
    public partial class CadastrarIdioma : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            string descricao = txtDescricao.Text;
            int? ret = null;
            if (descricao == null || descricao == "")
            {
                alert.Visible = true;
                lblMensagemErro.InnerText =  "Campo vazio!";
            }
            else
            {
                BazingaFilmesDSTableAdapters.IdiomaTableAdapter dt = new BazingaFilmesDSTableAdapters.IdiomaTableAdapter();
                dt.InsertIdioma(descricao, ref ret);
                if (ret == -1)
                {
                    alert.Visible = true;
                    lblMensagemErro.InnerText = "Erro: Esse idioma já está cadastrado!";
                }
                else
                {
                    Response.Redirect("~/Paginas/Idioma/Idioma.aspx");
                }
            }

        }
    }
}