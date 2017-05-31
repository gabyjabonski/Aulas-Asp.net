using Aula2505.Models;
using System.Collections.Generic;
using System.Linq;

namespace Aula2505.Controllers
{

    // CLASSE QUE REALIZA O CONTROLE DA APLICAÇÃO E DO BANCO (ADIÇÃO, REMOÇÃO, LOCALIZAÇÃO, EDIÇÃO
    public class CategoriasController
    {
        // referencia o contexto do banco.
        private BaseDadosContainer contexto = new BaseDadosContainer();

        public void Adicionar(Categoria categoria)
        {
            // adiciona uma categoria no contexto.
            contexto.Categorias.Add(categoria);
            //salva a adição da categoria
            contexto.SaveChanges();
        }

        public List<Categoria> Listar()
        {
            // retorna uma lista de categorias do contexto.
            return contexto.Categorias.ToList();
        }

        public Categoria LocalizarPorID(int id)
        {
            // localiza uma categoria por id (o método Find só funciona para chaves).
            return contexto.Categorias.Find(id);
        }

        public void Editar(Categoria categoria)
        {
            //sinaliza ao entity que deve ser feito um update no banco
            contexto.Entry(categoria).State = System.Data.Entity.EntityState.Modified;
            // salva o update
            contexto.SaveChanges();

        }

        public void Excluir(Categoria categoria)
        {
            //sinaliza ao entity que deve ser feito uma exclusão no banco
            contexto.Entry(categoria).State = System.Data.Entity.EntityState.Deleted;
            //salva a exclusão
            contexto.SaveChanges();
        }

    }
}