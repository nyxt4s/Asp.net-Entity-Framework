using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Proyecto.Logica.BL
{
    class clsUsuarios
    {

        SqlConnection _sqlConnection = null; //me permite establecer conexion con la base de datos
        SqlCommand _sqlCommand = null;// me permite ejecutar comandos sql o querys
        SqlDataAdapter _sqlDataAdapter = null; //me permite adaptar conjunto de datos sql

        string stConexion = String.Empty; //cadena de conexion vacia (Contructor)

        public clsUsuarios() {

            clsConexion obclsConexion = new clsConexion();

            stConexion = obclsConexion.getConexion();

        }


        public Boolean  etValidarUsuario(Logica.Models.cslUsuarios obclsUsuario) {

            try {
                DataSet dsConsulta = new DataSet();
                _sqlConnection = new SqlConnection(stConexion);
                _sqlConnection.Open();

                _sqlCommand = new SqlCommand("spConsultaUsuario", _sqlConnection);
                _sqlCommand.CommandType = CommandType.StoredProcedure;
                
                _sqlCommand.Parameters.Add(new SqlParameter("@clogin", obclsUsuario.stLogin));
                _sqlCommand.Parameters.Add(new SqlParameter("@cpassword", obclsUsuario.stPassword));

                _sqlCommand.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

    }
}
