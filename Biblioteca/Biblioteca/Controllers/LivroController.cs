using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Biblioteca.Controllers
{
    public class LivroController
    {
        private BibliotecaContainer contexto = new BibliotecaContainer();

        public void Adicionar (Livro livro)
        {
            contexto.Livros.Add(livro);

            contexto.SaveChanges();
        }

        public List<Livro> Listar()
        {
            return contexto.Livros.ToList();
        }

        public static Livro LocalizarPorId(int id)
        {
            return contexto.Livros.Find(id);
        }

        public static Livro LocarlizarPorNome(string nome)
        {
            return contexto.Livros.FirstOrDefault(x => x.Nome.Equals(nome));
        }

        public void Editar(Livro livro)
        {
            contexto.Entry(livro).State = System.Data.Entity.EntityState.Modified;
            contexto.SaveChanges();

        }

        public void Excluir (Livro livro)
        {
            contexto.Entry(livro).State = System.Data.Entity.EntityState.Deleted;
            contexto.SaveChanges();
        }
    }
}