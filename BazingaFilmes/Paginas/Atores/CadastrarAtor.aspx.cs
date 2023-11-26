using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BazingaFilmes.Paginas.Atores
{
    public partial class CadastrarAtor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            //Realiza o cadastro no banco e exibe mensagens de erro
            string nome = txtNome.Text;
            string sobrenome = txtSobrenome.Text;
            int? ret = null;
            if (nome == null || nome == "" || sobrenome == null || sobrenome == "")
            {
                alert.Visible = true;
                lblMensagemErro.InnerText = "Campo vazio!";
            }
            else
            {
                BazingaFilmesDSTableAdapters.AtorTableAdapter dt = new BazingaFilmesDSTableAdapters.AtorTableAdapter();
                dt.InsertAtor(nome, sobrenome, ref ret);
                if (ret == -1)
                {
                    alert.Visible = true;
                    lblMensagemErro.InnerText = "Erro: Esse ator já está cadastrado!";
                }
                else
                {
                    Response.Redirect("~/Paginas/Atores/Ator.aspx");
                }
            }

        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Paginas/Atores/Ator.aspx");
        }
    }
}