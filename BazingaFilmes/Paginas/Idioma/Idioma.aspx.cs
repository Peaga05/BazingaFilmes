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
            if (!IsPostBack)
            {
                GetIdiomas("");
            }
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
                int id = Convert.ToInt32(gvIdiomas.DataKeys[e.Row.RowIndex].Value);
                string editar = $"<a class='btn btn-warning' href='AtualizarIdioma.aspx?id={id}'>Editar</a>";
                string deletar = $"<a class='btn btn-danger' href='DeletarIdioma.aspx?id={id}'>Excluir</a>";
                string link = editar + "  " + deletar;
                e.Row.Cells[2].Text = link;
            }

        }

        protected void btnBusca_Click(object sender, EventArgs e)
        {
            GetIdiomas(txtBusca.Text);
        }

        protected void gvIdiomas_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvIdiomas.PageIndex = e.NewPageIndex;
            GetIdiomas("");
        }
    }
}