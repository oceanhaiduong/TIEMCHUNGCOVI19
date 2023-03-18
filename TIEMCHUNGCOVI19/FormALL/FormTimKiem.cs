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
    public partial class FormTimKiem : Form
    {
        public FormTimKiem()
        {
            InitializeComponent();
        }
        private void FormTimKiem_Load(object sender, EventArgs e)
        {
            //dgvNguoiDan.Visible = false;
        }

        // Dùng để tương tác gọi form Main
        public FormTimKiem(FormMain form)
        {
            InitializeComponent();
            formMain = form;
        }

        FormMain formMain = new FormMain();

        private void BindGrid(List<NguoiDan> listNguoiDan)
        {
            dgvNguoiDan.Rows.Clear();
            int STT = 0;
            Covid19ContextDB context = new Covid19ContextDB();
            List<PhieuChungNhan> listPhieuChungNhan = context.PhieuChungNhans.ToList();

            foreach (PhieuChungNhan kq in listPhieuChungNhan)
            {
                foreach (var item in listNguoiDan)
                {
                    if (kq.CMND == item.CMND)
                    {
                        int index = dgvNguoiDan.Rows.Add();
                        dgvNguoiDan.Rows[index].Cells[7].Value = kq.DotTiem.NgayTiem;
                        dgvNguoiDan.Rows[index].Cells[8].Value = kq.LanTiem;
                        dgvNguoiDan.Rows[index].Cells[9].Value = kq.DotTiem.LoaiVacXin.TenLoai;
                        STT++;
                        dgvNguoiDan.Rows[index].Cells[0].Value = STT;
                        dgvNguoiDan.Rows[index].Cells[1].Value = item.CMND;
                        dgvNguoiDan.Rows[index].Cells[2].Value = item.HoTen;
                        dgvNguoiDan.Rows[index].Cells[3].Value = item.SDT;
                        dgvNguoiDan.Rows[index].Cells[4].Value = item.NamSinh;
                        dgvNguoiDan.Rows[index].Cells[5].Value = item.GioiTinh;
                        dgvNguoiDan.Rows[index].Cells[6].Value = item.DiaChi + ", " + item.Phuong.TenPhuong + ", " + item.Quan.TenQuan;

                    }
                }
            }
            txtSL.Text = STT.ToString();
        }

        //hàm tra cứu người dân
        private bool TraCuuNguoiDan()
        {
            string cccd = txtCCCD.Text.Trim();
            string sdt = txtSDT.Text.Trim();
            string hoTen = txtHoTen.Text.ToLower().Trim();

            Covid19ContextDB context = new Covid19ContextDB();
            List<NguoiDan> listNguoiDan = context.NguoiDans.ToList();
            List<NguoiDan> listSearch = listNguoiDan.Where(s => s.CMND.Contains(cccd)
            && s.SDT.Contains(sdt) && s.HoTen.ToLower().Contains(hoTen)).ToList();
            if (cccd == "" && sdt == "" && hoTen == "")
            {
                MessageBox.Show("Nhập thông tin cần tìm kiếm ! ", "Thông Báo", MessageBoxButtons.OK);
                return false;
            }
            else
                BindGrid(listSearch);
            return true;
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            /*Question = true;
            formMain.ShowFormMain();*/
            this.Close();
        }

        private void bntTraCuu_Click(object sender, EventArgs e)
        {
            if (TraCuuNguoiDan() == true)
                dgvNguoiDan.Visible = true;
        }

        // Load Nhân viên Xét Nghiệm Lên DataGridView
        private void BindGridNVYT(List<NhanVienYT> listNhanVienYT)
        {
            dgvNhanVien.Rows.Clear();
            int STT = 0;
            foreach (var item in listNhanVienYT)
            {
                int index = dgvNhanVien.Rows.Add();
                STT++;
                dgvNhanVien.Rows[index].Cells[0].Value = STT;
                dgvNhanVien.Rows[index].Cells[1].Value = item.MaNhanVienYT;
                dgvNhanVien.Rows[index].Cells[2].Value = item.TenNhanVienYT;
                dgvNhanVien.Rows[index].Cells[3].Value = item.SDT;
                dgvNhanVien.Rows[index].Cells[4].Value = item.DoiNguYT.TenDoiNgu;
                dgvNhanVien.Rows[index].Cells[5].Value = item.CoQuan;
                dgvNhanVien.Rows[index].Cells[6].Value = item.Email;
            }
            txtSLNVYT.Text = STT.ToString();
        }

        //hàm tra cứu nhân viên
        private bool TraCuuNhanVien()
        {
            string maNV = txtMaNV.Text.ToLower().Trim();
            string sdt = txtSDT.Text.ToLower().Trim();
            string tenNV = txtHoTen.Text.ToLower().Trim();

            Covid19ContextDB context = new Covid19ContextDB();
            List<NhanVienYT> listNguoiDan = context.NhanVienYTs.ToList();
            List<NhanVienYT> listSearch = listNguoiDan.Where(s => s.MaNhanVienYT.ToLower().Contains(maNV)
            && s.SDT.Contains(sdt) && s.TenNhanVienYT.ToLower().Contains(tenNV)).ToList();
            if (maNV == "" && sdt == "" && tenNV == "")
            {
                MessageBox.Show("Nhập thông tin cần tìm kiếm ! ", "Thông Báo", MessageBoxButtons.OK);
                return false;
            }
            else
                BindGridNVYT(listSearch);
            return true;
        }

        private void bntTraCuuNVYT_Click(object sender, EventArgs e)
        {
            if (TraCuuNhanVien() == true)
                dgvNhanVien.Visible = true;
        }

        private void btnBackHome_Click(object sender, EventArgs e)
        {
            formMain.ShowFormMain();
            Close();
        }
    }
}
