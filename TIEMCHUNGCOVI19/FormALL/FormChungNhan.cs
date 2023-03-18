using Microsoft.Reporting.WinForms;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using TIEMCHUNGCOVI19.Models;
using TIEMCHUNGCOVI19.Report;
//using TIEMCHUNGCOVI19.Report;

namespace TIEMCHUNGCOVI19.FormALL
{
    public partial class FormChungNhan : Form
    {
        Covid19ContextDB context = new Covid19ContextDB();
        List<PhieuChungNhan> List2MuiTiem = new List<PhieuChungNhan>();
        public FormChungNhan()
        {
            InitializeComponent();
        }

        private void FormChungNhan_Load(object sender, EventArgs e)
        {
            this.reportViewer1.RefreshReport();
            this.reportViewer1.LocalReport.EnableExternalImages = true;
            panel3.Visible = false;
            reportViewer1.Visible = false;
            reportViewer2.Visible = false;
            panel1.Controls.Add(panel4);
            panel4.Location = new Point(50, 200); // Add ghi chú, thông báo
        }

        private int CheckTiem2Mui()
        {
            List<PhieuChungNhan> ListPhieuChungNhan = context.PhieuChungNhans.Where(
                p => p.NguoiDan.CMND == txtCMND.Text &&
                p.NguoiDan.HoTen == txtHoTen.Text &&
                p.NguoiDan.SDT == txtSDT.Text
                ).ToList();
            List2MuiTiem = ListPhieuChungNhan;
            if (ListPhieuChungNhan.Count >= 2)
                return 2;
            if(ListPhieuChungNhan.Count == 1)
                return 1;
            return 0;
        }

        private void bntTraCuu_Click(object sender, EventArgs e)
        {
            int kiemTraSoMuiTiem = CheckTiem2Mui(); // Gọi hàm check để Lấy dữ liệu trước
            
            String texTQR = txtHoTen.Text + "\n" + txtCMND.Text +"\n"+ txtSDT.Text + "\n"+ "\nĐã Tiêm 2 mũi vắc xin";
            QRCoder.QRCodeGenerator qRCodeGenerator = new QRCoder.QRCodeGenerator();
            QRCoder.QRCodeData qRCodeData = qRCodeGenerator.CreateQrCode(texTQR, QRCoder.QRCodeGenerator.ECCLevel.Q);
            QRCoder.QRCode qRCode = new QRCoder.QRCode(qRCodeData);
            Bitmap bmp = qRCode.GetGraphic(7);
            using (MemoryStream ms = new MemoryStream())
            {
                bmp.Save(ms, ImageFormat.Bmp);


                DataSetQR rePortdataSetQR = new DataSetQR();
                DataSetQR.QRCodeRow qRCodeRow = rePortdataSetQR.QRCode.NewQRCodeRow();
                qRCodeRow.Image = ms.ToArray();

                String diaChiCN = "";
                String ngaySinhCN = "";
                int index = 0;
                foreach (PhieuChungNhan item in List2MuiTiem)
                {
                    if (index == 0)
                    {
                        qRCodeRow.MuiTiem = item.LanTiem.ToString();
                        qRCodeRow.ThoiGian = item.DotTiem.NgayTiem.ToString("dd/MM/yyyy");
                        qRCodeRow.TenVacXin = item.DotTiem.LoaiVacXin.TenLoai;
                        qRCodeRow.NoiTiem = item.DotTiem.Phuong.TenPhuong + ", " + item.DotTiem.Quan.TenQuan + ", Thành Phố Hồ Chí Minh";
                        rePortdataSetQR.QRCode.AddQRCodeRow(qRCodeRow);
                    }
                    else
                    {
                        DataSetQR.QRCodeRow qRCodeRowItem = rePortdataSetQR.QRCode.NewQRCodeRow();
                        qRCodeRowItem.MuiTiem = item.LanTiem.ToString();
                        qRCodeRowItem.ThoiGian = item.DotTiem.NgayTiem.ToString("dd/MM/yyyy");
                        qRCodeRowItem.TenVacXin = item.DotTiem.LoaiVacXin.TenLoai;
                        qRCodeRowItem.NoiTiem = item.DotTiem.Phuong.TenPhuong + ", " + item.DotTiem.Quan.TenQuan + ", Thành Phố Hồ Chí Minh";
                        rePortdataSetQR.QRCode.AddQRCodeRow(qRCodeRowItem);
                    }
                    diaChiCN = item.NguoiDan.DiaChi + ", " + item.NguoiDan.Phuong.TenPhuong + ", " + item.NguoiDan.Quan.TenQuan + ", Tp.Hồ Chí Minh";
                    ngaySinhCN = item.NguoiDan.NamSinh;
                    index++;
                }

                ReportParameter[] param = new ReportParameter[5];
                param[0] = new ReportParameter("ParameterHoTen", txtHoTen.Text);
                param[1] = new ReportParameter("ParameterCMND", txtCMND.Text);
                param[2] = new ReportParameter("ParameterNgaySinh", ngaySinhCN);
                param[3] = new ReportParameter("ParameterSDT", txtSDT.Text);
                param[4] = new ReportParameter("ParameterDiaChi", diaChiCN);

                if (kiemTraSoMuiTiem == 1)
                {
                    ReportDataSource reportDataSource = new ReportDataSource();
                    reportDataSource.Name = "ReportDataVang";
                    reportDataSource.Value = rePortdataSetQR.QRCode;
                    reportViewer2.LocalReport.SetParameters(param);
                    reportViewer2.LocalReport.DataSources.Clear();
                    reportViewer2.LocalReport.DataSources.Add(reportDataSource);
                    reportViewer1.Visible = false;
                    panel3.Visible = true;
                    reportViewer2.Visible = true;
                    reportViewer2.RefreshReport();
                }
                else if (kiemTraSoMuiTiem >= 2)
                {
                    ReportDataSource reportDataSource = new ReportDataSource();
                    reportDataSource.Name = "ReportData";
                    reportDataSource.Value = rePortdataSetQR.QRCode;
                    reportViewer1.LocalReport.SetParameters(param);
                    reportViewer1.LocalReport.DataSources.Clear();
                    reportViewer1.LocalReport.DataSources.Add(reportDataSource);
                    reportViewer2.Visible = false;
                    panel3.Visible = true;
                    reportViewer1.Visible = true;
                    reportViewer1.RefreshReport();
                }
                else
                {
                    panel3.Visible = false;
                    reportViewer1.Visible = false;
                    reportViewer2.Visible = false;
                }

            }
        }


    }
}
