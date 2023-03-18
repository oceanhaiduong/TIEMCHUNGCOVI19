using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;
using FontAwesome.Sharp;
using TIEMCHUNGCOVI19.Chart;
using TIEMCHUNGCOVI19.Models;

namespace TIEMCHUNGCOVI19.FormALL
{
    public partial class FormMain : Form
    {
        //Fields
        private IconButton currentBtn;
        private Panel leftBorderBtn;
        private Form currentChildForm;
        Covid19ContextDB context = new Covid19ContextDB();
        //Constructor
        public FormMain()
        {
            InitializeComponent();
            leftBorderBtn = new Panel();
            leftBorderBtn.Size = new Size(7, 60);
            panelMenu.Controls.Add(leftBorderBtn);
            //Form
            this.Text = string.Empty;
            this.ControlBox = false;
            this.DoubleBuffered = true;
            this.MaximizedBounds = Screen.FromHandle(this.Handle).WorkingArea;
        }

        private void FormMain_Load(object sender, EventArgs e)
        {
            FormBorderStyle = FormBorderStyle.None; // xóa boder Form
            panelTitleBar.Controls.Remove(panelUser);
            this.Controls.Add(panelUser);
          

            panelUser.Location = new Point(1005, 75);

            panelUser.Visible = false; // Ẩn Thông báo thông tin user
            panelUser.BringToFront();

            panelTitleBar.Controls.Remove(panelThongBaoBaoTri); // Thông báo bảo trì
            this.Controls.Add(panelThongBaoBaoTri);

            panelThongBaoBaoTri.Location = new Point(400, 120);

            panelThongBaoBaoTri.Visible = false; // Ẩn Thông báo thông tin user
            panelThongBaoBaoTri.BringToFront();

            ActivateHome(); // Xét hightlight Button trang chủ
            getChartColumn(); // load biểu đồ 

            SettingTaiKhoan(); // Khởi tạo tài khoản ban đầu khi load form
        }

        public void SettingTaiKhoan()
        {
            btnIconUser.Text = formLogin.txtUserName.Text;
            if (btnIconUser.Text.Length==3)
                btnIconUser.Size = new Size(74, 32);
            if (btnIconUser.Text.Length == 4)
                btnIconUser.Size = new Size(84, 32);
            if (btnIconUser.Text.Length == 5)
                btnIconUser.Size = new Size(88, 32);
            if (btnIconUser.Text.Length == 6)
                btnIconUser.Size = new Size(98, 32);

            TaiKhoan TaiKhoan= context.TaiKhoans.FirstOrDefault(p => p.TenTaiKhoan == btnIconUser.Text);
            List<Quyen> listQuyen = context.Quyens.ToList();
            String QuyenHienTai = "";
            foreach (Quyen item in listQuyen)
            {
                if (item.MaQuyen == TaiKhoan.MaQuyen)
                    QuyenHienTai = item.MaQuyen;
            }

            if (QuyenHienTai == "Q01")
            {
                btnQuanLyTK.Visible = true;
                btnTaoTaiKhoanMoi.Visible = true;
            }
            else
            {
                btnQuanLyTK.Visible = false;
                btnTaoTaiKhoanMoi.Visible = false;
            }
        }

        //Dùng để tương tác gọi form Login
        public FormMain(FormLogin form)
        {
            InitializeComponent();
            leftBorderBtn = new Panel();
            leftBorderBtn.Size = new Size(7, 60);
            panelMenu.Controls.Add(leftBorderBtn);
            //Form
            this.Text = string.Empty;
            this.ControlBox = false;
            this.DoubleBuffered = true;
            this.MaximizedBounds = Screen.FromHandle(this.Handle).WorkingArea;

            formLogin = form;
        }
        FormLogin formLogin = new FormLogin();


        // Ẩn From Main
        public void HideFormMain()
        {
            this.Visible = false;
        }

        // Hiện From Main
        public void ShowFormMain()
        {
            this.Visible = true;
        }

