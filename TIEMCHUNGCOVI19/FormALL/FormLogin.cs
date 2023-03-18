using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using TIEMCHUNGCOVI19.FormALL;
using TIEMCHUNGCOVI19.Models;

namespace TIEMCHUNGCOVI19
{
    public partial class FormLogin : Form
    {
        public FormLogin()
        {
            InitializeComponent();
        }

        private void FormLogin_Load(object sender, EventArgs e)
        {
            txtPassWord.PasswordChar = '●';
        }

        // Khi thoát Form Login thì thoát chương trình 
        public void FormLogin_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }

        // Ẩn đi From Login
        public void HideFormLogin()
        {
            this.Visible = false;
        }

        // Hiện lại From Login
        public void ShowFormLogin()
        {
            this.Visible = true;
        }
        

        public void btnLogin_Click(object sender, EventArgs e)
        {
            Covid19ContextDB context = new Covid19ContextDB();
            List<TaiKhoan> ListTKDangNhap = context.TaiKhoans.ToList();
            bool checkDangNhap = false;
            foreach (TaiKhoan item in ListTKDangNhap)
            {
                if (txtUserName.Text.ToLower() == item.TenTaiKhoan.ToLower() && txtPassWord.Text == item.MatKhau)
                {
                    FormMain formMain = new FormMain(this);
                    formMain.Opacity = 0;
                    formMain.Show();
                    formMain.Opacity = 1;
                    HideFormLogin();
                    checkDangNhap = true;
                    break;
                }
            }
            if (checkDangNhap == false)
                    MessageBox.Show("Tên tài khoản hoặc mật khẩu không chính xác!", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }

        // Hiển thị mật khẩu phần đăng nhập
        private void optViewPass_CheckedChanged(object sender, EventArgs e)
        {
            if (optViewPass.Checked == true)
                txtPassWord.PasswordChar = '\0';
            else
                txtPassWord.PasswordChar = '●';
        }

        // Mở form đổi mật khẩu
        public void ChangePassWord()
        {
            FormChangePassWord formUpdatePas = new FormChangePassWord(this);
            formUpdatePas.ShowDialog();
        }



    }
}
