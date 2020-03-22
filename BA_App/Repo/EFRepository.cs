using BA_App.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BA_App.Repo
{
    public class EFRepository<T> : IAsyncRepository<T>
    {
        protected readonly ApplicationDbContext _dbContext;

        public EFRepository(ApplicationDbContext dbContext)
        {
            _dbContext = dbContext;
        }
      
        public void SaveChanges()
        {
            _dbContext.SaveChanges();
        }

        T IAsyncRepository<T>.Add(T entity)
        {
            throw new NotImplementedException();
        }

        Task<T> IAsyncRepository<T>.AddAsync(T entity)
        {
            throw new NotImplementedException();
        }

        T IAsyncRepository<T>.AddCore(T entity)
        {
            throw new NotImplementedException();
        }

        void IAsyncRepository<T>.DeleteAll()
        {
            throw new NotImplementedException();
        }

        Task IAsyncRepository<T>.DeleteAsync(T entity)
        {
            throw new NotImplementedException();
        }

        T IAsyncRepository<T>.DeleteByID(int id)
        {
            throw new NotImplementedException();
        }

        T IAsyncRepository<T>.GetById(int id)
        {
            throw new NotImplementedException();
        }

        Task<T> IAsyncRepository<T>.GetByIdAsync(int id)
        {
            throw new NotImplementedException();
        }

        T IAsyncRepository<T>.GetByIdCore(int id)
        {
            throw new NotImplementedException();
        }

        List<T> IAsyncRepository<T>.ListAll()
        {
            throw new NotImplementedException();
        }

        Task<IReadOnlyList<T>> IAsyncRepository<T>.ListAllAsync()
        {
            throw new NotImplementedException();
        }

        IQueryable<T> IAsyncRepository<T>.ListAllQueryable()
        {
            throw new NotImplementedException();
        }

        void IAsyncRepository<T>.SaveChanges()
        {
            throw new NotImplementedException();
        }

        T IAsyncRepository<T>.Update(T entity)
        {
            throw new NotImplementedException();
        }

        Task IAsyncRepository<T>.UpdateAsync(T entity)
        {
            throw new NotImplementedException();
        }
    }
}
