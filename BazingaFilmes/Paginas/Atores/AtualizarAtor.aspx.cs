using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BazingaFilmes.Paginas.Atores
{
    public partial class AtualizarAtor : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["id"]);
            if (!IsPostBack)
            {
                //Busca o idioma referente ao id passado com paramentro e exibe seus dados na tela
                BazingaFilmesDSTableAdapters.AtorTableAdapter dt = new BazingaFilmesDSTableAdapters.AtorTableAdapter();
                BazingaFilmesDS.AtorDataTable result = dt.SelectAtorById(id);
                txtNome.Text = result[0].nome;
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            string nome = txtNome.Text;
            string sobrenome = txtSobrenome.Text;

            //Verifica se o usuário digitou algo válido
            if (nome == null || nome == "" || sobrenome == null || sobrenome == "")
            {
                lblMensagemErro.InnerText = "Erro: campo vazio!";
                alert.Visible = true;
            }
            else
            {
                //Realiza o update no banco e exibe menssagem de erro de algo de errado acontecer.
                int? retorno = null;
                BazingaFilmesDSTableAdapters.AtorTableAdapter dt = new BazingaFilmesDSTableAdapters.AtorTableAdapter();
                dt.UpdateAtor(nome, sobrenome, id, ref retorno);

                if (retorno == 0)
                {
                    Response.Redirect("~/Paginas/Atores/Ator.aspx");
                }
                else if (retorno == 1)
                {
                    lblMensagemErro.InnerText = "Erro: Entre em contato com o administrador!";
                    alert.Visible = true;
                }
            }
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Paginas/Atores/Ator.aspx");
        }
    }
}