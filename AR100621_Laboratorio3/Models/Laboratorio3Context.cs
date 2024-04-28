using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace AR100621_Laboratorio3.Models
{
    public partial class Laboratorio3Context : DbContext
    {
        public Laboratorio3Context()
        {
        }

        public Laboratorio3Context(DbContextOptions<Laboratorio3Context> options)
            : base(options)
        {
        }

        public virtual DbSet<Autores> Autores { get; set; } = null!;
        public virtual DbSet<Libro> Libros { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Autores>(entity =>
            {
                entity.HasKey(e => e.IdAutor)
                    .HasName("PK__autores__9AE8206A068AC38A");

                entity.ToTable("autores");

                entity.Property(e => e.IdAutor).HasColumnName("idAutor");

                entity.Property(e => e.Apellido)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("apellido");

                entity.Property(e => e.Nacionalidad)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("nacionalidad");

                entity.Property(e => e.Nombre)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("nombre");
            });

            modelBuilder.Entity<Libro>(entity =>
            {
                entity.HasKey(e => e.CodigoLibro)
                    .HasName("PK__libros__7ACBE181AF7D8B51");

                entity.ToTable("libros");

                entity.Property(e => e.CodigoLibro).HasColumnName("codigoLibro");

                entity.Property(e => e.AnioEdicion)
                    .HasMaxLength(4)
                    .IsUnicode(false)
                    .HasColumnName("anioEdicion");

                entity.Property(e => e.Descripcion)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("descripcion");

                entity.Property(e => e.Editorial)
                    .HasMaxLength(20)
                    .IsUnicode(false)
                    .HasColumnName("editorial");

                entity.Property(e => e.IdAutor).HasColumnName("idAutor");

                entity.Property(e => e.Isbn)
                    .HasMaxLength(15)
                    .IsUnicode(false)
                    .HasColumnName("isbn");

                entity.Property(e => e.Titulo)
                    .HasMaxLength(40)
                    .IsUnicode(false)
                    .HasColumnName("titulo");

                entity.HasOne(d => d.OAutores)
                    .WithMany(p => p.Libros)
                    .HasForeignKey(d => d.IdAutor)
                    .HasConstraintName("FK__libros__idAutor__3B75D760");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
