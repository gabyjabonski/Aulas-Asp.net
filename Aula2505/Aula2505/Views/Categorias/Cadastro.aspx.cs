using Aula2505.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula2505.Views.Categorias
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bttSalvar_Click(object sender, EventArgs e)
        {
            
            BaseDadosContainer contexto = new BaseDadosContainer();

            Categoria categoria = new Categoria();

            categoria.Nome = txtNome.Text;

            categoria.Descricao = txtDescricao.Text;

            categoria.Ativo = ckbAtivo.Checked;

            contexto.Categorias.Add(categoria);

            contexto.SaveChanges();

        }
    }
}