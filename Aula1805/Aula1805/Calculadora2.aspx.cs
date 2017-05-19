using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula1805
{
    public partial class Calculadora2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack) // se não for um postback (indo na pagina na primeira vez)
            {
                if(Session["valor1"] != null && Session["valor2"] != null)
                {
                    //recuperar valores da session
                    double valor1 = Convert.ToDouble(Session["valor1"]);
                    double valor2 = Convert.ToDouble(Session["valor2"]);
                    double soma = valor1 + valor2;
                    double subtracao = valor1 - valor2;
                    double multiplicacao = valor1 * valor2;
                    double divisao = valor1 / valor2;

                    // preenchendo os campos (exibir valores)
                    txtValor1.Text = valor1.ToString();
                    txtValor2.Text = valor2.ToString();
                    txtResp1.Text = soma.ToString();

                    txtValor3.Text = valor1.ToString();
                    txtValor4.Text = valor2.ToString();
                    txtResp2.Text = subtracao.ToString();

                    txtValor5.Text = valor1.ToString();
                    txtValor6.Text = valor2.ToString();
                    txtResp3.Text = multiplicacao.ToString();

                    txtValor7.Text = valor1.ToString();
                    txtValor8.Text = valor2.ToString();
                    txtResp4.Text = divisao.ToString();
                }
                else
                {
                    // retorna à tela da Calculadora 1
                    Response.Redirect("~/Calculadora.aspx");
                }

            }


        }
    }
}