using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculadora
{
    public partial class HistorialCalculos : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnMotrar_Click(object sender, EventArgs e)
        {
            
            lblMostrar.Text = Session["Cuentas"].ToString();
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("calculadora.aspx");
        }
    }
}