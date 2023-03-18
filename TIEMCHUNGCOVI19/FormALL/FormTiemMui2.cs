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
    public partial class FormTiemMui2 : Form
    {
        public Boolean checkTimkiem = false;
        public FormTiemMui2()
        {
            InitializeComponent();
        }
        DateTime timeToday = DateTime.Today;

        public Covid19ContextDB context = new Covid19ContextDB();

        private void FormNhapNguoiDan_Load(object sender, EventArgs e)
        {
            GetDaTa();
            ChangeInfoDotTiem();
        }

        private void refresh()
        {
            txtCMND.Text = "";
            txtHoTen.Text = "";
            cmbTenNV.SelectedItem = 0;
            cmbLanTiem.SelectedItem = 1;
            txtVacXinDaTiem.Text = "Chưa có thông tin";
            txtNgayDaTiem.Text = "Chưa có thông tin";
        }

        private bool CheckValidate()
        {
            if (txtCMND.Text == ""
                || txtHoTen.Text == ""
                || cmbLanTiem.Text == ""
                || cmpDotTiem.Text == ""
                || cmbTenNV.Text == "")
            {
                MessageBox.Show(" Vui lòng nhập đầy đủ thông tin tiêm");
                return false;
            }

            if (txtLoaiVacXin.Text != txtVacXinDaTiem.Text)
            {
                MessageBox.Show("Loại vắc xin cần phải cùng loại đã được đã tiêm trước đó " , "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            DotTiem NgayTiemMoi = context.DotTiems.FirstOrDefault(p => p.MaDotTiem == cmpDotTiem.Text);
            List<PhieuChungNhan> ListNgayDaTiem = context.PhieuChungNhans.Where(p => p.CMND == txtCMND.Text).ToList();
            foreach(PhieuChungNhan item in ListNgayDaTiem)
            {
                if (NgayTiemMoi.NgayTiem.Date <= item.DotTiem.NgayTiem.Date)
                {
                    MessageBox.Show("Ngày tiêm mới cần phải lớn hơn ngày đã tiêm ", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }
            }

            if(timeToday.Date < NgayTiemMoi.NgayTiem.Date)
            {
                MessageBox.Show("Ngày tiêm mới cần phải lớn bé hơn ngày hiện tại ", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            LoaiVacXin loaiVacXin = context.LoaiVacXins.FirstOrDefault(p => p.TenLoai == txtVacXinDaTiem.Text);
            if (loaiVacXin != null)
            {
                if (int.Parse(cmbLanTiem.Text) > loaiVacXin.SoMuiTiem)
                {
                    MessageBox.Show("Hiện tại loại vắc xin này chưa có mũi thứ " + cmbLanTiem.Text + "", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }
            }
          
            List<PhieuChungNhan> phieuChungNhan = context.PhieuChungNhans.Where(p => p.CMND == txtCMND.Text).ToList();
            foreach(PhieuChungNhan item in phieuChungNhan)
            {
                if(item.LanTiem == int.Parse(cmbLanTiem.Text))
                {
                    MessageBox.Show("Hệ thống đã ghi nhận bạn tiêm mũi thứ " + cmbLanTiem.Text + ". Vui lòng kiểm tra lại thông tin tiêm", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return false;
                }
            }

            int Muichuatiem = phieuChungNhan.Count + 1;
            if (int.Parse(cmbLanTiem.Text) - 1 > phieuChungNhan.Count)
            {
                MessageBox.Show("Hệ thống chưa ghi nhận bạn tiêm lần thứ " + Muichuatiem + ". Vậy nên bạn phải cập nhật tiêm lần thứ " + Muichuatiem + " , vui lòng kiểm tra lại thông tin", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }

            return true;
        }

        private bool CheckValidateSua()
        {
            if (txtCMND.Text == ""
                || txtHoTen.Text == ""
                || cmbLanTiem.Text == ""
                || cmpDotTiem.Text == ""
                || cmbTenNV.Text == "")
            {
                MessageBox.Show(" Vui lòng nhập đầy đủ thông tin tiêm");
                return false;
            }

            PhieuChungNhan dbUpdatePCN = context.PhieuChungNhans.FirstOrDefault(p => p.CMND == txtCMND.Text && p.LanTiem.ToString() == CheckLan.Text);

            DotTiem NgayTiemMoi = context.DotTiems.FirstOrDefault(p => p.MaDotTiem == cmpDotTiem.Text);
            if(NgayTiemMoi.MaDoiNgu != dbUpdatePCN.DotTiem.MaDoiNgu)
            {
                MessageBox.Show("Mã Đội Ngũ Y Tế đã tiêm lần "+ CheckLan.Text + " là: " + dbUpdatePCN.DotTiem.MaDoiNgu + " .Vui lòng chọn mã Đội Ngũ Y Tế mã "+ dbUpdatePCN.DotTiem.MaDoiNgu + " để sửa.", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            return true;
        }

        // Lấy dữ liệu từ SQL để render lên form 
        public void GetDaTa()
        {
            try
            {
                // Fill combobox đợt tiêm 
                List<DotTiem> listDotTiem= context.DotTiems.ToList();
                FillCmbDotTiem(listDotTiem);
                
                FillCmbLanTiem();

                List<NhanVienYT> listNhanVienYT = context.NhanVienYTs.Where(p => p.DoiNguYT.MaDoiNgu == txtDoiNguTiem.Text.Trim()).ToList();
                FillCmbTenNV(listNhanVienYT);

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
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

        private void FillCmbLanTiem()
        {
            int c = this.cmbLanTiem.Items.Count;
            for (int i = 0; i < c; i++)
            {
                this.cmbLanTiem.Items.Remove(i + 1);
            }
            List<LoaiVacXin> lanTiem = context.LoaiVacXins.Where(
                p => p.TenLoai == txtLoaiVacXin.Text).ToList();
            int somui = 0;
            foreach (var item in lanTiem)
            {
                somui = item.SoMuiTiem;
            }
            for (int i = 0; i < somui; i++)
            {
                this.cmbLanTiem.Items.Add(i + 1);
            }
            cmbLanTiem.SelectedItem = 1;
        }

        private void BindGrid(List<PhieuChungNhan> ListphieuChungNhan)
        {
            dgvNguoiDan.Rows.Clear();
            int STT = 0;
            foreach (PhieuChungNhan item in ListphieuChungNhan)
            {
                int index = dgvNguoiDan.Rows.Add();
                dgvNguoiDan.Rows[index].Cells[9].Value = item.NhanVienYT.TenNhanVienYT;
                dgvNguoiDan.Rows[index].Cells[10].Value = item.DotTiem.NgayTiem.ToString("dd/MM/yyyy");
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
                    txtVacXinDaTiem.Text = dgvNguoiDan.Rows[numrow].Cells[12].Value.ToString();
                    CheckLan.Text = dgvNguoiDan.Rows[numrow].Cells[11].Value.ToString();
                    List<PhieuChungNhan> phieuChungNhan = context.PhieuChungNhans.Where(p => p.NguoiDan.CMND == txtCMND.Text).ToList();
                    String ngayDatiem = "";
                    int stt = 0;
                    foreach (PhieuChungNhan item in phieuChungNhan)
                    {
                        stt++;
                        if (stt == 3)
                            ngayDatiem = ngayDatiem + "\n";
                        ngayDatiem = ngayDatiem + "Lần " + item.LanTiem + ": " + item.DotTiem.NgayTiem.ToString("dd/MM/yyyy") + "   ";
                    }
                    txtNgayDaTiem.Text = ngayDatiem;
                }

            }
            catch { } // Không cần thông báo
        }

        public void refreshData()
        {
            List<PhieuChungNhan> phieuChungNhan = context.PhieuChungNhans.Where(p => p.NguoiDan.CMND == txtCMND.Text && p.NguoiDan.HoTen == txtHoTen.Text).ToList();
            if(phieuChungNhan != null)
            {
                BindGrid(phieuChungNhan);
            }
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            if (CheckValidate())
             {
                PhieuChungNhan ThemCaTiem = context.PhieuChungNhans.FirstOrDefault(p => p.CMND == txtCMND.Text);
                if (ThemCaTiem!=null)
                {
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
                        LanTiem = int.Parse(cmbLanTiem.Text),
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
                    MessageBox.Show("Không thể cập nhật thông tin ca tiêm ", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }


        private void btnXoa_Click(object sender, EventArgs e)
        {
            try
            {
                if(checkTimkiem == false)
                    throw new Exception("Để xóa bạn cần tìm kiếm để lấy ra thông tin ");
                if (CheckLan.Text == "" || txtCMND.Text == "")
                    throw new Exception("Để xóa bạn cần Click vào dòng ở bảng dưới để lấy thông tin ");
                String cmnd = txtCMND.Text;
                List<PhieuChungNhan> listPhieuChungNhan = context.PhieuChungNhans.Where(p=> p.CMND == cmnd).ToList();
                PhieuChungNhan dbDeleteCN = context.PhieuChungNhans.FirstOrDefault(p => p.CMND == cmnd && p.LanTiem.ToString() == CheckLan.Text);
                if (dbDeleteCN.LanTiem < listPhieuChungNhan.Count)
                      throw new Exception("Để xóa thông tin tiêm lần thứ "+ dbDeleteCN.LanTiem + " thì phải xóa lần tiêm thứ "+listPhieuChungNhan.Count + " trước");
                
                if (dbDeleteCN != null)
                {
                    DialogResult dr = MessageBox.Show("Bạn có muốn xoá?", "Yes/No", MessageBoxButtons.YesNo);
                    if (dr == DialogResult.Yes)
                    {
                        context.PhieuChungNhans.Remove(dbDeleteCN);
                        context.SaveChanges(); //Lưu thay dổi
                        if (listPhieuChungNhan.Count == 1)
                        {
                            NguoiDan dbDeleteND = context.NguoiDans.FirstOrDefault(p => p.CMND == cmnd);
                            context.NguoiDans.Remove(dbDeleteND);
                            context.SaveChanges();
                        }
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
            try
            {
                if (checkTimkiem == false)
                    throw new Exception("Để sửa bạn cần tìm kiếm để lấy ra thông tin ");
                if (CheckLan.Text == "" || txtCMND.Text == "")
                    throw new Exception("Để sửa bạn cần Click vào dòng ở bảng dưới để lấy thông tin ");
                if (CheckValidateSua())
                {
                    //Lấy thông tin người nhân xét nghiệm để chỉnh sữa
                    var cccd = txtCMND.Text;
                    PhieuChungNhan dbUpdatePCN = context.PhieuChungNhans.FirstOrDefault(p => p.CMND == cccd && p.LanTiem.ToString() == CheckLan.Text);
                    if (dbUpdatePCN != null)
                    {
                        dbUpdatePCN.MaNhanVienYT = cmbTenNV.SelectedValue.ToString();
                        context.SaveChanges(); //Lưu thay đổi
                        refreshData();
                        refresh();
                        MessageBox.Show("Cập nhật dữ liệu thành công!", "Thông báo", MessageBoxButtons.OK);
                    }
                    else
                    {
                        MessageBox.Show("Không tìm thấy đối tượng cần chỉnh sửa!", "Thông báo", MessageBoxButtons.OK);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

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
                cmbLanTiem.SelectedItem = 0;
            }
        }

        private void cmpDotTiem_SelectedIndexChanged(object sender, EventArgs e)
        {
            ChangeInfoDotTiem();
            FillCmbLanTiem();
            List<NhanVienYT> listNhanVienYT = context.NhanVienYTs.Where(p => p.DoiNguYT.MaDoiNgu == txtDoiNguTiem.Text.Trim()).ToList();
            FillCmbTenNV(listNhanVienYT);
        }

        // Tìm kiếm ca tiêm theo cmnd và họ tên 
        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            if(txtHoTen.Text=="" || txtCMND.Text == "")
            {
                MessageBox.Show("Chưa đủ nhập thông tin cần tìm ", "Thông báo", MessageBoxButtons.OK);
            }
            else
            {
                // Lấy ra thông tin người dân
                List<PhieuChungNhan> phieuChungNhan = context.PhieuChungNhans.Where(p => p.NguoiDan.CMND == txtCMND.Text && p.NguoiDan.HoTen == txtHoTen.Text).ToList();
                if (phieuChungNhan.Count == 0)
                    MessageBox.Show("Không tìm thấy người này trên hệ thống ", "Thông báo", MessageBoxButtons.OK);
                else
                {
                    BindGrid(phieuChungNhan);
                    checkTimkiem = true;
                    String ngayDatiem = "";
                    int stt = 0;
                    foreach(PhieuChungNhan item in phieuChungNhan)
                    {
                        stt++;
                        txtVacXinDaTiem.Text = item.DotTiem.LoaiVacXin.TenLoai;
                        if (stt == 3)
                            ngayDatiem = ngayDatiem + "\n";
                        ngayDatiem = ngayDatiem + "Lần "+item.LanTiem+": "+ item.DotTiem.NgayTiem.ToString("dd/MM/yyyy")+"   ";
                    }
                    txtNgayDaTiem.Text = ngayDatiem;
                }

            }
        }

        private void btnSuaLan1_Click(object sender, EventArgs e)
        {
            try
            {
                if (checkTimkiem == false)
                    throw new Exception("Để sửa thông tin bạn cần tìm kiếm để lấy ra thông tin ");
                if (txtCMND.Text == "")
                    throw new Exception("Để sửa bạn cần Click vào dòng ở bảng dưới để lấy thông tin ");
                FormTiemMui2Edit formTiemMui2Edit = new FormTiemMui2Edit(this);
                formTiemMui2Edit.Show();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
