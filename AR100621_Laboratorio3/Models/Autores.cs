using System;
using System.Collections.Generic;

namespace AR100621_Laboratorio3.Models
{
    public partial class Autores
    {
        public Autores()
        {
            Libros = new HashSet<Libro>();
        }

        public int IdAutor { get; set; }
        public string? Nombre { get; set; }
        public string? Apellido { get; set; }
        public string? Nacionalidad { get; set; }

        public virtual ICollection<Libro> Libros { get; set; }
    }
}
