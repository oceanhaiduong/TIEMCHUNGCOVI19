using Microsoft.Reporting.WinForms;
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
using TIEMCHUNGCOVI19.ReportData;

namespace TIEMCHUNGCOVI19.FormALL
{
    public partial class FormBaoCao : Form
    {
        Covid19ContextDB context = new Covid19ContextDB();
        public FormBaoCao()
        {
            InitializeComponent();
        }

        // Dùng để tương tác gọi form Main
        public FormBaoCao(FormMain form)
        {
            InitializeComponent();
            formMain = form;
        }

        FormMain formMain = new FormMain();

        private void FormBaoCao_Load(object sender, EventArgs e)
        {
            ThongKeNVYT_Load();
            ThongKeNguoiDan_Load();
            ThongKePCN_Load();
        }

        // Thông kê nhân viên y tế 
        private void ThongKeNVYT_Load()
        {
            reportViewerNVYT.Visible = false;
            rdbDate.Checked = true;
            dtpDate.Enabled = true;
            cmbKhuVuc.Enabled = false;
            List<Quan> listQuan = context.Quans.ToList();
            FillcmbKhuVUc1(listQuan);
            this.reportViewerNVYT.RefreshReport();
        }
        private void FillcmbKhuVUc1(List<Quan> listQuan)
        {

            this.cmbKhuVuc.DataSource = listQuan;
            this.cmbKhuVuc.DisplayMember = "TenQuan";
            this.cmbKhuVuc.ValueMember = "TenQuan";
        }

      

        private void reportNVYT()
        {
            List<PhieuChungNhan> listPhieuChungNhan = context.PhieuChungNhans.ToList();
            List<NhanVienYT> listNVYT = context.NhanVienYTs.ToList();
            List<ReportNVYT> listReport = new List<ReportNVYT>();
            foreach (NhanVienYT j in listNVYT)
            {
                foreach (PhieuChungNhan i in listPhieuChungNhan)
                {
                    if (i.NhanVienYT.MaNhanVienYT == j.MaNhanVienYT)
                    {
                            ReportNVYT temp = new ReportNVYT();
                            temp.MaNhanVienYT = i.NhanVienYT.MaNhanVienYT;
                            temp.TenNhanVienYT = i.NhanVienYT.TenNhanVienYT;
                            temp.SDT = i.NhanVienYT.SDT;
                            temp.CoQuan = i.NhanVienYT.CoQuan;
                            temp.Email = i.NhanVienYT.Email;
                            temp.Ngay = i.DotTiem.NgayTiem.ToString("dd/MM/yyyy");
                            temp.TenQuan = i.DotTiem.Quan.TenQuan;
                            listReport.Add(temp);
                    }
                }
            }

            List<ReportNVYT> listDay = new List<ReportNVYT>();
            List<ReportNVYT> listQuan = new List<ReportNVYT>();

            ReportParameter[] param = new ReportParameter[1];
            param[0] = new ReportParameter("Ngay",
            string.Format("Ngày " + dtpDate.Value.ToString("dd/MM/yyyy")));
            ReportNVYT temp1 = new ReportNVYT();
            ReportNVYT temp2 = new ReportNVYT();
            ReportNVYT temp3 = new ReportNVYT();
 

            foreach (ReportNVYT item in listReport)
            {
                // Thống kê theo ngày
                if (rdbDate.Checked == true)
                {
                    if (item.Ngay == dtpDate.Value.Date.ToString("dd/MM/yyyy"))
                    {
                        if (temp1.MaNhanVienYT != item.MaNhanVienYT)
                        {
                            listDay.Add(item);
                            temp1 = item; 
                        }
                        else
                        {
                            temp2 = item;
                            if (temp2.MaNhanVienYT != temp1.MaNhanVienYT)
                            {
                                listDay.Add(temp1);
                                temp2 = temp1;
                            }
                            else
                            {
                                temp3 = item;
                                if (temp3.MaNhanVienYT != temp2.MaNhanVienYT)
                                {
                                    listDay.Add(temp2);
                                    temp3 = temp1;
                                }
                            }
                        }

                        param[0] = new ReportParameter("Ngay",
                            string.Format("Ngày " + dtpDate.Value.ToString("dd/MM/yyyy")));
                    }
                    //this.reportViewerNVYT.LocalReport.ReportPath = "ReportNhanVienYTe.rdlc";
                    //var reportDataSource = new ReportDataSource("NhanVienYTeDataSet", listDay);
                    ReportDataSource reportDataSource = new ReportDataSource();
                    reportDataSource.Name = "NhanVienYTeDataSet";
                    reportDataSource.Value = listDay;
                    reportViewerNVYT.LocalReport.SetParameters(param);
                    this.reportViewerNVYT.LocalReport.DataSources.Clear(); //clear 
                    this.reportViewerNVYT.LocalReport.DataSources.Add(reportDataSource);
                }
                /// Thống kê theo khu vực

                if (rdbKhuVuc.Checked == true)
                {
                    if (item.TenQuan == cmbKhuVuc.Text)
                    {
                        if (temp1.MaNhanVienYT != item.MaNhanVienYT)
                        {
                            listQuan.Add(item);
                            temp1 = item;
                        }
                        else
                        {
                            temp2 = item;
                            if (temp2.MaNhanVienYT != temp1.MaNhanVienYT)
                            {
                                listQuan.Add(temp1);
                                temp2 = temp1;
                            }
                            else
                            {
                                temp3 = item;
                                if (temp3.MaNhanVienYT != temp2.MaNhanVienYT)
                                {
                                    listQuan.Add(temp2);
                                    temp3 = temp1;
                                }
                            }
                        }
                    }
                    //this.reportViewerNVYT.LocalReport.ReportPath = "ReportNhanVienYTe.rdlc";
                    //var reportDataSource = new ReportDataSource("NhanVienYTeDataSet", listQuan);
                    ReportDataSource reportDataSource = new ReportDataSource();
                    reportDataSource.Name = "NhanVienYTeDataSet";
                    reportDataSource.Value = listQuan;
                    this.reportViewerNVYT.LocalReport.DataSources.Clear(); //clear 
                    this.reportViewerNVYT.LocalReport.DataSources.Add(reportDataSource);
                }
            }

        }

