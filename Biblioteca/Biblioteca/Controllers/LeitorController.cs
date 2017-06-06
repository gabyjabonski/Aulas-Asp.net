using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Biblioteca.Controllers
{
    public class LeitorController
    {
        private BibliotecaContainer contexto = new BibliotecaContainer();

        public static void Adicionar(Leitor leitor)
        {

                contexto.Leitores.Add(leitor);
                contexto.SaveChanges();


        }

        public static void Editar(Leitor leitor)
        {
            contexto.Entry(leitor).State = System.Data.Entity.EntityState.Modified;
            contexto.SaveChanges();
        }

        public static void Excluir (Leitor leitor)
        {
            contexto.Entry(leitor).State = System.Data.Entity.EntityState.Deleted;
            contexto.SaveChanges();
        }

        public static Leitor LocalizarLeitor(string cpf)
        {
            return contexto.Leitores.FirstOrDefault(x => x.Cpf.Equals(cpf));

        }

        public List<Leitores> ListarLeitores()
        {
            return contexto.Leitores.ToList();
        }
    }
}