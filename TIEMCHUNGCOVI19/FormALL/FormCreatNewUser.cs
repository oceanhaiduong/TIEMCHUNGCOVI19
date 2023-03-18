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
    public partial class FormCreatNewUser : Form
    {
        public FormCreatNewUser()
        {
            InitializeComponent();
        }

        private void FormCreatNewUser_Load(object sender, EventArgs e)
        {
            // Lấy ra thông quyền
            Covid19ContextDB context = new Covid19ContextDB();
            List<Quyen> listQuyen = context.Quyens.ToList();
            FillCmbQuyen(listQuyen);
            txtPassWord.PasswordChar = '●';
            txtPassWordAgain.PasswordChar = '●';
        }

        // Hiển thị tên loại lên cmb 
        private void FillCmbQuyen(List<Quyen> listQuyen)
        {
            this.cmbQuyen.DataSource = listQuyen;
            this.cmbQuyen.DisplayMember = "TenQuyen";
            this.cmbQuyen.ValueMember = "MaQuyen";
        }

        // Check điều kiện nhập liệu tài khoản
        private bool CheckNhapLieu()
        {
            try
            {
                if (txtUserName.Text == "" || txtPassWord.Text == "" || txtPassWordAgain.Text == "")
                {
                    MessageBox.Show(" Vui lòng nhập đầy đủ thông tin!");
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

        private bool ChecKUserName(string username)
        {
            Covid19ContextDB context = new Covid19ContextDB();
            List<TaiKhoan> ListtkDangNhap = context.TaiKhoans.ToList();
            foreach (TaiKhoan item in ListtkDangNhap)
            {
                if (item.TenTaiKhoan == username)
                    return true;
            }
            return false;
        }

        private void Refesh()
        {
            txtUserName.Text = "";
            txtPassWord.Text = "";
            txtPassWordAgain.Text = "";
        }
        private void btnTaoMoiTK_Click(object sender, EventArgs e)
        {
            Covid19ContextDB context = new Covid19ContextDB();
            if (CheckNhapLieu())
            {
                bool kqCheckUser= ChecKUserName(txtUserName.Text);
                if (kqCheckUser == false)
                {
                    // Thêm một tài khoản mới
                    TaiKhoan itemUser = new TaiKhoan()
                    {
                        TenTaiKhoan = txtUserName.Text,
                        MatKhau = txtPassWord.Text,
                    };
                    if(cmbQuyen.SelectedIndex==0)
                        itemUser.MaQuyen = "Q01";
                    else
                        itemUser.MaQuyen = "Q02";
                    context.TaiKhoans.Add(itemUser);
                    context.SaveChanges(); // Lưu lại ... với bên Cơ Sở dữ liệu SQL
                    Refesh();
                    MessageBox.Show("Tạo tài khoản mới thành công !", "Thông Báo", MessageBoxButtons.OK);
                }
                else
                    MessageBox.Show("Tài khoản đã tồn tại !", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void optViewPass_CheckedChanged(object sender, EventArgs e)
        {
            if (optViewPass.Checked == true)
            {
                txtPassWord.PasswordChar = '\0';
                txtPassWordAgain.PasswordChar = '\0';
            }
            else
            {
                txtPassWord.PasswordChar = '●';
                txtPassWordAgain.PasswordChar = '●';
            }
        }

    }
}
