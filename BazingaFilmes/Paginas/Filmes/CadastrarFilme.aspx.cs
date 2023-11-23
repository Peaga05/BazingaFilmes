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
                //Busca os idiomas cadastrados no banco e preenche o dropDownList
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
            //Pega os dados digitados pelo usuário e envia para o banco para realizar o insert - em caso de erro é exibido uma menssagem

            int? retorno = null;
            var titulo = txtTitulo.Text;
            var descricao = txtDescricao.Text;
            var categoria = txtCategoria.Text;
            var data = txtData.Value;
            var classificacao = sltClassificacao.Value;
            var idioma = ddlIdiomas.SelectedValue;

            if(titulo.Length > 0 && descricao.Length >0 && categoria.Length > 0 && data.Length > 0 && classificacao.Length > 0 && idioma.Length > 0)
            {

                BazingaFilmesDSTableAdapters.FilmeTableAdapter dt = new BazingaFilmesDSTableAdapters.FilmeTableAdapter();
                dt.InsertFilme(titulo, descricao, DateTime.Parse(data), categoria, Convert.ToInt32(idioma), classificacao, ref retorno);
                if (retorno == -1)
                {
                    alert.Visible = true;
                    lblMensagemErro.InnerText = "Erro: Entre em contato com administrador!";
                }
                else
                {
                    Response.Redirect("~/Paginas/Filmes/Filme.aspx");
                }
            }
            else
            {
                alert.Visible = true;
                lblMensagemErro.InnerText = "Erro: Preencha todos os campos!";
            }

        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Paginas/Filmes/Filme.aspx");
        }
    }
}