using TIEMCHUNGCOVI19.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using TIEMCHUNGCOVI19.FormALL;

namespace TIEMCHUNGCOVI19
{
    public partial class FormNhapLieu : Form
    {
        String QuyenHienTai = "Q01";
        public FormNhapLieu()
        {
            InitializeComponent();
        }

        Covid19ContextDB context = new Covid19ContextDB();
        private void FormNhapLieu_Load(object sender, EventArgs e)
        {
            GetData();
            SettingTaiKhoan();
        }

        public void SettingTaiKhoan()
        {
            TaiKhoan TaiKhoan = context.TaiKhoans.FirstOrDefault(p => p.TenTaiKhoan == formMain.btnIconUser.Text);
            List<Quyen> listQuyen = context.Quyens.ToList();
            //String QuyenHienTai = "";
            foreach (Quyen item in listQuyen)
            {
                if (item.MaQuyen == TaiKhoan.MaQuyen)
                    QuyenHienTai = item.MaQuyen;
            }

            if (QuyenHienTai == "Q01")
            {
                tabControl1.Controls.Remove(tabPage1);
                tabControl1.Controls.Remove(tabPage2);
                tabControl1.Controls.Remove(tabPage3);
                tabControl1.Controls.Remove(tabPage4);
                tabControl1.Controls.Remove(tabPage5);
                tabControl1.Controls.Remove(tabPage6);
                tabControl1.Controls.Remove(tabPage7);
                tabControl1.Controls.Add(tabPage1);
                tabControl1.Controls.Add(tabPage2);
                tabControl1.Controls.Add(tabPage3);
                tabControl1.Controls.Add(tabPage4);
                tabControl1.Controls.Add(tabPage5);
                tabControl1.Controls.Add(tabPage6);
                tabControl1.Controls.Add(tabPage7);
            }
            else
            {
                tabControl1.Controls.Remove(tabPage1);
                tabControl1.Controls.Remove(tabPage2);
                tabControl1.Controls.Remove(tabPage3);
                tabControl1.Controls.Remove(tabPage4);
                tabControl1.Controls.Remove(tabPage5);
                tabControl1.Controls.Remove(tabPage6);
                tabControl1.Controls.Remove(tabPage7);
                tabControl1.Controls.Add(tabPage2);
                tabControl1.Controls.Add(tabPage7);
            }
        }

        // Dùng để tương tác gọi form Main
        public FormNhapLieu(FormMain form)
        {
            InitializeComponent();
            formMain = form;
        }

        FormMain formMain = new FormMain();

        public void GetData()
        {
            try
            {
                // Lấy ra thông tin loại vacxin
                List<LoaiVacXin> listLoaiVacXin = context.LoaiVacXins.ToList();
                BindGridLoaiVacXin(listLoaiVacXin);

                // Lấy ra thông tin danh sách tiêm
                List<DanhSachTiem> listDanhSachTiem = context.DanhSachTiems.ToList();
                BindGridDanhSachTiem(listDanhSachTiem);

                // Lấy ra thông tin đội ngũ
                List<DoiNguYT> listDoiNguYT = context.DoiNguYTs.ToList();
                BindGridDoiNguYT(listDoiNguYT);

                // Lấy ra thông tin quận
                List<Quan> listQuan = context.Quans.ToList();
                BindGridQuan(listQuan); // Load quận

                // Lấy ra thông tin phường
                FillCmbQuan(listQuan); // Fill cho Phương
                GetDataPhuong();


                List<Quan> listQuanDotTiem = context.Quans.ToList();


                // Lấy ra thông tin nhân viên y tế
                List<NhanVienYT> listNhanVienYT = context.NhanVienYTs.ToList();
                BindGridNhanVienYT(listNhanVienYT);
                FillCmbMaDoiNgu(listDoiNguYT);

                // Lấy ra thông tin đợt tiêm
                List<DotTiem> listDotTiem = context.DotTiems.ToList();
                BindGridDotTiem(listDotTiem);
                FillCmbLoaiVacxin(listLoaiVacXin);
                FillCmbQuanDotTiem(listQuanDotTiem);
                FillCmbPhuongDotTiem();
                FillCmbMaSoDS(listDanhSachTiem);
                FillCmbMaDoiNgu(listDoiNguYT);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void FillCmbPhuongDotTiem()
        {
            List<Phuong> listPhuong = context.Phuongs.Where(
                 p => p.MaQuan == cmbQuan.SelectedValue.ToString()).ToList();

            this.cmbPhuong.DataSource = listPhuong;
            this.cmbPhuong.DisplayMember = "TenPhuong";
            this.cmbPhuong.ValueMember = "MaPhuong";
        }

        public void GetDataPhuong()
        {
            try
            {
               List<Phuong> listPhuong_ofQuan1 = context.Phuongs.Where(
               p => p.Quan.TenQuan == cmbMaQuan_fkPhuong.Text).ToList();
                BindGridPhuong(listPhuong_ofQuan1);
            }
            catch (Exception ex) { MessageBox.Show(ex.Message); }
        }

        //**********************************************Hàm fill combobox************************************************************


        private void FillCmbMaSoDS(List<DanhSachTiem> listDanhSachTiem)
        {
            this.cmbMaSoDS.DataSource = listDanhSachTiem;
            this.cmbMaSoDS.DisplayMember = "MaSoDS";
            this.cmbMaSoDS.ValueMember = "TenDanhSach";
        }

        private void FillCmbLoaiVacxin(List<LoaiVacXin> listLoaiVacXin)
        {
            this.cmbLoaiVacxin.DataSource = listLoaiVacXin;
            this.cmbLoaiVacxin.DisplayMember = "TenLoai";
            this.cmbLoaiVacxin.ValueMember = "MaLoai";
        }

        private void FillCmbMaDoiNgu(List<DoiNguYT> listDoiNguYT)
        {
            this.cmbMaDoiNgu.DataSource = listDoiNguYT;
            this.cmbMaDoiNgu.DisplayMember = "MaDoiNgu";
            this.cmbMaDoiNgu.ValueMember = "TenDoiNgu";

            this.cmbMaDN_fkDotTiem.DataSource = listDoiNguYT;
            this.cmbMaDN_fkDotTiem.DisplayMember = "MaDoiNgu";
            this.cmbMaDN_fkDotTiem.ValueMember = "TenDoiNgu";
        }

        private void FillCmbQuan(List<Quan> listQuan)
        {
            this.cmbMaQuan_fkPhuong.DataSource = listQuan;
            this.cmbMaQuan_fkPhuong.DisplayMember = "TenQuan";
            this.cmbMaQuan_fkPhuong.ValueMember = "MaQuan";
        }

        // Fill co đợt tiêm 
        private void FillCmbQuanDotTiem(List<Quan> listQuan)
        {
            this.cmbQuan.DataSource = listQuan;
            this.cmbQuan.DisplayMember = "TenQuan";
            this.cmbQuan.ValueMember = "MaQuan";

        }

        //**********************************************Hàm bindgrid************************************************************

        // Load đợt tiêm
        private void BindGridDotTiem(List<DotTiem> listDotTiem)
        {
            dgvDotTiem.Rows.Clear();
            int STT = 0;
            foreach (var item in listDotTiem)
            {
                int index = dgvDotTiem.Rows.Add();
                STT++;
                dgvDotTiem.Rows[index].Cells[0].Value = STT;
                dgvDotTiem.Rows[index].Cells[1].Value = item.MaDotTiem;
                dgvDotTiem.Rows[index].Cells[2].Value = item.NgayTiem.Date;
                dgvDotTiem.Rows[index].Cells[3].Value = item.MaQuan;
                dgvDotTiem.Rows[index].Cells[4].Value = item.MaPhuong;
                dgvDotTiem.Rows[index].Cells[5].Value = item.MaLoai;
                dgvDotTiem.Rows[index].Cells[6].Value = item.MaSoDS;
                dgvDotTiem.Rows[index].Cells[7].Value = item.MaDoiNgu;
            }
        }

        // Load nhân viên y tế
        private void BindGridNhanVienYT(List<NhanVienYT> listNhanVienYT)
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
                dgvNhanVien.Rows[index].Cells[4].Value = item.MaDoiNgu;
                dgvNhanVien.Rows[index].Cells[5].Value = item.CoQuan;
                dgvNhanVien.Rows[index].Cells[6].Value = item.Email;
            }
        }

