using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;
using CapaEntidades;

namespace MantenedorWEB
{
    public partial class frmAgregar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<entCategoria> lista = negCategoria.ListarCategorias();
            foreach(entCategoria obj in lista)
            {
                ListItem item = new ListItem(obj.Descripcion, obj.IdCategoria.ToString());
                cmbCategorias.Items.Add(item);
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (txtdetalle.Text != "" && txtNombre.Text != "" && txtPrecio.Text != "" && txtStock.Text != "")
            {
                entProducto obj = new entProducto();
                obj.Nombre = txtNombre.Text;
                obj.Detalle = txtdetalle.Text;
                try
                {
                    obj.Precio = float.Parse(txtPrecio.Text);
                    obj.Stock = float.Parse(txtStock.Text);
                }
                catch(Exception ex)
                {
                    lblerror.Text = "Datos invalidos";
                    lblerror.Visible = true;
                    return;
                }
                obj.idCategoria = Convert.ToInt32(cmbCategorias.SelectedValue);
                if (negProducto.AgregarProducto(obj) == 1)
                {
                    Response.Redirect("frmPrincipal.aspx");
                }
                else
                {
                    lblerror.Text = "No se pudo agregar";
                    lblerror.Visible = true;
                }
            }
            else
            {
                lblerror.Text = "Faltan ingresar campos";
                lblerror.Visible = true;
            }
        }
    }
}