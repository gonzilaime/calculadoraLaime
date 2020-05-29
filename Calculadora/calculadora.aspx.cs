using System;
using System.Collections;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculadora
{
    
    public partial class calculadora : System.Web.UI.Page
    {
        double resultado = 0;
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnTotal_Click(object sender, EventArgs e)
        {
            if(txtNum1.Text != "" || txtNum2.Text != "") { 
                double num1 = int.Parse(txtNum1.Text);
                double num2 = int.Parse(txtNum2.Text);


                if (listaAcciones.SelectedValue == "Sumar")
                {
                    resultado = (num1 + num2);
                    Session.Add("Cuentas", num1.ToString() + "+" + num2.ToString() + "=" + (num1 + num2).ToString() + " || " + Session["Cuentas"]);

                }
                else if (listaAcciones.SelectedValue == "Restar")
                {
                    resultado = (num1 - num2);
                    Session.Add("Cuentas", num1.ToString() + "-" + num2.ToString() + "=" + (num1 - num2).ToString() + " || " + Session["Cuentas"]);
                }
                else if (listaAcciones.SelectedValue == "Multiplicar")
                {
                    resultado = (num1 * num2);
                    Session.Add("Cuentas", num1.ToString() + "*" + num2.ToString() + "=" + (num1 * num2).ToString() + " || " + Session["Cuentas"]);
                }
                else if (listaAcciones.SelectedValue == "Dividir")
                {
                    resultado = (num1 / num2);
                    Session.Add("Cuentas", num1.ToString() + "/" + num2.ToString() + "=" + (num1 / num2).ToString() + " || " + Session["Cuentas"]);
                }

                txtResultado.Text = resultado.ToString();
            }
            else
            {
                lblObligatorio.Visible = true;
                lblObligatorio.BackColor = Color.Red;
            }

        }

        protected void btnForm2_Click(object sender, EventArgs e)
        {

            Response.Redirect("HistorialCalculos.aspx");
        }
    }
}