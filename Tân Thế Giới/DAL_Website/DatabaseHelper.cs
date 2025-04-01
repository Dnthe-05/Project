using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Website
{
    public class DatabaseHelper
    {
        private static string connectionString = "Data Source=LAPTOP-6GHC39JD;Initial Catalog=QL_WEBSITEBANMAYTINH;Integrated Security=True;Encrypt=True;TrustServerCertificate=True";

        public static SqlConnection GetConnection()
        {
            return new SqlConnection(connectionString);
        }
    }
}
