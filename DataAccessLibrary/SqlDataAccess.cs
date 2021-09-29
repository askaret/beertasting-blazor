using Dapper;
using Microsoft.Extensions.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLibrary
{
    public class SqlDataAccess : ISqlDataAccess
    {
        private readonly IConfiguration _configuration;

        public string ConnectionStringName { get; } = Environment.MachineName.ToUpperInvariant();

        public SqlDataAccess(IConfiguration configuration)
        {
            _configuration = configuration;

            var connectionString = _configuration.GetConnectionString(ConnectionStringName);

            if (connectionString == null)
                ConnectionStringName = "AZURE";

        }

        public async Task<List<T>> LoadData<T, U>(string query, U parameters)
        {
            var connectionString = _configuration.GetConnectionString(ConnectionStringName);

            using IDbConnection connection = new SqlConnection(connectionString);
            var data = await connection.QueryAsync<T>(query, parameters);
            return data.ToList();
        }

        public async Task SaveData<T>(string sql, T parameters)
        {
            var connectionString = _configuration.GetConnectionString(ConnectionStringName);

            using IDbConnection connection = new SqlConnection(connectionString);
            await connection.ExecuteAsync(sql, parameters);
        }

        public async Task<T> LoadSingle<T, U>(string query, U parameters)
        {
            var connectionString = _configuration.GetConnectionString(ConnectionStringName);

            using IDbConnection connection = new SqlConnection(connectionString);
            return await connection.QueryFirstOrDefaultAsync<T>(query, parameters);
        }

        public async Task DeleteData<T>(string sql, T parameters)
        {
            var connectionString = _configuration.GetConnectionString(ConnectionStringName);

            using IDbConnection connection = new SqlConnection(connectionString);
            await connection.ExecuteAsync(sql, parameters);
        }
    }
}
