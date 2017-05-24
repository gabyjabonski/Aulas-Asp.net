using Aula2305.Models;
using Aula2305.Views.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula2305.Views.Categoria
{
    public partial class Lista : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //qual a fonte de dados que será utilizado?
            //lista as categorias do datasource
            gvCategorias.DataSource = contexto.Categoria.ToList();

            gvCategorias.DataBind();

        }
    }
}