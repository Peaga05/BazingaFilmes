using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace BazingaFilmes
{
    public class Global : HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            // Código que é executado na inicialização do aplicativo
            RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("Filme", "Filme", "~/Paginas/Filmes/Filme.aspx");
            routes.MapPageRoute("CadastrarFilme", "CadastrarFilme", "~/Paginas/Filmes/CadastrarFilme.aspx");
            routes.MapPageRoute("Idioma", "Idioma", "~/Paginas/Idioma/Idioma.aspx");
            routes.MapPageRoute("CadastrarIdioma", "CadastrarIdioma", "~/Paginas/Idioma/CadastrarIdioma.aspx");
        }
    }
}