        private void rdbDate_CheckedChanged(object sender, EventArgs e)
        {
            if (rdbDate.Checked == true)
            {
                dtpDate.Enabled = true;
            }
            else
            {
                dtpDate.Enabled = false;
            }
        }

        private void btnReport_Click(object sender, EventArgs e)
        {
            reportNVYT();
            reportViewerNVYT.Visible = true;
            this.reportViewerNVYT.RefreshReport();
        }

        private void rdbKhuVuc_CheckedChanged(object sender, EventArgs e)
        {
            if (rdbKhuVuc.Checked == true)
            {
                cmbKhuVuc.Enabled = true;
            }
            else
            {
                cmbKhuVuc.Enabled = false;
            }
        }

        private void reportNguoiDan()
        {
            Covid19ContextDB context = new Covid19ContextDB();
            List<PhieuChungNhan> listNguoiDan = context.PhieuChungNhans.ToList();
            List<ReportNguoiDan> listReport = new List<ReportNguoiDan>();
            foreach (PhieuChungNhan i in listNguoiDan)
            {
                ReportNguoiDan temp = new ReportNguoiDan();
                temp.MaSoDS = i.NguoiDan.MaSoDS;
                temp.CMND = i.CMND;
                temp.HoTen = i.NguoiDan.HoTen;
                temp.NamSinh = i.NguoiDan.NamSinh;
                temp.GioiTinh = i.NguoiDan.GioiTinh;
                temp.SDT = i.NguoiDan.SDT;
                temp.DiaChi = i.NguoiDan.DiaChi;
                temp.TenPhuong = i.DotTiem.Phuong.TenPhuong;
                temp.TenQuan = i.DotTiem.Quan.TenQuan;
                listReport.Add(temp);
            }
            List<ReportNguoiDan> listQuan = new List<ReportNguoiDan>();
 
            foreach (ReportNguoiDan item in listReport)
            {
                if (item.TenQuan == cmbKhuNguoiDan.Text)
                {
                    listQuan.Add(item);
                }
                ReportDataSource reportDataSource = new ReportDataSource();
                reportDataSource.Name = "NguoiDanDataSet";
                reportDataSource.Value = listQuan;

                this.reportViewerNguoiDan.LocalReport.DataSources.Clear(); //clear 
                this.reportViewerNguoiDan.LocalReport.DataSources.Add(reportDataSource);
            }

        }

        // Thông kê, tổng hợp người dân 
        private void ThongKeNguoiDan_Load()
        {
            reportViewerNguoiDan.Visible = false;
            List<Quan> listQuan = context.Quans.ToList();
            FillcmbKhuVUcnguoiDan(listQuan);
            this.reportViewerNguoiDan.RefreshReport();
        }


        private void FillcmbKhuVUcnguoiDan(List<Quan> listQuan)
        {

            this.cmbKhuNguoiDan.DataSource = listQuan;
            this.cmbKhuNguoiDan.DisplayMember = "TenQuan";
            this.cmbKhuNguoiDan.ValueMember = "TenQuan";
        }

