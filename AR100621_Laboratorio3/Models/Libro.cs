using System;
using System.Collections.Generic;

namespace AR100621_Laboratorio3.Models
{
    public partial class Libro
    {
        public int CodigoLibro { get; set; }
        public string? Titulo { get; set; }
        public string? Isbn { get; set; }
        public string? AnioEdicion { get; set; }
        public string? Editorial { get; set; }
        public int? IdAutor { get; set; }
        public string? Descripcion { get; set; }

        public virtual Autores? OAutores { get; set; }
    }
}
