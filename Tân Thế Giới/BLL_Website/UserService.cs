using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL_Website;
namespace BLL_Website
{
    public class UserService
    {
        private UserDAL userDAL = new UserDAL();

        public int Login(string username, string password)
        {
            return userDAL.CheckLogin(username, password);
        }
    }
}
