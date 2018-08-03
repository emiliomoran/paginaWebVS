using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PaginaFinal
{
    public class EntUsuario
    {
        public int idUsuario { get; set; }
        public String Nombre { get; set; }
        public String Apellido { get; set; }
        public String Usuario { get; set; }
        public String Password { get; set; }
        public int Edad { get; set; }
        public String Telf { get; set; }
        public String Email { get; set; }
    }
}