        // Load quận
        private void BindGridQuan(List<Quan> listQuan)
        {
            dgvQuan.Rows.Clear();
            int STT = 0;
            foreach (var item in listQuan)
            {
                int index = dgvQuan.Rows.Add();
                STT++;
                dgvQuan.Rows[index].Cells[0].Value = STT;
                dgvQuan.Rows[index].Cells[1].Value = item.MaQuan;
                dgvQuan.Rows[index].Cells[2].Value = item.TenQuan;
            }
        }

        // Load phường
        private void BindGridPhuong(List<Phuong> listPhuong)
        {
            dgvPhuong.Rows.Clear();
            int STT = 0;
            foreach (var item in listPhuong)
            {
                int index = dgvPhuong.Rows.Add();
                STT++;
                dgvPhuong.Rows[index].Cells[0].Value = STT;
                dgvPhuong.Rows[index].Cells[1].Value = item.MaPhuong;
                dgvPhuong.Rows[index].Cells[2].Value = item.TenPhuong;
                dgvPhuong.Rows[index].Cells[3].Value = item.MaQuan;
            }
        }

        // Load đội ngũ y tế
        private void BindGridDoiNguYT(List<DoiNguYT> listDoiNguYT)
        {
            dgvDoiNgu.Rows.Clear();
            int STT = 0;
            foreach (var item in listDoiNguYT)
            {
                int index = dgvDoiNgu.Rows.Add();
                STT++;
                dgvDoiNgu.Rows[index].Cells[0].Value = STT;
                dgvDoiNgu.Rows[index].Cells[1].Value = item.MaDoiNgu;
                dgvDoiNgu.Rows[index].Cells[2].Value = item.TenDoiNgu;
            }
        }

        // Load danh sách tiêm
        private void BindGridDanhSachTiem(List<DanhSachTiem> listDanhSachTiem)
        {
            dgvDSTiem.Rows.Clear();
            int STT = 0;
            foreach (var item in listDanhSachTiem)
            {
                int index = dgvDSTiem.Rows.Add();
                STT++;
                dgvDSTiem.Rows[index].Cells[0].Value = STT;
                dgvDSTiem.Rows[index].Cells[1].Value = item.MaSoDS;
                dgvDSTiem.Rows[index].Cells[2].Value = item.TenDanhSach;
            }
        }

        // Load loại vacxin
        private void BindGridLoaiVacXin(List<LoaiVacXin> listLoaiVacXin)
        {
            dgvLoaiVacxin.Rows.Clear();
            int STT = 0;
            foreach (var item in listLoaiVacXin)
            {
                int index = dgvLoaiVacxin.Rows.Add();
                STT++;
                dgvLoaiVacxin.Rows[index].Cells[0].Value = STT;
                dgvLoaiVacxin.Rows[index].Cells[1].Value = item.MaLoai;
                dgvLoaiVacxin.Rows[index].Cells[2].Value = item.TenLoai;
                dgvLoaiVacxin.Rows[index].Cells[3].Value = item.SoMuiTiem;
            }
        }


        //**********************************************Hàm cellClick************************************************************

