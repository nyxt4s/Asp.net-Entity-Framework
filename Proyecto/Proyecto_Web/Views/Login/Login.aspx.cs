using System;

namespace Proyecto_Web.Views.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ispostback es una variable tipo boleano que identifica si la pagina a sido cargada alguna vez
            if (!IsPostBack) {
                //ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script> swal( 'hola', { button: 'Coolio' });</script>");
               
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            try {
                String sMensaje = string.Empty;
                if (String.IsNullOrEmpty(txtEmail.Text)) sMensaje += "ingrese un Mail,";
                if (String.IsNullOrEmpty(txtPass.Text)) sMensaje += "ingrese una contraseña,";


                if (!string.IsNullOrEmpty(sMensaje)) throw new Exception(sMensaje.TrimEnd(','));
            }
            catch (Exception ex) {
                ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script> swal( {title : 'nyxth', text:' ah ocurrido un error "+ ex.Message+"', icon: 'error' });</script>");
            }



        }
    }
}