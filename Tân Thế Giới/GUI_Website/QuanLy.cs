using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GUI_Website
{
    public partial class QuanLy : Form
    {
        public QuanLy()
        {
            InitializeComponent();
        }

        private void button6_Click(object sender, EventArgs e)
        {

        }

        private void btn_Thoat_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Bạn có chắc muốn đăng xuất?", "Xác nhận", MessageBoxButtons.YesNo, MessageBoxIcon.Question);

            if (result == DialogResult.Yes)
            {
                DangNhap loginForm = new DangNhap();
                loginForm.Show();

                this.Close(); // Đóng AdminForm

            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            QuanLy_NhanVien newform = new QuanLy_NhanVien();
            newform.Show();
            this.Hide();
        }
    }
}