        private void btnInXemNguoiDan_Click(object sender, EventArgs e)
        {
            //ThongKeNguoiDan_Load();
            reportNguoiDan();
            reportViewerNguoiDan.Visible = true;
            this.reportViewerNguoiDan.RefreshReport();
        }






        // Thông kê phiếu kết quả 
        private void FillcmbKhuVUc(List<Quan> listQuan)
        {

            this.cmbKhuVucKQ.DataSource = listQuan;
            this.cmbKhuVucKQ.DisplayMember = "TenQuan";
            this.cmbKhuVucKQ.ValueMember = "MaQuan";
        }
        private void ThongKePCN_Load()
        {
            this.reportViewerPCN.Visible = false;
            rdbDateKQ.Checked = true;
            dtpDateKQ.Enabled = true;
            dtpMonth.Enabled = false;
            dtpFromDate.Enabled = false;
            dtpToDate.Enabled = false;
            cmbKhuVucKQ.Enabled = false;
            List<Quan> listQuan = context.Quans.ToList();
            FillcmbKhuVUc(listQuan);
            this.reportViewerPCN.RefreshReport();
        }

        private void reportPCN()
        {
            Covid19ContextDB context = new Covid19ContextDB();
            List<PhieuChungNhan> listPhieuChungNhan = context.PhieuChungNhans.ToList();
            List<DotTiem> listdotTiem = context.DotTiems.ToList();
            List<ReportPCN> listReport = new List<ReportPCN>();
            foreach (PhieuChungNhan i in listPhieuChungNhan)
            {
                ReportPCN temp = new ReportPCN();
                temp.MaSoPhieu = i.MaSoPhieu;
                temp.Hoten = i.NguoiDan.HoTen;
                temp.NamSinh = i.NguoiDan.NamSinh;
                temp.GioiTinh = i.NguoiDan.GioiTinh;
                temp.DiaChi = i.NguoiDan.DiaChi + ", " + i.DotTiem.Phuong.TenPhuong + i.DotTiem.Quan.TenQuan + ", Tp.HCM";
                temp.TenQuan = i.DotTiem.Quan.TenQuan;
                temp.SĐT = i.NhanVienYT.SDT;
                temp.NgayTiem = i.DotTiem.NgayTiem.ToString("dd/MM/yyyy");
                temp.SoMuiTiem = i.DotTiem.LoaiVacXin.SoMuiTiem;
                temp.TenLoai = i.DotTiem.LoaiVacXin.TenLoai;
                listReport.Add(temp);
            }
            if (listPhieuChungNhan.Count == 0)
            {
                MessageBox.Show("Không tìm thấy !");
                return;
            }

            List<ReportPCN> listDay = new List<ReportPCN>();
            List<ReportPCN> listMoth = new List<ReportPCN>();
            List<ReportPCN> listFromDay = new List<ReportPCN>();
            List<ReportPCN> listQuan = new List<ReportPCN>();
            // Sử dụng 2 tham số truyền vào cho report
            ReportParameter[] param = new ReportParameter[1];
            param[0] = new ReportParameter("Ngay",
            string.Format("Tháng " + dtpDateKQ.Value.ToString("dd/MM/yyyy")));
            foreach (ReportPCN item in listReport)
            {
                //// Thống kê theo ngày
                if (rdbDateKQ.Checked == true)
                {
                    if (item.NgayTiem == dtpDateKQ.Value.Date.ToString("dd/MM/yyyy"))
                    {
                        listDay.Add(item);
                        param[0] = new ReportParameter("Ngay",
                            string.Format("Ngày " + dtpDateKQ.Value.ToString("dd/MM/yyyy")));
                    }
                    //this.reportViewerPCN.LocalReport.ReportPath = "ReportPCN.rdlc";
                    //var reportDataSource = new ReportDataSource("PCNDataSet", listDay);
                    ReportDataSource reportDataSource = new ReportDataSource();
                    reportDataSource.Name = "PCNDataSet";
                    reportDataSource.Value = listDay;
                    reportViewerPCN.LocalReport.SetParameters(param);
                    this.reportViewerPCN.LocalReport.DataSources.Clear(); //clear 
                    this.reportViewerPCN.LocalReport.DataSources.Add(reportDataSource);
                }


                // Thống kê theo tháng
                if (rdbMonth.Checked == true)
                {
                    if (item.NgayTiem.Split('/')[1] == dtpMonth.Value.Date.ToString("MM"))
                    {
                        listMoth.Add(item);
                        param[0] = new ReportParameter("Ngay",
                            string.Format("Tháng " + dtpMonth.Value.ToString("MM/yyyy")));
                    }
                    //this.reportViewerPCN.LocalReport.ReportPath = "ReportPCN.rdlc";
                    //var reportDataSource = new ReportDataSource("PCNDataSet", listMoth);
                    ReportDataSource reportDataSource = new ReportDataSource();
                    reportDataSource.Name = "PCNDataSet";
                    reportDataSource.Value = listMoth;
                    reportViewerPCN.LocalReport.SetParameters(param);
                    this.reportViewerPCN.LocalReport.DataSources.Clear(); //clear 
                    this.reportViewerPCN.LocalReport.DataSources.Add(reportDataSource);
                }
                //// Thống kê từ ngày đến ngày
                if (rdbFromDate.Checked == true)
                {
                    int monthto = int.Parse(dtpToDate.Value.Date.ToString("MM"));
                    int monthfrom = int.Parse(dtpFromDate.Value.Date.ToString("MM"));
                    int dayto = int.Parse(dtpToDate.Value.Date.ToString("dd"));
                    int dayfrom = int.Parse(dtpFromDate.Value.Date.ToString("dd"));
                    int month = int.Parse(item.NgayTiem.Split('/')[1]);
                    int date = int.Parse(item.NgayTiem.Split('/')[0]);
                    if (month == monthto && month == monthfrom)
                    {
                        if (date >= dayfrom && date <= dayto)
                        {
                            ReportPCN temp = new ReportPCN();
                            listFromDay.Add(item);
                            param[0] = new ReportParameter("Ngay",
                                string.Format("Từ " + dtpFromDate.Value.ToString("dd/MM/yyyy") + " Đến "
                                + dtpToDate.Value.ToString("dd/MM/yyyy")));
                        }
                    }
                    else
                    {
                        if (month >= dayfrom && monthfrom <= monthto)
                        {
                            ReportPCN temp = new ReportPCN();
                            listFromDay.Add(item);
                            param[0] = new ReportParameter("Ngay",
                                string.Format("Từ " + dtpFromDate.Value.ToString("dd/MM/yyyy") + " Đến "
                                + dtpToDate.Value.ToString("dd/MM/yyyy")));
                        }
                    }
                    //this.reportViewerPCN.LocalReport.ReportPath = "ReportPCN.rdlc";
                    //var reportDataSource = new ReportDataSource("PCNDataSet", listFromDay);
                    ReportDataSource reportDataSource = new ReportDataSource();
                    reportDataSource.Name = "PCNDataSet";
                    reportDataSource.Value = listFromDay;
                    reportViewerPCN.LocalReport.SetParameters(param);
                    this.reportViewerPCN.LocalReport.DataSources.Clear(); //clear 
                    this.reportViewerPCN.LocalReport.DataSources.Add(reportDataSource);
                }
                /// Thống kê theo khu vực

            }
            if (radioButton1.Checked == true)
            {
                foreach (ReportPCN item in listReport)
                {
                    if (item.TenQuan == cmbKhuVucKQ.Text)
                    {
                        listQuan.Add(item);
                    }
                }
                ReportDataSource reportDataSource = new ReportDataSource();
                reportDataSource.Name = "PCNDataSet";
                reportDataSource.Value = listQuan;
                this.reportViewerPCN.LocalReport.DataSources.Clear(); //clear 
                this.reportViewerPCN.LocalReport.DataSources.Add(reportDataSource);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            reportPCN();
            reportViewerPCN.Visible = true;
            this.reportViewerPCN.RefreshReport();
        }

        private void rdbDateKQ_CheckedChanged(object sender, EventArgs e)
        {
            if (rdbDateKQ.Checked == true)
            {
                dtpDateKQ.Enabled = true;
            }
            else
            {
                dtpDateKQ.Enabled = false;
            }
        }

        private void rdbMonthKQ_CheckedChanged(object sender, EventArgs e)
        {
            if (rdbMonth.Checked == true)
            {
                dtpMonth.Enabled = true;
            }
            else
            {
                dtpMonth.Enabled = false;
            }
        }

        private void rdbFromDateKQ_CheckedChanged(object sender, EventArgs e)
        {
            if (rdbFromDate.Checked == true)
            {
                dtpFromDate.Enabled = true;
                dtpToDate.Enabled = true;
            }
            else
            {
                dtpFromDate.Enabled = false;
                dtpToDate.Enabled = false;
            }
        }

        private void rdbKhuVucKQ_CheckedChanged(object sender, EventArgs e)
        {
            if (rdbKhuVuc.Checked == true)
            {
                cmbKhuVucKQ.Enabled = false;
            }
            else
            {
                cmbKhuVucKQ.Enabled = true;
            }
        }

        private void btnBackHome_Click(object sender, EventArgs e)
        {
            formMain.ShowFormMain();
            Close();
        }

       
    }
}
