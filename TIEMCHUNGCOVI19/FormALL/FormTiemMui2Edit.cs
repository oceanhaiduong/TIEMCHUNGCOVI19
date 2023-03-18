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
    public partial class FormTiemMui2Edit : Form
    {
        public FormTiemMui2Edit()
        {
            InitializeComponent();
        }

        private void FormTiemMui2Edit_Load(object sender, EventArgs e)
        {
            //Fill combobox quận
            List<Quan> listQuan = formMui2.context.Quans.ToList();
            FillCmbQuan(listQuan);
            //Fill combobox phường
            FillCmbPhuong();
            HienThi();
        }

        // Dùng để tương tác gọi form TiemMui2
        public FormTiemMui2Edit(FormTiemMui2 form)
        {
            InitializeComponent();
            formMui2 = form;
        }


        FormTiemMui2 formMui2 = new FormTiemMui2();
        //Covid19ContextDB context = new Covid19ContextDB();

        private void CloseUser_Click(object sender, EventArgs e)
        {
            Close();
        }

        DateTime timeToday = DateTime.Today;

        private void FillCmbQuan(List<Quan> listQuan)
        {
            this.cmbQuan.DataSource = listQuan;
            this.cmbQuan.DisplayMember = "TenQuan";
            this.cmbQuan.ValueMember = "MaQuan";
        }

        private void FillCmbPhuong()
        {
            List<Phuong> listPhuong = formMui2.context.Phuongs.Where(
               p => p.Quan.TenQuan == cmbQuan.Text).ToList();

            this.cmbPhuong.DataSource = listPhuong;
            this.cmbPhuong.DisplayMember = "TenPhuong";
            this.cmbPhuong.ValueMember = "MaPhuong";
        }

        private bool CheckValidate()
        {
            if (
                txtHoTen.Text == ""
                || txtSDT.Text == ""
                || txtDiaChi.Text == ""
                || cmbPhuong.Text == ""
                || cmbQuan.Text == "")
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

        private void HienThi()
        {
            var cccd = formMui2.txtCMND.Text;
            NguoiDan dbUpdateND = formMui2.context.NguoiDans.FirstOrDefault(p => p.CMND == cccd);
           
            if (dbUpdateND != null)
            {
                txtHoTen.Text = dbUpdateND.HoTen;
                txtSDT.Text = dbUpdateND.SDT;
                String temp = dbUpdateND.NamSinh;
                String NgaySinh = temp.Split('/')[1] + "/" + temp.Split('/')[0] + "/" + temp.Split('/')[2];
                dtpNgaySinh.Text = NgaySinh;
                txtDiaChi.Text = dbUpdateND.DiaChi;
                cmbPhuong.Text = dbUpdateND.Phuong.TenPhuong;
                cmbQuan.Text = dbUpdateND.Quan.TenQuan;
                if (dbUpdateND.GioiTinh == "Nam")
                    optNam.Checked = true;
                else
                    optNu.Checked = true;
            }
            else
            {
                MessageBox.Show("Không tim thấy đối tượng !", "Thông báo", MessageBoxButtons.OK);
            }
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            //Lấy thông tin người nhân xét nghiệm để chỉnh sữa
            if (CheckValidate())
            {
                var cccd = formMui2.txtCMND.Text;
                NguoiDan dbUpdateND = formMui2.context.NguoiDans.FirstOrDefault(p => p.CMND == cccd);
                if (dbUpdateND != null)
                {
                    //   Update lại bảng người dân
                    dbUpdateND.HoTen = txtHoTen.Text;
                    dbUpdateND.SDT = txtSDT.Text;
                    dbUpdateND.NamSinh = dtpNgaySinh.Text;
                    dbUpdateND.DiaChi = txtDiaChi.Text;
                    dbUpdateND.MaPhuong = cmbPhuong.SelectedValue.ToString();
                    dbUpdateND.MaQuan = cmbQuan.SelectedValue.ToString();
                    if (optNam.Checked == true)
                        dbUpdateND.GioiTinh = "Nam";
                    else
                        dbUpdateND.GioiTinh = "Nu";
                    formMui2.txtHoTen.Text = txtHoTen.Text;
                    formMui2.context.SaveChanges(); //Lưu thay đổi
                    formMui2.refreshData();
                    MessageBox.Show("Cập nhật dữ liệu thành công!", "Thông báo", MessageBoxButtons.OK);
                }
            }

        }

        private void cmbQuan_SelectedIndexChanged(object sender, EventArgs e)
        {
            FillCmbPhuong();
        }

    }
}
