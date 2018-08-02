using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;
using CapaNegocio;

namespace MantenedorWEB
{
    public partial class frmLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] != null)
            {
                Response.Redirect("frmPrincipal.aspx");
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            if (txtUsuario.Text != "" && txtpass.Text != "")
            {
                entUsuario obj = negUsuario.Login(txtUsuario.Text, txtpass.Text);
                if (obj != null)
                {
                    Session["usuario"] = obj;
                    Response.Redirect("frmPrincipal.aspx");
                }
                else
                {
                    lblError.Text = "Usuario o contraseña invalido";
                    lblError.Visible = true;
                }
            }
            else
            {
                lblError.Text = "Faltan ingresar campos";
                lblError.Visible = true;
            }
        }
    }
}