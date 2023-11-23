using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BazingaFilmes.Paginas.Filmes
{
    public partial class Filme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Busca todos os filmes cadastrados banco
                GetFilmes("");
            }
        }

        private void GetFilmes(string titulo)
        {
            //Busca todos os filmes cadastrados ou um espesifico e preenche o griedview
            BazingaFilmesDSTableAdapters.FilmeTableAdapter dt = new BazingaFilmesDSTableAdapters.FilmeTableAdapter();
            var result = dt.SelectFilme(titulo);
            gvFilme.DataSource = result;
            gvFilme.DataBind();
            gvFilme.Columns[0].Visible = false; //Deixa a coluna do id invisivel
        }

        protected void btnBusca_Click(object sender, EventArgs e)
        {
            //Buscar por um filme espesifico
            GetFilmes(txtBusca.Text);
        }

        protected void gvFilme_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //Realiza a paginação do griedview
            gvFilme.PageIndex = e.NewPageIndex;
            GetFilmes("");
        }

        protected void gvFilme_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //Cria a coluna função com links para páginas de update e deletar 
                int id = Convert.ToInt32(gvFilme.DataKeys[e.Row.RowIndex].Value);
                string editar = $"<a class='btn btn-warning' href='AtualizarFilme.aspx?id={id}'>Editar</a>";
                string deletar = $"<a class='btn btn-danger' href='DeletarFilme.aspx?id={id}'>Excluir</a>";
                string link = editar + "  "+ deletar;
                e.Row.Cells[7].Text = link;
            }
        }
    }
}