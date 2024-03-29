﻿
namespace DataAccessLibrary
{
    public interface ISqlDataAccess
    {
        string ConnectionStringName { get; }
        Task<T> LoadSingle<T, U>(string query, U parameters);
        Task<List<T>> LoadData<T, U>(string query, U parameters);
        Task SaveData<T>(string sql, T parameters);
        Task DeleteData<T>(string sql, T parameters);
    }
}