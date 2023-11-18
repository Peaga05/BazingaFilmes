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
            GetIdiomas("");
        }

        protected void GetIdiomas(string descricao)
        {
            BazingaFilmesDSTableAdapters.IdiomaTableAdapter dt = new BazingaFilmesDSTableAdapters.IdiomaTableAdapter();
            var result = dt.SelectIdioma(descricao);
            gvIdiomas.DataSource = result;
            gvIdiomas.DataBind();
            gvIdiomas.Columns[0].Visible = false;
        }

        protected void gvIdioma_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string editar = "<a class='btn btn-warning' href = 'AtualizarIdioma.aspx?id=" + e.Row.Cells[0].Text + "'>Editar</a>";
                string deletar = "<a class='btn btn-danger' href = 'DeletarIdioma.aspx?id=" + e.Row.Cells[0].Text + "'>Excluir</a>";
                string link = editar + "  " + deletar;
                e.Row.Cells[2].Text = link;
            }
        }
    }
}