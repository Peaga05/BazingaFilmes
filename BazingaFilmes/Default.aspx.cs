using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BazingaFilmes
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Busca todas as atuações cadastradas no banco
                GetAtuacao("");
            }
        }

        private void GetAtuacao(string busca)
        {
            //Busca todos os filmes cadastrados ou um espesifico e preenche o griedview
            BazingaFilmesDSTableAdapters.AtuacaoTableAdapter dt = new BazingaFilmesDSTableAdapters.AtuacaoTableAdapter();
            var result = dt.SelectAtuacao(busca);
            gvAtuacao.DataSource = result;
            gvAtuacao.DataBind();
        }

        protected void btnBusca_Click(object sender, EventArgs e)
        {
            GetAtuacao(txtBusca.Text);
        }

        protected void gvAtuacao_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //Realiza a paginação do griedview
            gvAtuacao.PageIndex = e.NewPageIndex;
            GetAtuacao("");
        }
    }
}