using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BazingaFilmes.Paginas.Atores
{
    public partial class DeletarAtor : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["id"]);
            if (!IsPostBack)
            {
                BazingaFilmesDSTableAdapters.AtorTableAdapter dt = new BazingaFilmesDSTableAdapters.AtorTableAdapter();
                BazingaFilmesDS.AtorDataTable result = dt.SelectAtorById(id);
                lblAtor.InnerText = result[0].nome;
            }
        }
    }
}