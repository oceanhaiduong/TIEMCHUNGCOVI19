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
    public partial class FormQuanLyTaiKhoan : Form
    {
        Covid19ContextDB context = new Covid19ContextDB();
        public FormQuanLyTaiKhoan()
        {
            InitializeComponent();
        }

        private void FormQuanLyTaiKhoan_Load(object sender, EventArgs e)
        {
            SetGridViewStyle(dgvQLTaiKhoan); // Màu sắc cho bảng DataGridview
            GetData();

        }

        private void GetData()
        {
            // Lấy ra thông quyền
            List<Quyen> listQuyen = context.Quyens.ToList();
            FillCmbQuyen(listQuyen);

            // Lấy ra thông tin tài khoản
            List<TaiKhoan> listTaiKhoan = context.TaiKhoans.ToList();
            BindGridTaiKhoan(listTaiKhoan);
        }

        // Hiển thị tên loại lên cmb 
        private void FillCmbQuyen(List<Quyen> listQuyen)
        {
            this.cmbQuyen.DataSource = listQuyen;
            this.cmbQuyen.DisplayMember = "TenQuyen";
            this.cmbQuyen.ValueMember = "MaQuyen";
        }

        private void BindGridTaiKhoan(List<TaiKhoan> listTaiKhoan)
        {
            dgvQLTaiKhoan.Rows.Clear();
            int STT = 0;
            foreach (var item in listTaiKhoan)
            {
                int index = dgvQLTaiKhoan.Rows.Add();
                STT++;
                dgvQLTaiKhoan.Rows[index].Cells[0].Value = STT;
                dgvQLTaiKhoan.Rows[index].Cells[1].Value = item.TenTaiKhoan;
                dgvQLTaiKhoan.Rows[index].Cells[2].Value = item.MatKhau;
                dgvQLTaiKhoan.Rows[index].Cells[3].Value = item.Quyen.TenQuyen;
            }
        }

        // Hiển thị dữ tài khoản từ DataGildView lên phần nhập liệu
        private void dgvKhuVuc_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                int numrow;
                numrow = e.RowIndex;
                if (numrow < dgvQLTaiKhoan.Rows.Count)
                {
                    txtUserName.Text = dgvQLTaiKhoan.Rows[numrow].Cells[1].Value.ToString();
                    cmbQuyen.Text = dgvQLTaiKhoan.Rows[numrow].Cells[3].Value.ToString();
                }
            }
            catch { } // Không cần thông báo
        }

        public void SetGridViewStyle(DataGridView dgvQLTaiKhoan)
        {
            dgvQLTaiKhoan.BorderStyle = BorderStyle.None;
            //dgvQLTaiKhoan.AllowUserToAddRows = false;
        }

        private bool CheckValidate()
        {
            try { 
                if (txtUserName.Text == "")
                    throw new Exception("Vui lòng nhập tên tài khoản !");
            }catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
            return true;
        }

        private void refresh()
        {
            txtUserName.Text = "";
        }

        // Sửa Quyền 
        private void btnSuaQuyen_Click(object sender, EventArgs e)
        {
            if (CheckValidate())
            {
                TaiKhoan dbUpdate = context.TaiKhoans.FirstOrDefault(p => p.TenTaiKhoan == txtUserName.Text);
                if (dbUpdate != null)
                {
                    if (cmbQuyen.Text == "Quản Lý")
                        dbUpdate.MaQuyen = "Q01";
                    else
                        dbUpdate.MaQuyen = "Q02";
                    context.SaveChanges();//lưu thay đổi
                    GetData();
                    refresh();
                    MessageBox.Show("Cập nhật dữ liệu thành công!", "Thông báo!");
                }
                else
                {
                    MessageBox.Show("Không tìm thấy đối tượng!", "Thông báo!");
                }
            }
        }

        private void btnXoaTaiKhoan_Click(object sender, EventArgs e)
        {
            ////Lấy ra một danh sách tài khoản
            TaiKhoan dbDelete = context.TaiKhoans.FirstOrDefault(p => p.TenTaiKhoan == txtUserName.Text);

            if (dbDelete != null)
            {
                DialogResult dr = MessageBox.Show("Bạn có muốn xoá?", "Yes/No", MessageBoxButtons.YesNo);
                if (dr == DialogResult.Yes)
                {
                    context.TaiKhoans.Remove(dbDelete);
                    context.SaveChanges(); //Lưu thay dổi
                    GetData();
                    refresh();
                    MessageBox.Show("Xóa danh sách xét nghiệm thành công!", "Thông báo", MessageBoxButtons.OK);
                }
            }
            else
            {
                MessageBox.Show("Không tìm thấy danh sách xét nghiệm để xóa!", "Thông báo", MessageBoxButtons.OK);
            }
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            string taikhoan = txtSeachTK.Text.ToLower().Trim();
            Covid19ContextDB context = new Covid19ContextDB();
            List<TaiKhoan> listTaiKhoan = context.TaiKhoans.ToList();
            List<TaiKhoan> listSearch = listTaiKhoan.Where(s => s.TenTaiKhoan.Contains(taikhoan)).ToList();
            BindGridTaiKhoan(listSearch);
        }
    }
}
