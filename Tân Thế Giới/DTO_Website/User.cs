using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO_Website
{
    public class User
    {
        public string TenTK { get; set; }
        public string MatKhau { get; set; }
        public int LoaiTK { get; set; }  // 1 = Admin, 2 = Nhân viên
    }
}
