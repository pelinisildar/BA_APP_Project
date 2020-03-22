using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BA_App.Repo
{
    public interface IAsyncRepository<T> 
    {
        T GetById(int id);
        T GetByIdCore(int id);
        Task<T> GetByIdAsync(int id);
        IQueryable<T> ListAllQueryable();

        List<T> ListAll();

        Task<IReadOnlyList<T>> ListAllAsync();
        Task<T> AddAsync(T entity);
        T Add(T entity);

        T AddCore(T entity);
        Task UpdateAsync(T entity);
        T Update(T entity);
        Task DeleteAsync(T entity);

        T DeleteByID(int id);
        void SaveChanges();

        void DeleteAll();
    }
}
