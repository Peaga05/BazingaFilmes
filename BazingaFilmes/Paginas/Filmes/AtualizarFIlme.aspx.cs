using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BazingaFilmes.Paginas.Filmes
{
    public partial class AtualizarFIlme : System.Web.UI.Page
    {
        int id;
        BazingaFilmesDSTableAdapters.FilmeTableAdapter dt = new BazingaFilmesDSTableAdapters.FilmeTableAdapter();
        BazingaFilmesDSTableAdapters.IdiomaTableAdapter di = new BazingaFilmesDSTableAdapters.IdiomaTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["id"]);
            if (!IsPostBack)
            {
                //É feita a busca do filme com base no id que é passado pela url e preenche os campos de texto com as informações
                BazingaFilmesDS.FilmeDataTable result = dt.SelectFilmeById(id);
                txtTitulo.Text = result[0].titulo;
                txtDescricao.Text = result[0].descricao;
                txtData.Value = ((DateTime)result[0].lancamento).ToString("yyyy-MM-dd");
                txtCategoria.Text = result[0].categoria;
                sltClassificacao.Value = result[0].classificacao;

                //Busca os idiomas cadastrados no banco e preenche o dropDownList
                var idiomas = di.SelectIdioma("");
                ddlIdiomas.DataSource = idiomas;
                ddlIdiomas.DataTextField = "descricao";
                ddlIdiomas.DataValueField = "id";
                ddlIdiomas.SelectedValue = result[0].idIdioma.ToString(); //Deixa selecionado o idioma do filme
                ddlIdiomas.DataBind();
               

            }
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Paginas/Filmes/Filme.aspx");
        }

        protected void btnAtualizar_Click(object sender, EventArgs e)
        {
            //Pega os dados digitados pelo usuário e envia para o banco para realizar o update - em caso de erro é exibido uma menssagem

            int? retorno = null;
            var titulo = txtTitulo.Text;
            var descricao = txtDescricao.Text;
            var categoria = txtCategoria.Text;
            var data = txtData.Value;
            var classificacao = sltClassificacao.Value;
            var idioma = ddlIdiomas.SelectedValue;

            if (titulo.Length > 0 && descricao.Length > 0 && categoria.Length > 0 && data.Length > 0 && classificacao.Length > 0 && idioma.Length > 0)
            {

                BazingaFilmesDSTableAdapters.FilmeTableAdapter dt = new BazingaFilmesDSTableAdapters.FilmeTableAdapter();
                dt.UpdateFilme(id, titulo, descricao, DateTime.Parse(data), categoria, Convert.ToInt32(idioma), classificacao, ref retorno);
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
    }
}