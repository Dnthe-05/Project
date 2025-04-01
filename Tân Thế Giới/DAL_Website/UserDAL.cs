using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Website
{
    public class UserDAL
    {
        public int CheckLogin(string username, string password)
        {
            using (SqlConnection conn = DatabaseHelper.GetConnection())
            {
                conn.Open();
                string query = "SELECT LOAITK FROM TAIKHOAN WHERE TENTK = @username AND MATKHAU = @password";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);

                object result = cmd.ExecuteScalar();
                return result != null ? Convert.ToInt32(result) : 0;  // Trả về LOAITK (1 = Admin, 2 = Nhân viên)
            }
        }
    }
}
