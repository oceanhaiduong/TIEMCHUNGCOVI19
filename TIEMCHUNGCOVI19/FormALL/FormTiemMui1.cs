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

namespace TIEMCHUNGCOVI19
{
    public partial class FormTiemMui1 : Form
    {
        public FormTiemMui1()
        {
            InitializeComponent();
        }
        DateTime timeToday = DateTime.Today;
        private void btnThoat_Click(object sender, EventArgs e)
        {
            refresh();
        }
        Covid19ContextDB context = new Covid19ContextDB();

        private void FormNhapNguoiDan_Load(object sender, EventArgs e)
        {
            GetDaTa();
            ChangeInfoDotTiem();
        }


        private void refresh()
        {
            txtCMND.Text = "";
            txtHoTen.Text = "";
            txtSDT.Text = "";
            txtDiaChi.Text = "";
            cmbTenNV.SelectedItem = 0;
            dtpNgaySinh.Text = timeToday.Date.ToString();
            optNam.Checked = true;
            optNu.Checked = false;
            cmbQuan.Text = "";
            cmbPhuong.Text = "";
        }

        private bool CheckValidate()
        {
            if (txtCMND.Text == "" 
                || txtHoTen.Text == "" 
                || txtSDT.Text == "" 
                || txtDiaChi.Text == ""
                || cmpDotTiem.Text == "" 
                || cmbPhuong.Text == "" 
                || cmbQuan.Text == "" 
                || cmbTenNV.Text == "")
            {
                MessageBox.Show(" Vui lòng nhập đầy đủ thông tin người dân");
                return false;
            }

            if (dtpNgaySinh.Value.Date >= timeToday.Date)
            {
                MessageBox.Show(" Lỗi nhập liệu ngày sinh");
                return false;
            }

            return true;
        }

