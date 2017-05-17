using Aula1605.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula1605
{
    public partial class MeuPrimeiroForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bttCancelar_Click(object sender, EventArgs e)
        {
            txtNome.Text = string.Empty; // limpar o campo
            checkAtivo.Checked = false;  // desmarcar o check

            if(ViewState["controle"] == null) //testar se tem algo na variavel
            {
                ViewState.Add("controle", "1"); // cria uma key e um value para a viewstate para controle
            }
            else
            {
                int quantidadeClique = Convert.ToInt32(ViewState["controle"]); //converte variavel em objeto
                quantidadeClique++; // adiciona a quantidade de cliques
                ViewState["controle"] = quantidadeClique; // a viewstate recebe a quantidade de clique.
            }

            
        }

        protected void bttSalvar_Click(object sender, EventArgs e)
        {
            Projeto proj = new Projeto();
            proj.Nome = txtNome.Text;
            proj.Ativo = checkAtivo.Checked;
            proj.Descricao = txtArea.Text;

            ViewState.Remove("controle"); // remove o controle da viewstate.
        }
    }
}