        // Hiển thị dữ liệu loại vacxin từ DataGildView lên phần nhập liệu
        private void dgvLoaiVacxin_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                int numrow;
                numrow = e.RowIndex;
                if (numrow < dgvLoaiVacxin.Rows.Count)
                {
                    txtMaLoai.Text = dgvLoaiVacxin.Rows[numrow].Cells[1].Value.ToString();
                    txtTenLoai.Text = dgvLoaiVacxin.Rows[numrow].Cells[2].Value.ToString();
                    txtSoMui.Text = dgvLoaiVacxin.Rows[numrow].Cells[3].Value.ToString();
                }
            }
            catch { } // Không cần thông báo
        }

        // Hiển thị dữ liệu danh sách tiêm từ DataGildView lên phần nhập liệu
        private void dgvDSTiem_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                int numrow;
                numrow = e.RowIndex;
                if (numrow < dgvDSTiem.Rows.Count)
                {
                    txtMaDS.Text = dgvDSTiem.Rows[numrow].Cells[1].Value.ToString();
                    txtTenDS.Text = dgvDSTiem.Rows[numrow].Cells[2].Value.ToString();
                }
            }
            catch { } // Không cần thông báo
        }

        private void cmbQuan_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillCmbPhuongDotTiem();
        }

        private void cmbMaQuan_fkPhuong_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetDataPhuong();
        }

        // Hiển thị dữ liệu đợt tiêm từ DataGildView lên phần nhập liệu
        private void dgvDotTiem_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                int numrow;
                numrow = e.RowIndex;
                if (numrow < dgvDotTiem.Rows.Count)
                {
                    txtMaDotTiem.Text = dgvDotTiem.Rows[numrow].Cells[1].Value.ToString();
                    string dgvDate = dgvDotTiem.Rows[numrow].Cells[2].Value.ToString();
                    dtpNgayTiem.Text = dgvDotTiem.Rows[numrow].Cells[2].Value.ToString();
                    List<Quan> listQuan = context.Quans.ToList();
                    List<Phuong> listPhuong = context.Phuongs.ToList();
                    List<LoaiVacXin> listLoaivacxin = context.LoaiVacXins.ToList();

                    String maquan = dgvDotTiem.Rows[numrow].Cells[3].Value.ToString();
                    String maphuong = dgvDotTiem.Rows[numrow].Cells[4].Value.ToString();
                    String maloai = dgvDotTiem.Rows[numrow].Cells[5].Value.ToString();
                    foreach (var item in listQuan)
                    {
                        if (maquan == item.MaQuan)
                            cmbQuan.Text = item.TenQuan; 
                    }
                    foreach (var item in listPhuong)
                    {
                        if (maphuong == item.MaPhuong)
                            cmbPhuong.Text = item.TenPhuong;
                    }
                    foreach (var item in listLoaivacxin)
                    {
                        if (maloai == item.MaLoai)
                            cmbLoaiVacxin.Text = item.TenLoai;
                    }
                   
                    cmbMaSoDS.Text = dgvDotTiem.Rows[numrow].Cells[6].Value.ToString();
                    cmbMaDoiNgu.Text = dgvDotTiem.Rows[numrow].Cells[7].Value.ToString();
                }
            }
            catch { } // Không cần thông báo
        }

        // Hiển thị dữ liệu đội ngũ y tế từ DataGildView lên phần nhập liệu
        private void dgvDoiNgu_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                int numrow;
                numrow = e.RowIndex;
                if (numrow < dgvDoiNgu.Rows.Count)
                {
                    txtMaDoiNgu.Text = dgvDoiNgu.Rows[numrow].Cells[1].Value.ToString();
                    txtTenDoiNgu.Text = dgvDoiNgu.Rows[numrow].Cells[2].Value.ToString();
                }
            }
            catch { } // Không cần thông báo
        }
        // Hiển thị dữ liệu phường từ DataGildView lên phần nhập liệu
        private void dgvPhuong_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                int numrow;
                numrow = e.RowIndex;
                if (numrow < dgvPhuong.Rows.Count)
                {
                    txtMaPhuong.Text = dgvPhuong.Rows[numrow].Cells[1].Value.ToString();
                    txtTenPhuong.Text = dgvPhuong.Rows[numrow].Cells[2].Value.ToString();
                    cmbMaQuan_fkPhuong.Text = dgvPhuong.Rows[numrow].Cells[3].Value.ToString();
                }
            }
            catch { } // Không cần thông báo
        }
        // Hiển thị dữ liệu quận từ DataGildView lên phần nhập liệu
        private void dgvQuan_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                int numrow;
                numrow = e.RowIndex;
                if (numrow < dgvQuan.Rows.Count)
                {
                    txtMaQuan.Text = dgvQuan.Rows[numrow].Cells[1].Value.ToString();
                    txtTenQuan.Text = dgvQuan.Rows[numrow].Cells[2].Value.ToString();
                }
            }
            catch { } // Không cần thông báo
        }

        // Hiển thị dữ liệu nhân viên y tế từ DataGildView lên phần nhập liệu
        private void dgvNhanVien_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                int numrow;
                numrow = e.RowIndex;
                if (numrow < dgvNhanVien.Rows.Count)
                {
                    txtMaNhanVien.Text = dgvNhanVien.Rows[numrow].Cells[1].Value.ToString();
                    txtTenNhanVien.Text = dgvNhanVien.Rows[numrow].Cells[2].Value.ToString();
                    txtSDT.Text = dgvNhanVien.Rows[numrow].Cells[3].Value.ToString();
                    cmbMaDoiNgu.Text = dgvNhanVien.Rows[numrow].Cells[4].Value.ToString();
                    txtCoQuan.Text = dgvNhanVien.Rows[numrow].Cells[5].Value.ToString();
                    txtEmail.Text = dgvNhanVien.Rows[numrow].Cells[6].Value.ToString();
                }
            }
            catch { } // Không cần thông báo
        }

        private void txtMaPhuong_Leave(object sender, EventArgs e)
        {
            if (dgvPhuong.RowCount == 0 && cmbMaQuan_fkPhuong.Text == "")
            {
                txtMaPhuong.BackColor = Color.Salmon;
                MessageBox.Show("Hệ thống chưa lấy được quận!\nVui lòng chọn quận lại!");
            } 
            else
                txtMaPhuong.BackColor = Color.White;
        }


        //**********************************************button thêm************************************************************

        // Thêm loại vacxin
        private void btnThem_LoaiVacxin_Click(object sender, EventArgs e)
        {
            //Covid19ContextDB context = new Covid19ContextDB();
            if (CheckValidate())
            {
                if (GetSelectedRow(txtMaLoai.Text.ToUpper()) == -1)
                {
                    LoaiVacXin s = new LoaiVacXin()
                    {
                        MaLoai = txtMaLoai.Text.ToUpper(),
                        TenLoai = txtTenLoai.Text,
                        SoMuiTiem = int.Parse(txtSoMui.Text),
                    };
                    context.LoaiVacXins.Add(s);

                    context.SaveChanges();//lưu thay đổi
                    GetData();
                    refresh();
                    MessageBox.Show("Thêm mới dữ liệu thành công!", "Thông báo!");
                }
                else
                {
                    MessageBox.Show("Dữ liệu đã tồn tại!", "Thông báo!");
                }
            }
        }

        // Thêm danh sách tiêm
        private void btnThem_DSTiem_Click(object sender, EventArgs e)
        {
            //Covid19ContextDB context = new Covid19ContextDB();
            if (CheckValidate())
            {
                if (GetSelectedRow(txtMaQuan.Text.ToUpper()) == -1)
                {
                    DanhSachTiem s = new DanhSachTiem()
                    {
                        MaSoDS = txtMaDS.Text.ToUpper(),
                        TenDanhSach = txtTenDS.Text,
                    };
                    context.DanhSachTiems.Add(s);

                    context.SaveChanges();//lưu thay đổi
                    GetData();
                    refresh();
                    MessageBox.Show("Thêm mới dữ liệu thành công!", "Thông báo!");
                }
                else
                {
                    MessageBox.Show("Dữ liệu đã tồn tại!", "Thông báo!");
                }
            }
        }

        // Thêm đội ngũ
        private void btnThem_DoiNgu_Click(object sender, EventArgs e)
        {
            //Covid19ContextDB context = new Covid19ContextDB();
            if (CheckValidate())
            {
                if (GetSelectedRow(txtMaDoiNgu.Text.ToUpper()) == -1)
                {
                    DoiNguYT s = new DoiNguYT()
                    {
                        MaDoiNgu = txtMaDoiNgu.Text.ToUpper(),
                        TenDoiNgu = txtTenDoiNgu.Text,
                    };
                    context.DoiNguYTs.Add(s);

                    context.SaveChanges();//lưu thay đổi
                    GetData();
                    refresh();
                    MessageBox.Show("Thêm mới dữ liệu thành công!", "Thông báo!");
                }
                else
                {
                    MessageBox.Show("Dữ liệu đã tồn tại!", "Thông báo!");
                }
            }
        }

        // Thêm phường
        private void btnThem_Phuong_Click(object sender, EventArgs e)
        {
            if (CheckValidate())
            {
                if (GetSelectedRow(txtMaPhuong.Text.ToUpper()) == -1)
                {
                    Phuong s = new Phuong()
                    {
                        MaPhuong = txtMaPhuong.Text.ToUpper(),
                        TenPhuong = txtTenPhuong.Text,
                        MaQuan = cmbMaQuan_fkPhuong.SelectedValue.ToString(),
                    };
                    context.Phuongs.Add(s);

                    context.SaveChanges();//lưu thay đổi
                    GetData();
                    refresh();
                    MessageBox.Show("Thêm mới dữ liệu thành công!", "Thông báo!");
                    indmaQuan = cmbMaQuan_fkPhuong.SelectedIndex;
                }
                else
                {
                    MessageBox.Show("Dữ liệu đã tồn tại!", "Thông báo!");
                }
            }
        }

        // Thêm quận
        private void btnThem_Quan_Click(object sender, EventArgs e)
        {
            if (CheckValidate())
            {
                if (GetSelectedRow(txtMaQuan.Text.ToUpper()) == -1)
                {
                    Quan s = new Quan()
                    {
                        MaQuan = txtMaQuan.Text.ToUpper(),
                        TenQuan = txtTenQuan.Text,
                    };
                    context.Quans.Add(s);
                    context.SaveChanges();//lưu thay đổi
                    GetData();
                    refresh();
                    MessageBox.Show("Thêm mới dữ liệu thành công!", "Thông báo!");
                }
                else
                {
                    MessageBox.Show("Dữ liệu đã tồn tại!", "Thông báo!");
                }
            }
        }


        // Thêm nhân viên y tế
        private void btnThem_NVYT_Click(object sender, EventArgs e)
        {
            if (CheckValidate())
            {
                if (GetSelectedRow(txtMaNhanVien.Text.ToUpper()) == -1)
                {
                    NhanVienYT s = new NhanVienYT()
                    {
                        MaNhanVienYT = txtMaNhanVien.Text.ToUpper(),
                        TenNhanVienYT = txtTenNhanVien.Text,
                        SDT = txtSDT.Text,
                        MaDoiNgu = cmbMaDoiNgu.Text,
                        CoQuan = txtCoQuan.Text,
                        Email = txtEmail.Text,
                    };
                    context.NhanVienYTs.Add(s);

                    context.SaveChanges();//lưu thay đổi
                    GetData();
                    refresh();
                    MessageBox.Show("Thêm mới dữ liệu thành công!", "Thông báo!");
                }
                else
                {
                    MessageBox.Show("Dữ liệu đã tồn tại!", "Thông báo!");
                }
            }
        }

        // Thêm đợt tiêm
        private void btnThem_DotTiem_Click(object sender, EventArgs e)
        {
            if (CheckValidate())
            {
                if (GetSelectedRow(txtMaDotTiem.Text.ToUpper()) == -1)
                {
                    DotTiem s = new DotTiem()
                    {
                        MaDotTiem = txtMaDotTiem.Text.ToUpper(),
                        NgayTiem = dtpNgayTiem.Value.Date,
                        MaLoai = cmbLoaiVacxin.SelectedValue.ToString(),
                        MaQuan = cmbQuan.SelectedValue.ToString(),
                        MaPhuong = cmbPhuong.SelectedValue.ToString(),
                        MaSoDS = cmbMaSoDS.Text,
                        MaDoiNgu = cmbMaDoiNgu.Text,
                    };
                    context.DotTiems.Add(s);
                    context.SaveChanges();//lưu thay đổi
                    GetData();
                    refresh();
                    MessageBox.Show("Thêm mới dữ liệu thành công!", "Thông báo!");
                }
                else
                {
                    MessageBox.Show("Dữ liệu đã tồn tại!", "Thông báo!");
                }
            }
        }

        //=============================================Hàm lấy vị trí Row===========================================
        private int GetSelectedRow(string ind)
        {
            if (QuyenHienTai == "Q01")
            {
                //Lấy vị trí row ở datagridview loại vacxin
                if (tabControl1.SelectedTab == tabControl1.TabPages[0])
                {
                    for (int i = 0; i < dgvLoaiVacxin.Rows.Count; i++)
                        if (dgvLoaiVacxin.Rows[i].Cells[1].Value.ToString() == ind)
                        {
                            return i;
                        }
                }

                //Lấy vị trí row ở datagridview danh sách tiêm
                if (tabControl1.SelectedTab == tabControl1.TabPages[1])
                {
                    for (int i = 0; i < dgvDSTiem.Rows.Count; i++)
                        if (dgvDSTiem.Rows[i].Cells[1].Value.ToString() == ind)
                        {
                            return i;
                        }
                }

                //Lấy vị trí row ở datagridview đội ngũ
                if (tabControl1.SelectedTab == tabControl1.TabPages[2])
                {
                    for (int i = 0; i < dgvDoiNgu.Rows.Count; i++)
                        if (dgvDoiNgu.Rows[i].Cells[1].Value.ToString() == ind)
                        {
                            return i;
                        }
                }

                //Lấy vị trí row ở datagridview phường
                if (tabControl1.SelectedTab == tabControl1.TabPages[3])
                {
                    for (int i = 0; i < dgvPhuong.Rows.Count; i++)
                        if (dgvPhuong.Rows[i].Cells[1].Value.ToString() == ind)
                        {
                            return i;
                        }
                }

                //Lấy vị trí row ở datagridview quận
                if (tabControl1.SelectedTab == tabControl1.TabPages[4])
                {
                    for (int i = 0; i < dgvQuan.Rows.Count; i++)
                        if (dgvQuan.Rows[i].Cells[1].Value.ToString() == ind)
                        {
                            return i;
                        }
                }

                //Lấy vị trí row ở datagridview nhân viên y tế
                if (tabControl1.SelectedTab == tabControl1.TabPages[5])
                {
                    for (int i = 0; i < dgvNhanVien.Rows.Count; i++)
                        if (dgvNhanVien.Rows[i].Cells[1].Value.ToString() == ind)
                        {
                            return i;
                        }
                }

                //Lấy vị trí row ở datagridview đợt tiêm
                if (tabControl1.SelectedTab == tabControl1.TabPages[6])
                {
                    for (int i = 0; i < dgvDotTiem.Rows.Count; i++)
                        if (dgvDotTiem.Rows[i].Cells[1].Value.ToString() == ind)
                        {
                            return i;
                        }
                }
            }
            else
            {
                //Lấy vị trí row ở datagridview danh sách tiêm
                if (tabControl1.SelectedTab == tabControl1.TabPages[1])
                {
                    for (int i = 0; i < dgvDSTiem.Rows.Count; i++)
                        if (dgvDSTiem.Rows[i].Cells[1].Value.ToString() == ind)
                        {
                            return i;
                        }
                }

                //Lấy vị trí row ở datagridview đợt tiêm
                if (tabControl1.SelectedTab == tabControl1.TabPages[1])
                {
                    for (int i = 0; i < dgvDotTiem.Rows.Count; i++)
                        if (dgvDotTiem.Rows[i].Cells[1].Value.ToString() == ind)
                        {
                            return i;
                        }
                }
            }

            return -1;
        }


        //=========================================Refesh các ô nhập liệu sinh viên=================================
        int indmaQuan = 0;

        private void refresh()
        {
            if (QuyenHienTai == "Q01")
            {
                //Refesh các ô ở tab loại vacxin
                if (tabControl1.SelectedTab == tabControl1.TabPages[0])
                {
                    txtMaLoai.Text = "";
                    txtTenLoai.Text = "";
                    txtSoMui.Text = "";
                }

                //Refesh các ô ở tab danh sách tiêm
                if (tabControl1.SelectedTab == tabControl1.TabPages[1])
                {
                    txtMaQuan.Text = "";
                    txtTenDS.Text = "";
                }

                //Refesh các ô ở tab đội ngũ
                if (tabControl1.SelectedTab == tabControl1.TabPages[2])
                {
                    txtMaDoiNgu.Text = "";
                    txtTenDoiNgu.Text = "";
                }

                //Refesh các ô ở tab phường
                if (tabControl1.SelectedTab == tabControl1.TabPages[3])
                {
                    txtMaPhuong.Text = "";
                    txtTenPhuong.Text = "";
                    cmbMaQuan_fkPhuong.SelectedIndex = indmaQuan;
                    GetDataPhuong();
                }

                //Refesh các ô ở tab quận
                if (tabControl1.SelectedTab == tabControl1.TabPages[4])
                {
                    txtMaQuan.Text = "";
                    txtTenQuan.Text = "";
                }

                //Refesh các ô ở tab nhân viên y tế
                if (tabControl1.SelectedTab == tabControl1.TabPages[5])
                {
                    txtMaNhanVien.Text = "";
                    txtTenNhanVien.Text = "";
                    txtSDT.Text = "";
                    cmbMaDoiNgu.SelectedIndex = 0;
                    txtCoQuan.Text = "";
                    txtEmail.Text = "";
                }

                //Refesh các ô ở tab đợt tiêm
                if (tabControl1.SelectedTab == tabControl1.TabPages[6])
                {
                    //txtMaDotTiem.Text = "";
                    //dtpNgayTiem.Text = "14/01/2022";
                    //cmbLoaiVacxin.SelectedIndex = 0;
                    //cmbQuan.SelectedIndex = 0;
                    //cmbPhuong.SelectedIndex = 0;
                    //cmbMaSoDS.SelectedIndex = 0;
                    //cmbMaDN_fkDotTiem.SelectedIndex = 0;
                }
            }
            else
            {
                //Refesh các ô ở tab danh sách tiêm
                if (tabControl1.SelectedTab == tabControl1.TabPages[0])
                {
                    txtMaQuan.Text = "";
                    txtTenDS.Text = "";
                }

                //Refesh các ô ở tab đợt tiêm
                if (tabControl1.SelectedTab == tabControl1.TabPages[1])
                {
                    txtMaDotTiem.Text = "";
                    dtpNgayTiem.Text = "14/01/2022";
                    cmbLoaiVacxin.SelectedIndex = 0;
                    cmbQuan.SelectedIndex = 0;
                    cmbPhuong.SelectedIndex = 0;
                    cmbMaSoDS.SelectedIndex = 0;
                    cmbMaDN_fkDotTiem.SelectedIndex = 0;
                }

            }
        }

        //=========================================Kiểm tra điều kiện nhập liệu=====================================
        private bool CheckValidate()
        {

            if (QuyenHienTai == "Q01")
            {
                try
                {
                    //kiểm tra nhập liệu ở tab loại vacxin
                    if (tabControl1.SelectedTab == tabControl1.TabPages[0])
                    {
                        if (txtMaLoai.Text == "" || txtTenLoai.Text == "" || txtSoMui.Text == "")
                        {
                            throw new Exception("Vui lòng nhập đầy đủ thông tin");
                        }
                    }

                    //kiểm tra nhập liệu ở tab danh sách tiêm
                    if (tabControl1.SelectedTab == tabControl1.TabPages[1])
                    {
                        if (txtMaDS.Text == "" || txtTenDS.Text == "")
                        {
                            throw new Exception("Vui lòng nhập đầy đủ thông tin");
                        }
                    }

                    //kiểm tra nhập liệu ở tab đội ngũ
                    if (tabControl1.SelectedTab == tabControl1.TabPages[2])
                    {
                        if (txtMaDoiNgu.Text == "" || txtTenDoiNgu.Text == "")
                        {
                            throw new Exception("Vui lòng nhập đầy đủ thông tin");
                        }
                    }

                    //kiểm tra nhập liệu ở tab phường
                    if (tabControl1.SelectedTab == tabControl1.TabPages[3])
                    {
                        if (txtMaPhuong.Text == "" || txtTenPhuong.Text == "" || cmbMaQuan_fkPhuong.Text == "")
                        {
                            throw new Exception("Vui lòng nhập đầy đủ thông tin");
                        }
                    }

                    //kiểm tra nhập liệu ở tab quận
                    if (tabControl1.SelectedTab == tabControl1.TabPages[4])
                    {
                        if (txtMaQuan.Text == "" || txtTenQuan.Text == "")
                        {
                            throw new Exception("Vui lòng nhập đầy đủ thông tin");
                        }
                    }

                    //kiểm tra nhập liệu ở tab nhân viên y tế
                    if (tabControl1.SelectedTab == tabControl1.TabPages[5])
                    {
                        if (txtMaNhanVien.Text == "" || txtTenNhanVien.Text == "" || txtSDT.Text == ""
                            || txtEmail.Text == "" || txtCoQuan.Text == "" || cmbMaSoDS.Text == "")
                        {
                            throw new Exception("Vui lòng nhập đầy đủ thông tin");
                        }
                    }

                    //kiểm tra nhập liệu ở tab đợt tiêm
                    if (tabControl1.SelectedTab == tabControl1.TabPages[6])
                    {
                        if (txtMaDotTiem.Text == "" || dtpNgayTiem.Text == "" || cmbLoaiVacxin.Text == ""
                            || cmbQuan.Text == "" || cmbPhuong.Text == ""
                            || cmbMaSoDS.Text == "" || cmbMaDN_fkDotTiem.Text == "")
                        {
                            throw new Exception("Vui lòng nhập đầy đủ thông tin");
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    return false;
                }
            }
            else
            {
                try
                {
                    //kiểm tra nhập liệu ở tab danh sách tiêm
                    if (tabControl1.SelectedTab == tabControl1.TabPages[0])
                    {
                        if (txtMaDS.Text == "" || txtTenDS.Text == "")
                        {
                            throw new Exception("Vui lòng nhập đầy đủ thông tin");
                        }
                    }

                    //kiểm tra nhập liệu ở tab đợt tiêm
                    if (tabControl1.SelectedTab == tabControl1.TabPages[1])
                    {
                        if (txtMaDotTiem.Text == "" || dtpNgayTiem.Text == "" || cmbLoaiVacxin.Text == ""
                            || cmbQuan.Text == "" || cmbPhuong.Text == ""
                            || cmbMaSoDS.Text == "" || cmbMaDN_fkDotTiem.Text == "")
                        {
                            throw new Exception("Vui lòng nhập đầy đủ thông tin");
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    return false;
                }
            }

            return true;
        }

        //**********************************************button thoát************************************************************
        private void btnThoat1_Click(object sender, EventArgs e)
        {
            formMain.ShowFormMain();
            Close();
        }
        //**********************************************button sửa************************************************************

        // Sửa thông tin loại vacxin
        private void btnSua_LoaiVacxin_Click(object sender, EventArgs e)
        {
            if (CheckValidate())
            {
                LoaiVacXin dbUpdate = context.LoaiVacXins.FirstOrDefault(p => p.MaLoai == txtMaLoai.Text);
                if (dbUpdate != null)
                {
                    dbUpdate.TenLoai = txtTenLoai.Text;
                    dbUpdate.SoMuiTiem = int.Parse(txtSoMui.Text);
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

        // Sửa thông tin danh sách tiêm
        private void btnSua_DSTiem_Click(object sender, EventArgs e)
        {
            if (CheckValidate())
            {
                DanhSachTiem dbUpdate = context.DanhSachTiems.FirstOrDefault(p => p.MaSoDS == txtMaDS.Text);
                if (dbUpdate != null)
                {
                    dbUpdate.TenDanhSach = txtTenDS.Text;

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

        // Sửa thông tin đội ngũ
        private void btnSua_DoiNgu_Click(object sender, EventArgs e)
        {
            if (CheckValidate())
            {
                DoiNguYT dbUpdate = context.DoiNguYTs.FirstOrDefault(p => p.MaDoiNgu == txtMaDoiNgu.Text);
                if (dbUpdate != null)
                {
                    dbUpdate.TenDoiNgu = txtTenDoiNgu.Text;

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

        // Sửa thông tin phường
        private void btnSua_Phuong_Click(object sender, EventArgs e)
        {
            if (CheckValidate())
            {
                Phuong dbUpdate = context.Phuongs.FirstOrDefault(p => p.MaPhuong == txtMaPhuong.Text);
                if (dbUpdate != null)
                {
                    dbUpdate.TenPhuong = txtTenPhuong.Text;
                    dbUpdate.MaQuan = cmbMaQuan_fkPhuong.SelectedValue.ToString();

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

        // Sửa thông tin quận
        private void btnSua_Quan_Click(object sender, EventArgs e)
        {
            if (CheckValidate())
            {
                Quan dbUpdate = context.Quans.FirstOrDefault(p => p.MaQuan == txtMaQuan.Text);
                if (dbUpdate != null)
                {
                    dbUpdate.TenQuan = txtTenQuan.Text;

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

        // Sửa thông tin nhân viên y tế
        private void btnSua_NVYT_Click(object sender, EventArgs e)
        {
            if (CheckValidate())
            {
                NhanVienYT dbUpdate = context.NhanVienYTs.FirstOrDefault(p => p.MaNhanVienYT == txtMaNhanVien.Text);
                if (dbUpdate != null)
                {
                    dbUpdate.TenNhanVienYT = txtTenNhanVien.Text;
                    dbUpdate.SDT = txtSDT.Text;
                    dbUpdate.MaDoiNgu = cmbMaDoiNgu.Text;
                    dbUpdate.CoQuan = txtCoQuan.Text;
                    dbUpdate.Email = txtEmail.Text;

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

        //Sửa thông tin đợt tiêm
        private void btnSua_DotTiem_Click(object sender, EventArgs e)
        {
            if (CheckValidate())
            {
                DotTiem dbUpdate = context.DotTiems.FirstOrDefault(p => p.MaDotTiem == txtMaDotTiem.Text);
                if (dbUpdate != null)
                {
                    dbUpdate.NgayTiem = dtpNgayTiem.Value.Date;
                    dbUpdate.MaLoai = cmbLoaiVacxin.SelectedValue.ToString();
                    dbUpdate.MaQuan = cmbQuan.SelectedValue.ToString();
                    dbUpdate.MaPhuong = cmbPhuong.SelectedValue.ToString();
                    dbUpdate.MaSoDS = cmbMaSoDS.Text;
                    dbUpdate.MaDoiNgu = cmbMaDoiNgu.Text;

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

        //**********************************************button xóa************************************************************

        // Xóa loại vacxin
        private void btnXoa_LoaiVacxin_Click(object sender, EventArgs e)
        {
            LoaiVacXin DelleteLoaiVacXin = context.LoaiVacXins.FirstOrDefault(p => p.MaLoai == txtMaLoai.Text);
            List<DotTiem> listDotTiem = context.DotTiems.Where(p => p.MaLoai == DelleteLoaiVacXin.MaLoai).ToList();
            if(DelleteLoaiVacXin != null)
            {
                if (listDotTiem.Count == 0)
                {
                    DialogResult dr = MessageBox.Show("Bạn có muốn xoá?", "Yes/No", MessageBoxButtons.YesNo);
                    if (dr == DialogResult.Yes)
                    {
                        context.LoaiVacXins.Remove(DelleteLoaiVacXin);
                        context.SaveChanges(); //Lưu thay dổi
                        GetData();
                        refresh();
                        MessageBox.Show("Xóa loại vắc xin thành công!", "Thông báo", MessageBoxButtons.OK);
                    }
                }
                else
                    MessageBox.Show("Dữ liệu đã tồn tại, không thể xóa  !", "Thông báo", MessageBoxButtons.OK);
            }
            else
                MessageBox.Show("Không tìm thấy đối tượng cần xóa !", "Thông báo", MessageBoxButtons.OK);
        }

        // Xóa danh sách tiêm
        private void btnXoa_DSTiem_Click(object sender, EventArgs e)
        {
            DanhSachTiem DelleteDSTiem= context.DanhSachTiems.FirstOrDefault(p => p.MaSoDS == txtMaDS.Text);
            List<DotTiem> listDotTiem = context.DotTiems.Where(p => p.MaSoDS == DelleteDSTiem.MaSoDS).ToList();
            List<NguoiDan> listNguoiDan = context.NguoiDans.Where(p => p.MaSoDS == DelleteDSTiem.MaSoDS).ToList();
            if (DelleteDSTiem != null)
            {
                if (listDotTiem.Count == 0 && listNguoiDan.Count == 0)
                {
                    DialogResult dr = MessageBox.Show("Bạn có muốn xoá?", "Yes/No", MessageBoxButtons.YesNo);
                    if (dr == DialogResult.Yes)
                    {
                        context.DanhSachTiems.Remove(DelleteDSTiem);
                        context.SaveChanges(); //Lưu thay dổi
                        GetData();
                        refresh();
                        MessageBox.Show("Xóa danh sách tiêm thành công!", "Thông báo", MessageBoxButtons.OK);
                    }
                }
                else
                    MessageBox.Show("Dữ liệu đã tồn tại, không thể xóa  !", "Thông báo", MessageBoxButtons.OK);
            }
            else
                MessageBox.Show("Không tìm thấy đối tượng cần xóa !", "Thông báo", MessageBoxButtons.OK);
        }

        // Xóa đội ngũ
        private void btnXoa_DoiNgu_Click(object sender, EventArgs e)
        {
            DoiNguYT DelleteDoiNguYT = context.DoiNguYTs.FirstOrDefault(p => p.MaDoiNgu == txtMaDoiNgu.Text);
            List<DotTiem> listDotTiem = context.DotTiems.Where(p => p.MaDoiNgu == DelleteDoiNguYT.MaDoiNgu).ToList();
            List<NhanVienYT> listNhanVienYT = context.NhanVienYTs.Where(p => p.MaDoiNgu == DelleteDoiNguYT.MaDoiNgu).ToList();
            if (DelleteDoiNguYT != null)
            {
                if (listDotTiem.Count == 0 && listNhanVienYT.Count == 0)
                {
                    DialogResult dr = MessageBox.Show("Bạn có muốn xoá?", "Yes/No", MessageBoxButtons.YesNo);
                    if (dr == DialogResult.Yes)
                    {
                        context.DoiNguYTs.Remove(DelleteDoiNguYT);
                        context.SaveChanges(); //Lưu thay dổi
                        GetData();
                        refresh();
                        MessageBox.Show("Xóa đội ngũ thành công!", "Thông báo", MessageBoxButtons.OK);
                    }
                }
                else
                    MessageBox.Show("Dữ liệu đã tồn tại, không thể xóa  !", "Thông báo", MessageBoxButtons.OK);
            }
            else
                MessageBox.Show("Không tìm thấy đối tượng cần xóa !", "Thông báo", MessageBoxButtons.OK);
        }

        // Xóa phường
        private void btnXoa_Phuong_Click(object sender, EventArgs e)
        {
            Phuong DelletePhuong = context.Phuongs.FirstOrDefault(p => p.MaPhuong == txtMaPhuong.Text);
            List<DotTiem> listDotTiem = context.DotTiems.Where(p => p.MaPhuong == DelletePhuong.MaPhuong).ToList();
            List<NguoiDan> listNguoiDan = context.NguoiDans.Where(p => p.MaPhuong == DelletePhuong.MaPhuong).ToList();
            if (DelletePhuong != null)
            {
                if (listDotTiem.Count == 0 && listNguoiDan.Count == 0)
                {
                    DialogResult dr = MessageBox.Show("Bạn có muốn xoá?", "Yes/No", MessageBoxButtons.YesNo);
                    if (dr == DialogResult.Yes)
                    {
                        context.Phuongs.Remove(DelletePhuong);
                        context.SaveChanges(); //Lưu thay dổi
                        GetData();
                        refresh();
                        MessageBox.Show("Xóa Phường thành công!", "Thông báo", MessageBoxButtons.OK);
                    }
                }
                else
                    MessageBox.Show("Dữ liệu đã tồn tại, không thể xóa  !", "Thông báo", MessageBoxButtons.OK);
            }
            else
                MessageBox.Show("Không tìm thấy đối tượng cần xóa !", "Thông báo", MessageBoxButtons.OK);
        }

        // Xóa quận
        private void btnXoa_Quan_Click(object sender, EventArgs e)
        {
            Quan DelleteQuan =  context.Quans.FirstOrDefault(p => p.MaQuan == txtMaQuan.Text);
            List<DotTiem> listDotTiem = context.DotTiems.Where(p => p.MaQuan == DelleteQuan.MaQuan).ToList();
            List<NguoiDan> listNguoiDan = context.NguoiDans.Where(p => p.MaQuan == DelleteQuan.MaQuan).ToList();
            List<Phuong> listPhuong = context.Phuongs.Where(p => p.MaQuan == DelleteQuan.MaQuan).ToList();
            if (DelleteQuan != null)
            {
                if (listDotTiem.Count == 0 && listNguoiDan.Count == 0 && listPhuong.Count == 0)
                {
                    DialogResult dr = MessageBox.Show("Bạn có muốn xoá?", "Yes/No", MessageBoxButtons.YesNo);
                    if (dr == DialogResult.Yes)
                    {
                        context.Quans.Remove(DelleteQuan);
                        context.SaveChanges(); //Lưu thay dổi
                        GetData();
                        refresh();
                        MessageBox.Show("Xóa Quận thành công!", "Thông báo", MessageBoxButtons.OK);
                    }
                }
                else
                    MessageBox.Show("Dữ liệu đã tồn tại, không thể xóa  !", "Thông báo", MessageBoxButtons.OK);
            }
            else
                MessageBox.Show("Không tìm thấy đối tượng cần xóa !", "Thông báo", MessageBoxButtons.OK);
        }

        // Xóa nhân viên y tế
        private void btnXoa_NVYT_Click(object sender, EventArgs e)
        {

            //Lấy ra một nhân viên y tế xét nghiệm 
            var MaNhanVien = txtMaNhanVien.Text;
            NhanVienYT dbDeleteNhanVienYT = context.NhanVienYTs.FirstOrDefault(p => p.MaNhanVienYT == MaNhanVien);
            List<PhieuChungNhan> ListDeleteKQ = context.PhieuChungNhans.Where(p => p.MaNhanVienYT == MaNhanVien).ToList();
            if (dbDeleteNhanVienYT != null)
            {
                if (ListDeleteKQ.Count == 0)
                {
                    DialogResult dr = MessageBox.Show("Bạn có muốn xoá?", "Yes/No", MessageBoxButtons.YesNo);
                    if (dr == DialogResult.Yes)
                    {
                        context.NhanVienYTs.Remove(dbDeleteNhanVienYT);
                        context.SaveChanges(); //Lưu thay dổi
                        GetData();
                        refresh();
                        MessageBox.Show("Xóa nhân viên y tế thành công!", "Thông báo", MessageBoxButtons.OK);
                    }
                }
                else
                    MessageBox.Show("Dữ liệu đã tồn tại, không thể xóa  !", "Thông báo", MessageBoxButtons.OK);
            }
            else
                MessageBox.Show("Không tìm thấy đối tượng cần xóa !", "Thông báo", MessageBoxButtons.OK);
        }

        // Xóa đợt tiêm
        private void btnXoa_DotTiem_Click(object sender, EventArgs e)
        {
            DotTiem DelleteDotTiem = context.DotTiems.FirstOrDefault(p => p.MaDotTiem == txtMaDotTiem.Text);
            List<PhieuChungNhan> listPhieuChungNhan = context.PhieuChungNhans.Where(p => p.MaDotTiem == DelleteDotTiem.MaDotTiem).ToList();
            if (DelleteDotTiem != null)
            {

                if (listPhieuChungNhan.Count == 0)
                {
                    DialogResult dr = MessageBox.Show("Bạn có muốn xoá?", "Yes/No", MessageBoxButtons.YesNo);
                    if (dr == DialogResult.Yes)
                    {
                        context.DotTiems.Remove(DelleteDotTiem);
                        context.SaveChanges(); //Lưu thay dổi
                        GetData();
                        refresh();
                        MessageBox.Show("Xóa đợt tiêm thành công!", "Thông báo", MessageBoxButtons.OK);
                    }
                }
                else
                    MessageBox.Show("Dữ liệu đã tồn tại, không thể xóa  !", "Thông báo", MessageBoxButtons.OK);
            }
            else
                MessageBox.Show("Không tìm thấy đối tượng cần xóa !", "Thông báo", MessageBoxButtons.OK);
        }

        private void tabPage4_Click(object sender, EventArgs e)
        {
            GetDataPhuong();
        }


        //============================================End===========================================
    }
}
