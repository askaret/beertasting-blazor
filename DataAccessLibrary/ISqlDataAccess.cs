
namespace DataAccessLibrary
{
    public interface ISqlDataAccess
    {
        string ConnectionStringName { get; set; }

        Task<List<T>> LoadData<T, U>(string query, U parameters);
        Task SaveData<T>(string sql, T parameters);
    }
}