        //Structs
        private struct RGBColors
        {
            public static Color color0 = Color.FromArgb(249, 88, 155);
            //public static Color color1 = Color.FromArgb(172, 126, 241);
            //public static Color color2 = Color.FromArgb(249, 118, 176);
            //public static Color color3 = Color.FromArgb(253, 138, 114);
            //public static Color color4 = Color.FromArgb(95, 77, 221);
            //public static Color color5 = Color.FromArgb(249, 88, 155);
            //public static Color color6 = Color.FromArgb(24, 161, 251);

        }

        //Methods
        public void ActivateButton(object senderBtn, Color color)
        {
            if (senderBtn != null)
            {
                DisableButton();
                //Button
                currentBtn = (IconButton)senderBtn;
                currentBtn.BackColor = Color.FromArgb(37, 36, 81);
                currentBtn.ForeColor = color;
                currentBtn.TextAlign = ContentAlignment.MiddleCenter;
                currentBtn.IconColor = color;
                currentBtn.TextImageRelation = TextImageRelation.TextBeforeImage;
                currentBtn.ImageAlign = ContentAlignment.MiddleRight;
                //Left border button
                leftBorderBtn.BackColor = color;
                leftBorderBtn.Location = new Point(0, currentBtn.Location.Y);
                leftBorderBtn.Visible = true;
                leftBorderBtn.BringToFront();
                //Current Child Form Icon
                iconCurrentChildForm.IconChar = currentBtn.IconChar;
                iconCurrentChildForm.IconColor = color;
            }
        }

        // Acticve vào button home 
        public void ActivateHome()
        {
                DisableButton();
                //Button
                currentBtn = btnTrangChu;
                Color ColorHome = Color.FromArgb(249, 88, 155);
                currentBtn.BackColor = Color.FromArgb(37, 36, 81);
                currentBtn.ForeColor = ColorHome;
                currentBtn.TextAlign = ContentAlignment.MiddleCenter;
                currentBtn.IconColor = ColorHome;
                currentBtn.TextImageRelation = TextImageRelation.TextBeforeImage;
                currentBtn.ImageAlign = ContentAlignment.MiddleRight;
                //Left border button
                leftBorderBtn.BackColor = ColorHome;
                leftBorderBtn.Location = new Point(0, currentBtn.Location.Y);
                leftBorderBtn.Visible = true;
                leftBorderBtn.BringToFront();
                //Current Child Form Icon
                iconCurrentChildForm.IconChar = currentBtn.IconChar;
                iconCurrentChildForm.IconColor = ColorHome;
        }

        private void DisableButton()
        {
            if (currentBtn != null)
            {
                currentBtn.BackColor = Color.FromArgb(31, 30, 68);
                currentBtn.ForeColor = Color.Gainsboro;
                currentBtn.TextAlign = ContentAlignment.MiddleLeft;
                currentBtn.IconColor = Color.Gainsboro;
                currentBtn.TextImageRelation = TextImageRelation.ImageBeforeText;
                currentBtn.ImageAlign = ContentAlignment.MiddleLeft;
            }
        }

        private void OpenChildForm(Form childForm)
        {
            //open only form
            if (currentChildForm != null)
            {
                //currentChildForm.Controls.Remove(panelUser); // xóa PanlUser --- đăng xuất
                currentChildForm.Close();
            }
            currentChildForm = childForm;
            currentChildForm.AutoSize = true;
            childForm.AutoSize = true;
            //End
            childForm.TopLevel = false;
            childForm.FormBorderStyle = FormBorderStyle.None;
            childForm.Dock = DockStyle.Fill;
            panelDesktop.Controls.Add(childForm);
            panelDesktop.Tag = childForm;
            childForm.BringToFront();
            childForm.Show();
            lblTitleChildForm.Text = childForm.Text;

            //childForm.Controls.Add(panelUser); // thêm panel User -- vào form
            //panelUser.BringToFront();
        }

