
namespace DataAccessLibrary
{
    public interface ISqlDataAccess
    {
        string ConnectionStringName { get; set; }
        Task<T> LoadSingle<T, U>(string query, U parameters);
        Task<List<T>> LoadData<T, U>(string query, U parameters);
        Task SaveData<T>(string sql, T parameters);
    }
}