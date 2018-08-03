using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PaginaFinal
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ManejoSql cls = new ManejoSql();
            if (TextBox3.Text != "" && TextBox4.Text != "")
            {
                EntUsuario obj = cls.Login(TextBox3.Text, TextBox4.Text);
                if (obj != null)
                {
                    Session["usuario"] = obj;
                    Response.Redirect("Report.aspx");
                }
                else
                {
                    Label3.Text = "Usuario o contraseña invalido";
                    Label3.Visible = true;
                }
            }
            else
            {
                Label3.Text = "Faltan ingresar campos";
                Label3.Visible = true;
            }
        }
    }
}