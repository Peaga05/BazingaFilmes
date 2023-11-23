using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BazingaFilmes.Paginas.Idiomas
{
    public partial class Idiomas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //É feita a busca de todos os idiomas cadastrados no banco logo que a página carrega
            if (!IsPostBack)
            {
                GetIdiomas("");
            }
        }

        protected void GetIdiomas(string descricao)
        {
            //Realiza a busca no banco e preenche o griedview - Para trazer tudo usa "" para fazer uma busca espesifica passa uma parametro no metodo
            BazingaFilmesDSTableAdapters.IdiomaTableAdapter dt = new BazingaFilmesDSTableAdapters.IdiomaTableAdapter();
            var result = dt.SelectIdioma(descricao);
            gvIdiomas.DataSource = result;
            gvIdiomas.DataBind();
            gvIdiomas.Columns[0].Visible = false; //Deixa a coluna do idioma invisivel
        }

        protected void gvIdioma_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //Cria a coluna de função, com link para as páginas de alterar e de deletar com o id do idioma daquela coluna
                int id = Convert.ToInt32(gvIdiomas.DataKeys[e.Row.RowIndex].Value);
                string editar = $"<a class='btn btn-warning' href='AtualizarIdioma.aspx?id={id}'>Editar</a>";
                string deletar = $"<a class='btn btn-danger' href='DeletarIdioma.aspx?id={id}'>Excluir</a>";
                string link = editar + "  " + deletar;
                e.Row.Cells[2].Text = link;
            }

        }

        protected void btnBusca_Click(object sender, EventArgs e)
        {
            //Realiza a busca por um elemento espesifico no banco
            GetIdiomas(txtBusca.Text);
        }

        protected void gvIdiomas_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //Carrega a nova 'página' da tabela ao clicar em um número dp rodapé
            gvIdiomas.PageIndex = e.NewPageIndex;
            GetIdiomas("");
        }
    }
}