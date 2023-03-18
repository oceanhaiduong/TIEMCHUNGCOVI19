using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using TIEMCHUNGCOVI19.Models;

namespace TIEMCHUNGCOVI19.FormALL
{
    public partial class FormChangePassWord : Form
    {
        public FormChangePassWord()
        {
            InitializeComponent();
        }

        private void FormChangePassWord_Load(object sender, EventArgs e)
        {
            txtPassWord.PasswordChar = '●';
            txtPassWordAgain.PasswordChar = '●';
            txtPassWordPresent.PasswordChar = '●';
        }

        // Dùng để tương tác gọi form Login
        public FormChangePassWord(FormLogin form)
        {
            InitializeComponent();
            formlogin = form;
        }
        FormLogin formlogin = new FormLogin();

        // Check điều kiện nhập liệu tài khoản
        private bool CheckNhapLieu()
        {
            try
            {
                if (txtPassWordPresent.Text == "" || txtPassWord.Text == "" || txtPassWordAgain.Text == "")
                {
                    MessageBox.Show(" Vui lòng nhập đầy đủ thông tin!");
                    return false;
                }
                if (txtPassWordPresent.Text.ToLower() != formlogin.txtPassWord.Text.ToLower())
                {
                    MessageBox.Show(" Mật khẩu hiện tại không đúng");
                    return false;
                }
                if (txtPassWord.Text != txtPassWordAgain.Text)
                {
                    MessageBox.Show("Mật khẩu không trùng khớp!");
                    return false;
                }
                if (int.Parse(txtPassWord.Text) - int.Parse(txtPassWord.Text) == 0)
                    return true;
            }
            catch
            {
                MessageBox.Show("Mật khẩu phải là số");
                return false;
            }
            return true;
        }


        private void Refesh()
        {
            txtPassWordPresent.Text = "";
            txtPassWord.Text = "";
            txtPassWordAgain.Text = "";
        }

        private void btnUpdateMk_Click(object sender, EventArgs e)
        {
            if (CheckNhapLieu())
            {
                Covid19ContextDB context = new Covid19ContextDB();
                var taikhoanhientai = formlogin.txtUserName.Text;
                TaiKhoan dbUpdate = context.TaiKhoans.FirstOrDefault(p => p.TenTaiKhoan == taikhoanhientai);
                // Đổi lại mật khẩu
                if (dbUpdate != null)
                {
                    dbUpdate.MatKhau = txtPassWord.Text;
                    context.SaveChanges(); //Lưu thay đổi
                    Refesh();
                    MessageBox.Show("Đổi mật khẩu thành công!", "Thông báo", MessageBoxButtons.OK);
                }
            }
        }

        private void optViewPass_CheckedChanged(object sender, EventArgs e)
        {
            if (optViewPass.Checked == true)
            {
                txtPassWord.PasswordChar = '\0';
                txtPassWordAgain.PasswordChar = '\0';
                txtPassWordPresent.PasswordChar = '\0';
            }
            else
            {
                txtPassWord.PasswordChar = '●';
                txtPassWordAgain.PasswordChar = '●';
                txtPassWordPresent.PasswordChar = '●';
            }
        }

    
    }
}