        private void Reset()
        {
            DisableButton();
            leftBorderBtn.Visible = false;
            iconCurrentChildForm.IconChar = IconChar.Home;
            iconCurrentChildForm.IconColor = Color.MediumPurple;
            lblTitleChildForm.Text = "Trang Chủ";

            //currentChildForm.Controls.Add(panelUser);
        }
        Timer tm = new Timer();

        //Events
        //Reset
        private void btnHome_Click(object sender, EventArgs e)
        {
            if (currentChildForm != null)
            {
                currentChildForm.Close();
            }
            Reset();
            ActivateHome();
        }

        private void btnTrangChu_Click(object sender, EventArgs e)
        {
            if (currentChildForm != null)
            {
                currentChildForm.Close();
            }
            Reset();
            ActivateButton(sender, RGBColors.color0);
        }

        private void btnOrder_Click(object sender, EventArgs e)
        {
            ActivateButton(sender, RGBColors.color0);
            OpenChildForm(new FormThongKe());
        }

        private void btnTiemMui1_Click(object sender, EventArgs e)
        {
            ActivateButton(sender, RGBColors.color0);
            OpenChildForm(new FormTiemMui1());
        }
  
        private void btnTiemMui2_Click(object sender, EventArgs e)
        {
            ActivateButton(sender, RGBColors.color0);
            OpenChildForm(new FormTiemMui2());
        }

        private void btnChungNhan_Click(object sender, EventArgs e)
        {
            ActivateButton(sender, RGBColors.color0);
            OpenChildForm(new FormChungNhan());
        }

        private void btnSetting_Click(object sender, EventArgs e)
        {
            //ActivateButton(sender, RGBColors.color6);
            //OpenChildForm(new FormSetting());
        }

        //Drag Form
        [DllImport("user32.DLL", EntryPoint = "ReleaseCapture")]
        private extern static void ReleaseCapture();

        [DllImport("user32.DLL", EntryPoint = "SendMessage")]
        private extern static void SendMessage(System.IntPtr hWnd, int wMsg, int wParam, int lParam);

        private void panelTitleBar_MouseDown(object sender, MouseEventArgs e)
        {
            ReleaseCapture();
            SendMessage(this.Handle, 0x112, 0xf012, 0);
        }
        // Zoom Form
        private void btnMaximize_Click(object sender, EventArgs e)
        {
            if (WindowState == FormWindowState.Normal)
            {
                WindowState = FormWindowState.Maximized;
            }
            else
            {
                WindowState = FormWindowState.Normal;
            }
            currentChildForm.Show();
        }

        // Ẩn From
        private void btnMinimize_Click(object sender, EventArgs e)
        {
            WindowState = FormWindowState.Minimized;
        }

        ////Remove transparent border in maximized state
        private void Form1_Resize(object sender, EventArgs e)
        {
            //if (WindowState == FormWindowState.Maximized)
            //    FormBorderStyle = FormBorderStyle.None;
            //else
            //    FormBorderStyle = FormBorderStyle.Sizable;
        }

        private void iconButton6_Click(object sender, EventArgs e)
        {
            panelThongBaoBaoTri.Visible = true;
        }

        // Click vào Icon user
        private void iconButton7_Click(object sender, EventArgs e)
        {
            panelUser.Visible = true;
        }

        // Thoát khỏi thông báo user
        private void CloseUser_Click(object sender, EventArgs e)
        {
            panelUser.Visible = false;
        }

