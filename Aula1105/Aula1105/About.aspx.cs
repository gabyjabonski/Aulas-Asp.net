using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula1105
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e) // evento chamado quando a página é carregada.
        {
            if (!IsPostBack) // se a página NÃO for de um novo carregamento

                txtData.Text = DateTime.Now.ToString();



        }

        protected void bttSalvar_Click(object sender, EventArgs e) // evento do botão
        {
            DateTime data = calDAtaInicio.SelectedDate;      //variavel data recebe a data selecionada no calendario
            txtData.Text = data.ToString(); // atribui ao txtbox a data.
        }
    }
}