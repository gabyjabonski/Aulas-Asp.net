using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula1805
{
    public partial class Calculadora : System.Web.UI.Page
    {

        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bttMais_Click(object sender, EventArgs e)
        {
            //double resultado = Convert.ToDouble(txtValor1.Text) + Convert.ToDouble(txtValor2.Text);
            //txtResult.Text = resultado.ToString();

            // ViewState só usa quando a informação é utilizada na mesma página
            ViewState["valor1"] = txtValor1.Text;  // adiciona o valor1 no viewstate
            ViewState["valor2"] = txtValor2.Text;   // adiciona o valor2 no viewstate

            double resultado = Convert.ToDouble(ViewState["valor1"]) + Convert.ToDouble(ViewState["valor2"]);   //recupera informacao da viewstate

            txtResult.Text = resultado.ToString();
            
        }

        protected void bttIgual_Click(object sender, EventArgs e)
        {
            // Session só usa quando a informação é utilizada em outras páginas.
            Session["valor1"] = txtValor1.Text;     // a sessão recebe os valores incluidos nos campos
            Session["valor2"] = txtValor2.Text;

            Response.Redirect("~/Calculadora2.aspx");   // Redirencionando o usuário;
        }
    }
}