        // Lấy dữ liệu từ SQL để render lên form 
        public void GetDaTa()
        {
            try
            {
                //Fill combobox quận
                List<Quan> listQuan = context.Quans.ToList();
                FillCmbQuan(listQuan);
                //Fill combobox phường
                FillCmbPhuong();

                // Fill combobox đợt tiêm 
                List<PhieuChungNhan> listPhieuChungNhan = context.PhieuChungNhans.Where(p => p.LanTiem == 1).ToList();
                List<DotTiem> listDotTiem = context.DotTiems.ToList();
                List<DotTiem> listDotTiemLan1 = new List<DotTiem>();
                foreach (DotTiem temp in listDotTiem)
                {
                    foreach (PhieuChungNhan item in listPhieuChungNhan)
                    {
                        if(temp.MaDotTiem == item.MaDotTiem)
                        {
                            listDotTiemLan1.Add(temp);
                            break;
                        }

                    }
                }
                FillCmbDotTiem(listDotTiemLan1);
                

                List<NhanVienYT> listNhanVienYT = context.NhanVienYTs.Where(p => p.DoiNguYT.MaDoiNgu == txtDoiNguTiem.Text.Trim()).ToList();
                FillCmbTenNV(listNhanVienYT);

                // Lấy ra thông tin người dân
                refreshData();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void FillCmbQuan(List<Quan> listQuan)
        {
            this.cmbQuan.DataSource = listQuan;
            this.cmbQuan.DisplayMember = "TenQuan";
            this.cmbQuan.ValueMember = "MaQuan";
        }

        private void FillCmbPhuong()
        {
            List<Phuong> listPhuong = context.Phuongs.Where(
               p => p.Quan.TenQuan == cmbQuan.Text).ToList();

            this.cmbPhuong.DataSource = listPhuong;
            this.cmbPhuong.DisplayMember = "TenPhuong";
            this.cmbPhuong.ValueMember = "MaPhuong";
        }

        private void FillCmbDotTiem(List<DotTiem> listDotTiem)
        {
            this.cmpDotTiem.DataSource = listDotTiem;
            this.cmpDotTiem.DisplayMember = "MaDotTiem";
            this.cmpDotTiem.ValueMember = "MaDotTiem";
        }

        private void FillCmbTenNV(List<NhanVienYT> listNhanVienYT)
        {
            this.cmbTenNV.DataSource = listNhanVienYT;
            this.cmbTenNV.DisplayMember = "TenNhanVienYT";
            this.cmbTenNV.ValueMember = "MaNhanVienYT";
        }

        private void BindGrid(List<PhieuChungNhan> ListphieuChungNhan)
        {
            dgvNguoiDan.Rows.Clear();
            int STT = 0;
            foreach (PhieuChungNhan item in ListphieuChungNhan)
            {
                int index = dgvNguoiDan.Rows.Add();
                dgvNguoiDan.Rows[index].Cells[9].Value = item.NhanVienYT.TenNhanVienYT;
                dgvNguoiDan.Rows[index].Cells[10].Value = item.DotTiem.NgayTiem;
                dgvNguoiDan.Rows[index].Cells[11].Value = item.LanTiem;
                dgvNguoiDan.Rows[index].Cells[12].Value = item.DotTiem.LoaiVacXin.TenLoai;
                STT++;
                dgvNguoiDan.Rows[index].Cells[0].Value = STT; 
                dgvNguoiDan.Rows[index].Cells[1].Value = item.NguoiDan.CMND;
                dgvNguoiDan.Rows[index].Cells[2].Value = item.NguoiDan.HoTen;
                dgvNguoiDan.Rows[index].Cells[3].Value = item.NguoiDan.SDT;
                String temp = item.NguoiDan.NamSinh;
                String NgaySinh = temp.Split('/')[1] + "/" + temp.Split('/')[0] + "/" + temp.Split('/')[2];
                dgvNguoiDan.Rows[index].Cells[4].Value = NgaySinh;
                dgvNguoiDan.Rows[index].Cells[5].Value = item.NguoiDan.GioiTinh;
                dgvNguoiDan.Rows[index].Cells[6].Value = item.NguoiDan.DiaChi;
                dgvNguoiDan.Rows[index].Cells[7].Value = item.NguoiDan.Phuong.TenPhuong;
                dgvNguoiDan.Rows[index].Cells[8].Value = item.NguoiDan.Quan.TenQuan;
            }
        }

        // Hiển thị dữ liệu từ DataGildView lên phần nhập liệu
        private void dgvNguoiDan_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                int numrow;
                numrow = e.RowIndex;
                if (numrow < dgvNguoiDan.Rows.Count)
                {
                    txtCMND.Text = dgvNguoiDan.Rows[numrow].Cells[1].Value.ToString();
                    txtHoTen.Text = dgvNguoiDan.Rows[numrow].Cells[2].Value.ToString();
                    txtSDT.Text = dgvNguoiDan.Rows[numrow].Cells[3].Value.ToString();
                    dtpNgaySinh.Text = dgvNguoiDan.Rows[numrow].Cells[4].Value.ToString();
                    string checkGioiTinh = dgvNguoiDan.Rows[numrow].Cells[5].Value.ToString();
                    if (checkGioiTinh == "Nam")
                        optNam.Checked = true;
                    else
                        optNu.Checked = true;
                    txtDiaChi.Text = dgvNguoiDan.Rows[numrow].Cells[6].Value.ToString();
                    cmbPhuong.Text = dgvNguoiDan.Rows[numrow].Cells[7].Value.ToString();
                    cmbQuan.Text = dgvNguoiDan.Rows[numrow].Cells[8].Value.ToString();
                    cmbTenNV.Text = dgvNguoiDan.Rows[numrow].Cells[9].Value.ToString();
                    txtLanTiem.Text = dgvNguoiDan.Rows[numrow].Cells[11].Value.ToString();
                }
            }
            catch { } // Không cần thông báo
        }


        private int ChecKCMND(String CMND)
        {
            for (int i = 0; i < dgvNguoiDan.Rows.Count; i++)
            {
                if (dgvNguoiDan.Rows[i].Cells[1].Value.ToString() == CMND)
                {
                    return i;
                }
            }
            return -1;
        }

