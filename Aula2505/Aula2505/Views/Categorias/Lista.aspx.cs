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


            if (command.Equals("Editar"))
            {
                
            }
            else
            {
                if (command.Equals("Editar"))
                {
                    gvCategorias_RowEditing(idObjeto);
                }
            }
        }

        protected void gvCategorias_RowEditing(object sender, GridViewEditEventArgs e)
        {
            CategoriasController ctrl = new CategoriasController();

            gvCategorias_RowCommand(ctrl.Editar(categoria));

            ctrl.Editar(categoria);
        }

        protected void gvCategorias_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = e.RowIndex;

            CategoriasController ctrl = new CategoriasController();

            

           
        }

        protected void gvCategorias_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;

            
        }

        protected void gvCategorias_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void txtPesquisa_TextChanged(object sender, EventArgs e)
        {
            if (txtPesquisa.Text == "ID")
            {

            }
        }
    }
}