        // Thoát khỏi trương trình
        private void btnoff_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        // Load dữ liệu biểu đồ cột
        public void getChartColumn()
        {
            var obj = chartColumn.ChartAreas[0];
            obj.AxisX.IntervalType = DateTimeIntervalType.Number;

            obj.AxisX.LabelStyle.Format = "";
            obj.AxisY.LabelStyle.Format = "";
            obj.AxisY.LabelStyle.IsEndLabelVisible = true;

            obj.AxisX.Minimum = 0;
            //obj.AxisX.Maximum = 30;
            obj.AxisY.Minimum = 0;
            obj.AxisY.Maximum = 30;
            obj.AxisX.Interval = 0;
            obj.AxisX.Interval = 1;
            obj.AxisY.Interval = 5;

            chartColumn.Series["ChartA"].Points.Clear(); // Xóa dữ liệu hiện đang có 
            GetListCOVID19 listCovid19  = new GetListCOVID19();
            int index = 0;
            chartColumn.Series["ChartA"].Color = Color.Blue;

            DateTime timeToday = DateTime.Today;
            DateTime timeStart = timeToday.AddDays(-29);
            chartColumn.Series["ChartA"].IsVisibleInLegend = false; // Tạo nhiều cột 
            index = 0;
            for (int i = 0; i < 30; i++)
            {
                DateTime time = timeStart.AddDays(index);
                Boolean checkData = false;
                foreach (var item in listCovid19.DataChart())
                {
                    if (item.Ngay == time.Date)
                    {
                        chartColumn.Series["ChartA"].Points.Add(item.CaTiem);
                        chartColumn.Series["ChartA"].Points[index].Label = item.CaTiem.ToString();
                        chartColumn.Series["ChartA"].Points[index].AxisLabel = item.Ngay.ToString("dd/MM/yy");
                        checkData = true; // đã tồn tại
                    }
                }
                if (checkData != true)
                {
                    chartColumn.Series["ChartA"].Points.Add(0);
                    chartColumn.Series["ChartA"].Points[index].Label = 0.ToString();
                    chartColumn.Series["ChartA"].Points[index].AxisLabel = time.ToString("dd/MM/yy");
                }
                checkData = false;
                index++;
            }

            // Tính tổng ca tiêm 
            DateTime timeHomQua = timeToday.AddDays(-1);
            int SLCaTiemHomQua = 0;
            foreach (var item in listCovid19.DataChart())
            {
                if (item.Ngay == timeHomQua.Date)
                    SLCaTiemHomQua = item.CaTiem;
            }
            txtCaTiemHomQua.Text = SLCaTiemHomQua.ToString();
            txtTongCaTiem.Text = listCovid19.CountCaTiem.ToString();
        }

        // Hiển thị thời gian 
        private void timer1_Tick(object sender, EventArgs e)
        {
           Time.Text = string.Format("{0} {1}",
           DateTime.Now.ToString("dd/MM/yyyy"), DateTime.Now.ToString("hh:mm:ss"));
        }

        private void btnDoiMatKhau_Click(object sender, EventArgs e)
        {
            formLogin.ChangePassWord();
        }

        // Đăng xuất 
        private void btnDangXuat_Click(object sender, EventArgs e)
        {
            HideFormMain();
            formLogin.ShowFormLogin();
        }

        // Tạo tài khoản mới
        private void btnTaoTaiKhoanMoi_Click(object sender, EventArgs e)
        {
            FormCreatNewUser formAddTK = new FormCreatNewUser();
            formAddTK.ShowDialog();
        }

        // Quản lý tài khoản 
        private void btnQuanLyTK_Click(object sender, EventArgs e)
        {
            FormQuanLyTaiKhoan formQLTK = new FormQuanLyTaiKhoan();
            formQLTK.ShowDialog();
        }

        // Cập Nhật
        private void btnCapNhat_Click(object sender, EventArgs e)
        {
            FormNhapLieu formNhapLieu = new FormNhapLieu(this);
            formNhapLieu.Show();
            HideFormMain();
        }

        // Tìm kiếm 
        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            FormTimKiem formTimKiem = new FormTimKiem(this);
            formTimKiem.Show();
            HideFormMain();
        }

        // Báo Cáo
        private void btnBaoCao_Click(object sender, EventArgs e)
        {
            FormBaoCao formBaoCao = new FormBaoCao(this);
            formBaoCao.Show();
            HideFormMain();
        }

        private void iconButton3_Click(object sender, EventArgs e)
        {
            panelThongBaoBaoTri.Visible = false;
        }
    }
}
