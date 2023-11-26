using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BazingaFilmes.Paginas.Atores
{
    public partial class Ator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //É feita a busca de todos os idiomas cadastrados no banco logo que a página carrega
            if (!IsPostBack)
            {
                GetAtores("", "");
            }
        }

        protected void GetAtores(string nome, string sobrenome)
        {
            //Realiza a busca no banco e preenche o griedview - Para trazer tudo usa "" para fazer uma busca espesifica passa uma parametro no metodo
            BazingaFilmesDSTableAdapters.AtorTableAdapter dt = new BazingaFilmesDSTableAdapters.AtorTableAdapter();
            var result = dt.SelectAtor(nome, sobrenome);
            gvAtores.DataSource = result;
            gvAtores.DataBind();
            gvAtores.Columns[0].Visible = false; //Deixa a coluna do idioma invisivel
        }

        protected void gvAtor_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //Cria a coluna de função, com link para as páginas de alterar e de deletar com o id do idioma daquela coluna
                int id = Convert.ToInt32(gvAtores.DataKeys[e.Row.RowIndex].Value);
                string editar = $"<a class='btn btn-warning' href='AtualizarAtor.aspx?id={id}'>Editar</a>";
                string deletar = $"<a class='btn btn-danger' href='DeletarAtor.aspx?id={id}'>Excluir</a>";
                string link = editar + "  " + deletar;
                e.Row.Cells[2].Text = link;
            }

        }

        protected void btnBusca_Click(object sender, EventArgs e)
        {
            //Realiza a busca por um elemento especifico no banco
            GetAtores(txtBusca.Text, "");
        }

        protected void gvAtor_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //Carrega a nova 'página' da tabela ao clicar em um número dp rodapé
            gvAtores.PageIndex = e.NewPageIndex;
            GetAtores("", "");
        }
    }
}