        private void refreshData()
        {
            List<PhieuChungNhan> phieuChungNhan = context.PhieuChungNhans.Where(p => p.MaDotTiem == cmpDotTiem.Text.Trim()).ToList();
            BindGrid(phieuChungNhan);
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            if (CheckValidate())
             {
                int kqChecKCMND = ChecKCMND(txtCMND.Text);
                if (kqChecKCMND == -1)
                {
                    // Thêm 1 người dân vào dữ liệu
                    NguoiDan ItemNguoiDan = new NguoiDan()
                    {
                        CMND = txtCMND.Text,
                        HoTen = txtHoTen.Text,
                        SDT = txtSDT.Text,
                        NamSinh = dtpNgaySinh.Text,
                        DiaChi = txtDiaChi.Text,
                        MaPhuong = cmbPhuong.SelectedValue.ToString(),
                        MaQuan = cmbQuan.SelectedValue.ToString(),
                        MaSoDS = txtDanhSachTiem.Text
                    };
                    if (optNam.Checked == true)
                        ItemNguoiDan.GioiTinh = "Nam";
                    else
                        ItemNguoiDan.GioiTinh = "Nu";

                    context.NguoiDans.Add(ItemNguoiDan); // Add người dân vào


                    // Random tự động phiếu kết quả ....
                    List<int> listIndexPKQ = new List<int>();
                    List<PhieuChungNhan> listPhieuChungNhan = context.PhieuChungNhans.ToList();
                    foreach (PhieuChungNhan p in listPhieuChungNhan)
                    {
                        int item = int.Parse(p.MaSoPhieu.Split('N')[1]);
                        listIndexPKQ.Add(item);
                    }

                    // Tìm max index ( giá trị ) cuối của phiếu
                    int maxIndex = 0;
                    foreach (int p in listIndexPKQ)
                    {
                        if (maxIndex < p)
                            maxIndex = p;
                    }

                    // Thêm dữ liệu bảng Phiếu Kết quả 
                    PhieuChungNhan itemPhieuChungNhan = new PhieuChungNhan()
                    {
                        MaSoPhieu = "PCN0" + (maxIndex + 1).ToString(),
                        CMND = txtCMND.Text,
                        LanTiem = int.Parse(txtLanTiem.Text),
                        MaDotTiem = cmpDotTiem.Text,
                        MaNhanVienYT = cmbTenNV.SelectedValue.ToString(),
                    };

                    context.PhieuChungNhans.Add(itemPhieuChungNhan);
                    context.SaveChanges(); // Lưu lại ... với bên Cơ Sở dữ liệu SQL
                    refreshData();
                    ChangeInfoDotTiem();
                    refresh();
                    MessageBox.Show("Thêm mới dữ liệu thành công!", "Thông Báo", MessageBoxButtons.OK);
                }
                else
                {
                    MessageBox.Show("Hiện tại hệ thống ghi nhận thông tin người dân này đã có. Nếu bạn muốn cập nhật thông tin mũi tiêm 2 trở lên thì hãy vào chức năng Tiêm mũi 2 của hệ thống", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }


        private void btnXoa_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtCMND.Text == "")
                    throw new Exception("Không tìm thấy người dân để xóa!");
                //Lấy ra một kết quả của một người dân xét nghiệm cần xóa 
                String cccd = txtCMND.Text;
                PhieuChungNhan dbDeleteCN = context.PhieuChungNhans.FirstOrDefault(p => p.CMND == cccd);
                NguoiDan dbDeleteND = context.NguoiDans.FirstOrDefault(p => p.CMND == cccd);
                if (dbDeleteCN != null)
                {
                    DialogResult dr = MessageBox.Show("Bạn có muốn xoá?", "Yes/No", MessageBoxButtons.YesNo);
                    if (dr == DialogResult.Yes)
                    {
                        context.NguoiDans.Remove(dbDeleteND);
                        context.PhieuChungNhans.Remove(dbDeleteCN);
                        context.SaveChanges(); //Lưu thay dổi
                        refreshData();
                        ChangeInfoDotTiem();
                        refresh();
                        MessageBox.Show("Xóa phiếu chứng nhận thành công!", "Thông báo", MessageBoxButtons.OK);
                    }
                }
                else
                {
                    MessageBox.Show("Không tìm thấy người dân để xóa!", "Thông báo", MessageBoxButtons.OK);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            if (CheckValidate())
            {
                //Lấy thông tin người nhân xét nghiệm để chỉnh sữa
                var cccd = txtCMND.Text;
                NguoiDan dbUpdateND = context.NguoiDans.FirstOrDefault(p => p.CMND == cccd);
                PhieuChungNhan dbUpdatePCN = context.PhieuChungNhans.FirstOrDefault(p => p.CMND == cccd);
                if (dbUpdateND != null)
                {
                    //   Update lại bảng người dân
                    dbUpdateND.HoTen = txtHoTen.Text;
                    dbUpdateND.SDT = txtSDT.Text;
                    dbUpdateND.NamSinh = dtpNgaySinh.Text;
                    dbUpdateND.DiaChi = txtDiaChi.Text;
                    dbUpdateND.MaPhuong = cmbPhuong.SelectedValue.ToString();
                    dbUpdateND.MaQuan = cmbQuan.SelectedValue.ToString();
                    dbUpdateND.MaSoDS = txtDanhSachTiem.Text;
                    if (optNam.Checked == true)
                        dbUpdateND.GioiTinh = "Nam";
                    else
                        dbUpdateND.GioiTinh = "Nu";

                    // update bảng phiếu chứng nhận
                    dbUpdatePCN.MaNhanVienYT = cmbTenNV.SelectedValue.ToString();

                    context.SaveChanges(); //Lưu thay đổi
                    refreshData();
                    MessageBox.Show("Cập nhật dữ liệu thành công!", "Thông báo", MessageBoxButtons.OK);
                }
                else
                {
                    MessageBox.Show("Không tìm thấy đối tượng cần chỉnh sửa!", "Thông báo", MessageBoxButtons.OK);
                }
            }
        }


        private void cmbQuan_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillCmbPhuong();
        }

        private void ChangeInfoDotTiem()
        {
            DotTiem dotTiem = context.DotTiems.FirstOrDefault(p => p.MaDotTiem == cmpDotTiem.Text);
            if(dotTiem != null)
            {
                txtNgayTiem.Text = dotTiem.NgayTiem.ToString("dd/MM/yyyy");
                txtLoaiVacXin.Text = dotTiem.LoaiVacXin.TenLoai;
                String diachi = dotTiem.Phuong.TenPhuong + ", " + dotTiem.Quan.TenQuan + ", Tp.Hồ Chí Minh";
                if (diachi.Length > 40)
                {
                    diachi = diachi.Replace("Tp.Hồ Chí Minh", "Tp.HCM");
                }
                txtDiaChiTiem.Text = diachi;
                txtDanhSachTiem.Text = dotTiem.MaSoDS;
                txtDoiNguTiem.Text = dotTiem.MaDoiNgu;
                List<PhieuChungNhan> listPhieuChungNhan = context.PhieuChungNhans.Where(p => p.MaDotTiem == cmpDotTiem.Text).ToList();
                txtSoLuongCaTiem.Text = listPhieuChungNhan.Count().ToString();
            }

        }

        private void cmpDotTiem_SelectedIndexChanged(object sender, EventArgs e)
        {
            ChangeInfoDotTiem();
            // Lấy ra thông tin người dân
            List<PhieuChungNhan> phieuChungNhan = context.PhieuChungNhans.Where(p => p.MaDotTiem == cmpDotTiem.Text.Trim()).ToList();
            BindGrid(phieuChungNhan);
            List<NhanVienYT> listNhanVienYT = context.NhanVienYTs.Where(p => p.DoiNguYT.MaDoiNgu == txtDoiNguTiem.Text.Trim()).ToList();
            FillCmbTenNV(listNhanVienYT);
        }
    }
}
