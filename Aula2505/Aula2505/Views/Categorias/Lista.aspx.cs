using Aula2505.Controllers;
using Aula2505.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula2505.Views.Categorias
{
    public partial class Lista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarregarGridView();
            }
        }

        private void CarregarGridView()
        {
            CategoriasController ctrl = new CategoriasController();

            gvCategorias.DataSource = ctrl.Listar();
            gvCategorias.DataBind();
        }

        protected void gvCategorias_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int linha = Convert.ToInt32(e.CommandArgument);
            int idObjeto = Convert.ToInt32(gvCategorias.Rows[linha].Cells[2].Text);

            string command = e.CommandName;


            if (command.Equals("Excluir"))
            {
                Response.Redirect("Excluir.aspx");
            }
            else
            {
                if (command.Equals("Editar"))
                {
                    
                    Response.Redirect("Editar.aspx");
                }
            }
        }

        protected void bttBuscar_Click(object sender, EventArgs e)
        {
            CategoriasController ctrl = new CategoriasController();

            Response.Cookies.Add(new HttpCookie("ID"), txtPesquisa.Text);


        }
    }
}