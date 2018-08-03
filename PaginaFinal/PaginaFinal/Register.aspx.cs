using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PaginaFinal
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ManejoSql cls = new ManejoSql();
            bool r;
            r = cls.guardardatos(TextBox1.Text, TextBox2.Text, Int32.Parse(TextBox3.Text), TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text);
            if (r == true)
            {
                //Response.Write("<script language =javascript>alert('Registro exitoso');</script>");
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("<script language =javascript>alert('Registro fallido');</script>");
            }
        }
    }
}