
namespace TIEMCHUNGCOVI19.FormALL
{
    partial class FormBaoCao
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.panel1 = new System.Windows.Forms.Panel();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.cmbKhuVucKQ = new System.Windows.Forms.ComboBox();
            this.radioButton1 = new System.Windows.Forms.RadioButton();
            this.label2 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.dtpToDate = new System.Windows.Forms.DateTimePicker();
            this.dtpFromDate = new System.Windows.Forms.DateTimePicker();
            this.dtpMonth = new System.Windows.Forms.DateTimePicker();
            this.dtpDateKQ = new System.Windows.Forms.DateTimePicker();
            this.rdbFromDate = new System.Windows.Forms.RadioButton();
            this.rdbMonth = new System.Windows.Forms.RadioButton();
            this.rdbDateKQ = new System.Windows.Forms.RadioButton();
            this.label1 = new System.Windows.Forms.Label();
            this.reportViewerPCN = new Microsoft.Reporting.WinForms.ReportViewer();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnReport = new System.Windows.Forms.Button();
            this.rdbKhuVuc = new System.Windows.Forms.RadioButton();
            this.cmbKhuVuc = new System.Windows.Forms.ComboBox();
            this.rdbDate = new System.Windows.Forms.RadioButton();
            this.dtpDate = new System.Windows.Forms.DateTimePicker();
            this.reportViewerNVYT = new Microsoft.Reporting.WinForms.ReportViewer();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.reportViewerNguoiDan = new Microsoft.Reporting.WinForms.ReportViewer();
            this.btnBackHome = new FontAwesome.Sharp.IconButton();
            this.btnInXemNguoiDan = new System.Windows.Forms.Button();
            this.cmbKhuNguoiDan = new System.Windows.Forms.ComboBox();
            this.ReportNguoiDanBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.label3 = new System.Windows.Forms.Label();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.panel1.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.tabPage2.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.tabPage3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ReportNguoiDanBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Controls.Add(this.tabPage3);
            this.tabControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.tabControl1.Location = new System.Drawing.Point(0, 0);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(977, 452);
            this.tabControl1.TabIndex = 0;
            // 
            // tabPage1
            // 
            this.tabPage1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(33)))), ((int)(((byte)(34)))), ((int)(((byte)(73)))));
            this.tabPage1.Controls.Add(this.panel1);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(969, 426);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Kết quả tiêm chủng";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.groupBox1);
            this.panel1.Controls.Add(this.reportViewerPCN);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(3, 3);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(963, 420);
            this.panel1.TabIndex = 0;
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(33)))), ((int)(((byte)(34)))), ((int)(((byte)(85)))));
            this.groupBox1.Controls.Add(this.cmbKhuVucKQ);
            this.groupBox1.Controls.Add(this.radioButton1);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.button1);
            this.groupBox1.Controls.Add(this.dtpToDate);
            this.groupBox1.Controls.Add(this.dtpFromDate);
            this.groupBox1.Controls.Add(this.dtpMonth);
            this.groupBox1.Controls.Add(this.dtpDateKQ);
            this.groupBox1.Controls.Add(this.rdbFromDate);
            this.groupBox1.Controls.Add(this.rdbMonth);
            this.groupBox1.Controls.Add(this.rdbDateKQ);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(128)))));
            this.groupBox1.Location = new System.Drawing.Point(4, -7);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(2);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(2);
            this.groupBox1.Size = new System.Drawing.Size(678, 122);
            this.groupBox1.TabIndex = 3;
            this.groupBox1.TabStop = false;
            // 
            // cmbKhuVucKQ
            // 
            this.cmbKhuVucKQ.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbKhuVucKQ.ForeColor = System.Drawing.Color.Black;
            this.cmbKhuVucKQ.FormattingEnabled = true;
            this.cmbKhuVucKQ.Location = new System.Drawing.Point(557, 24);
            this.cmbKhuVucKQ.Margin = new System.Windows.Forms.Padding(2);
            this.cmbKhuVucKQ.Name = "cmbKhuVucKQ";
            this.cmbKhuVucKQ.Size = new System.Drawing.Size(106, 21);
            this.cmbKhuVucKQ.TabIndex = 10;
            // 
            // radioButton1
            // 
            this.radioButton1.AutoSize = true;
            this.radioButton1.Location = new System.Drawing.Point(431, 26);
            this.radioButton1.Margin = new System.Windows.Forms.Padding(2);
            this.radioButton1.Name = "radioButton1";
            this.radioButton1.Size = new System.Drawing.Size(114, 17);
            this.radioButton1.TabIndex = 9;
            this.radioButton1.TabStop = true;
            this.radioButton1.Text = "Xem theo Khu Vực";
            this.radioButton1.UseVisualStyleBackColor = true;
            this.radioButton1.CheckedChanged += new System.EventHandler(this.rdbKhuVucKQ_CheckedChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(371, 90);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(18, 20);
            this.label2.TabIndex = 8;
            this.label2.Text = "~";
            // 
            // button1
            // 
            this.button1.AutoSize = true;
            this.button1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.button1.ForeColor = System.Drawing.Color.Black;
            this.button1.Location = new System.Drawing.Point(587, 88);
            this.button1.Margin = new System.Windows.Forms.Padding(2);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(52, 23);
            this.button1.TabIndex = 1;
            this.button1.Text = "In/Xem";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // dtpToDate
            // 
            this.dtpToDate.CustomFormat = "dd/MM/yyyy";
            this.dtpToDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpToDate.Location = new System.Drawing.Point(409, 88);
            this.dtpToDate.Margin = new System.Windows.Forms.Padding(2);
            this.dtpToDate.Name = "dtpToDate";
            this.dtpToDate.Size = new System.Drawing.Size(135, 20);
            this.dtpToDate.TabIndex = 7;
            // 
            // dtpFromDate
            // 
            this.dtpFromDate.CustomFormat = "dd/MM/yyyy";
            this.dtpFromDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpFromDate.Location = new System.Drawing.Point(225, 88);
            this.dtpFromDate.Margin = new System.Windows.Forms.Padding(2);
            this.dtpFromDate.Name = "dtpFromDate";
            this.dtpFromDate.Size = new System.Drawing.Size(135, 20);
            this.dtpFromDate.TabIndex = 6;
            // 
            // dtpMonth
            // 
            this.dtpMonth.CustomFormat = "MM/yyyy";
            this.dtpMonth.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpMonth.Location = new System.Drawing.Point(225, 55);
            this.dtpMonth.Margin = new System.Windows.Forms.Padding(2);
            this.dtpMonth.Name = "dtpMonth";
            this.dtpMonth.Size = new System.Drawing.Size(135, 20);
            this.dtpMonth.TabIndex = 5;
            // 
            // dtpDateKQ
            // 
            this.dtpDateKQ.CustomFormat = "dd/MM/yyyy";
            this.dtpDateKQ.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpDateKQ.Location = new System.Drawing.Point(225, 26);
            this.dtpDateKQ.Margin = new System.Windows.Forms.Padding(2);
            this.dtpDateKQ.Name = "dtpDateKQ";
            this.dtpDateKQ.Size = new System.Drawing.Size(135, 20);
            this.dtpDateKQ.TabIndex = 4;
            this.dtpDateKQ.Value = new System.DateTime(2022, 1, 13, 0, 0, 0, 0);
            // 
            // rdbFromDate
            // 
            this.rdbFromDate.AutoSize = true;
            this.rdbFromDate.Location = new System.Drawing.Point(102, 90);
            this.rdbFromDate.Margin = new System.Windows.Forms.Padding(2);
            this.rdbFromDate.Name = "rdbFromDate";
            this.rdbFromDate.Size = new System.Drawing.Size(84, 17);
            this.rdbFromDate.TabIndex = 3;
            this.rdbFromDate.TabStop = true;
            this.rdbFromDate.Text = "Xem từ ngày";
            this.rdbFromDate.UseVisualStyleBackColor = true;
            this.rdbFromDate.CheckedChanged += new System.EventHandler(this.rdbFromDateKQ_CheckedChanged);
            // 
            // rdbMonth
            // 
            this.rdbMonth.AutoSize = true;
            this.rdbMonth.Location = new System.Drawing.Point(102, 57);
            this.rdbMonth.Margin = new System.Windows.Forms.Padding(2);
            this.rdbMonth.Name = "rdbMonth";
            this.rdbMonth.Size = new System.Drawing.Size(100, 17);
            this.rdbMonth.TabIndex = 2;
            this.rdbMonth.TabStop = true;
            this.rdbMonth.Text = "Xem theo tháng";
            this.rdbMonth.UseVisualStyleBackColor = true;
            this.rdbMonth.CheckedChanged += new System.EventHandler(this.rdbMonthKQ_CheckedChanged);
            // 
            // rdbDateKQ
            // 
            this.rdbDateKQ.AutoSize = true;
            this.rdbDateKQ.Location = new System.Drawing.Point(102, 25);
            this.rdbDateKQ.Margin = new System.Windows.Forms.Padding(2);
            this.rdbDateKQ.Name = "rdbDateKQ";
            this.rdbDateKQ.Size = new System.Drawing.Size(96, 17);
            this.rdbDateKQ.TabIndex = 1;
            this.rdbDateKQ.TabStop = true;
            this.rdbDateKQ.Text = "Xem theo ngày";
            this.rdbDateKQ.UseVisualStyleBackColor = true;
            this.rdbDateKQ.CheckedChanged += new System.EventHandler(this.rdbDateKQ_CheckedChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(29, 26);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(55, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Thông tin ";
            // 
            // reportViewerPCN
            // 
            this.reportViewerPCN.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.reportViewerPCN.LocalReport.ReportEmbeddedResource = "TIEMCHUNGCOVI19.ReportData.ReportPCN.rdlc";
            this.reportViewerPCN.Location = new System.Drawing.Point(-1, 134);
            this.reportViewerPCN.Margin = new System.Windows.Forms.Padding(2);
            this.reportViewerPCN.Name = "reportViewerPCN";
            this.reportViewerPCN.ServerReport.BearerToken = null;
            this.reportViewerPCN.Size = new System.Drawing.Size(965, 293);
            this.reportViewerPCN.TabIndex = 4;
            // 
            // tabPage2
            // 
            this.tabPage2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(33)))), ((int)(((byte)(34)))), ((int)(((byte)(73)))));
            this.tabPage2.Controls.Add(this.groupBox2);
            this.tabPage2.Controls.Add(this.reportViewerNVYT);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(969, 426);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Nhân viên y tế ";
            // 
            // groupBox2
            // 
            this.groupBox2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(33)))), ((int)(((byte)(34)))), ((int)(((byte)(85)))));
            this.groupBox2.Controls.Add(this.btnReport);
            this.groupBox2.Controls.Add(this.rdbKhuVuc);
            this.groupBox2.Controls.Add(this.cmbKhuVuc);
            this.groupBox2.Controls.Add(this.rdbDate);
            this.groupBox2.Controls.Add(this.dtpDate);
            this.groupBox2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(128)))));
            this.groupBox2.Location = new System.Drawing.Point(8, -6);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(484, 91);
            this.groupBox2.TabIndex = 13;
            this.groupBox2.TabStop = false;
            // 
            // btnReport
            // 
            this.btnReport.AutoSize = true;
            this.btnReport.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.btnReport.ForeColor = System.Drawing.Color.Black;
            this.btnReport.Location = new System.Drawing.Point(382, 57);
            this.btnReport.Margin = new System.Windows.Forms.Padding(2);
            this.btnReport.Name = "btnReport";
            this.btnReport.Size = new System.Drawing.Size(81, 25);
            this.btnReport.TabIndex = 11;
            this.btnReport.Text = "In/Xem";
            this.btnReport.UseVisualStyleBackColor = false;
            this.btnReport.Click += new System.EventHandler(this.btnReport_Click);
            // 
            // rdbKhuVuc
            // 
            this.rdbKhuVuc.AutoSize = true;
            this.rdbKhuVuc.Location = new System.Drawing.Point(19, 65);
            this.rdbKhuVuc.Margin = new System.Windows.Forms.Padding(2);
            this.rdbKhuVuc.Name = "rdbKhuVuc";
            this.rdbKhuVuc.Size = new System.Drawing.Size(65, 17);
            this.rdbKhuVuc.TabIndex = 12;
            this.rdbKhuVuc.TabStop = true;
            this.rdbKhuVuc.Text = "Khu vực";
            this.rdbKhuVuc.UseVisualStyleBackColor = true;
            this.rdbKhuVuc.CheckedChanged += new System.EventHandler(this.rdbKhuVuc_CheckedChanged);
            // 
            // cmbKhuVuc
            // 
            this.cmbKhuVuc.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbKhuVuc.ForeColor = System.Drawing.Color.Black;
            this.cmbKhuVuc.FormattingEnabled = true;
            this.cmbKhuVuc.Location = new System.Drawing.Point(103, 62);
            this.cmbKhuVuc.Margin = new System.Windows.Forms.Padding(2);
            this.cmbKhuVuc.Name = "cmbKhuVuc";
            this.cmbKhuVuc.Size = new System.Drawing.Size(135, 21);
            this.cmbKhuVuc.TabIndex = 8;
            // 
            // rdbDate
            // 
            this.rdbDate.AutoSize = true;
            this.rdbDate.Location = new System.Drawing.Point(19, 28);
            this.rdbDate.Margin = new System.Windows.Forms.Padding(2);
            this.rdbDate.Name = "rdbDate";
            this.rdbDate.Size = new System.Drawing.Size(50, 17);
            this.rdbDate.TabIndex = 9;
            this.rdbDate.TabStop = true;
            this.rdbDate.Text = "Ngày";
            this.rdbDate.UseVisualStyleBackColor = true;
            this.rdbDate.CheckedChanged += new System.EventHandler(this.rdbDate_CheckedChanged);
            // 
            // dtpDate
            // 
            this.dtpDate.CustomFormat = "dd/MM/yyyy";
            this.dtpDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpDate.Location = new System.Drawing.Point(103, 26);
            this.dtpDate.Margin = new System.Windows.Forms.Padding(2);
            this.dtpDate.Name = "dtpDate";
            this.dtpDate.Size = new System.Drawing.Size(135, 20);
            this.dtpDate.TabIndex = 10;
            this.dtpDate.Value = new System.DateTime(2022, 1, 13, 0, 0, 0, 0);
            // 
            // reportViewerNVYT
            // 
            this.reportViewerNVYT.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.reportViewerNVYT.LocalReport.ReportEmbeddedResource = "TIEMCHUNGCOVI19.ReportData.ReportNhanVienYTe.rdlc";
            this.reportViewerNVYT.Location = new System.Drawing.Point(2, 110);
            this.reportViewerNVYT.Margin = new System.Windows.Forms.Padding(2);
            this.reportViewerNVYT.Name = "reportViewerNVYT";
            this.reportViewerNVYT.ServerReport.BearerToken = null;
            this.reportViewerNVYT.Size = new System.Drawing.Size(965, 350);
            this.reportViewerNVYT.TabIndex = 7;
            // 
            // tabPage3
            // 
            this.tabPage3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(33)))), ((int)(((byte)(34)))), ((int)(((byte)(73)))));
            this.tabPage3.Controls.Add(this.label3);
            this.tabPage3.Controls.Add(this.btnInXemNguoiDan);
            this.tabPage3.Controls.Add(this.cmbKhuNguoiDan);
            this.tabPage3.Controls.Add(this.reportViewerNguoiDan);
            this.tabPage3.Location = new System.Drawing.Point(4, 22);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage3.Size = new System.Drawing.Size(969, 426);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "Người dân ";
            // 
            // reportViewerNguoiDan
            // 
            this.reportViewerNguoiDan.BorderStyle = System.Windows.Forms.BorderStyle.None;
            reportDataSource1.Name = "NguoiDanDataSet";
            reportDataSource1.Value = this.ReportNguoiDanBindingSource;
            this.reportViewerNguoiDan.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewerNguoiDan.LocalReport.ReportEmbeddedResource = "TIEMCHUNGCOVI19.ReportData.ReportNguoiDan.rdlc";
            this.reportViewerNguoiDan.Location = new System.Drawing.Point(0, 61);
            this.reportViewerNguoiDan.Margin = new System.Windows.Forms.Padding(2);
            this.reportViewerNguoiDan.Name = "reportViewerNguoiDan";
            this.reportViewerNguoiDan.ServerReport.BearerToken = null;
            this.reportViewerNguoiDan.Size = new System.Drawing.Size(973, 363);
            this.reportViewerNguoiDan.TabIndex = 6;
            // 
            // btnBackHome
            // 
            this.btnBackHome.AutoSize = true;
            this.btnBackHome.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(33)))), ((int)(((byte)(34)))), ((int)(((byte)(73)))));
            this.btnBackHome.FlatAppearance.BorderSize = 0;
            this.btnBackHome.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnBackHome.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(88)))), ((int)(((byte)(155)))));
            this.btnBackHome.IconChar = FontAwesome.Sharp.IconChar.Home;
            this.btnBackHome.IconColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(88)))), ((int)(((byte)(155)))));
            this.btnBackHome.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnBackHome.IconSize = 28;
            this.btnBackHome.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnBackHome.Location = new System.Drawing.Point(872, 459);
            this.btnBackHome.Name = "btnBackHome";
            this.btnBackHome.Size = new System.Drawing.Size(93, 35);
            this.btnBackHome.TabIndex = 25;
            this.btnBackHome.Text = "Trang chủ";
            this.btnBackHome.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnBackHome.UseVisualStyleBackColor = false;
            this.btnBackHome.Click += new System.EventHandler(this.btnBackHome_Click);
            // 
            // btnInXemNguoiDan
            // 
            this.btnInXemNguoiDan.Location = new System.Drawing.Point(273, 16);
            this.btnInXemNguoiDan.Margin = new System.Windows.Forms.Padding(2);
            this.btnInXemNguoiDan.Name = "btnInXemNguoiDan";
            this.btnInXemNguoiDan.Size = new System.Drawing.Size(81, 25);
            this.btnInXemNguoiDan.TabIndex = 15;
            this.btnInXemNguoiDan.Text = "In/Xem";
            this.btnInXemNguoiDan.UseVisualStyleBackColor = true;
            this.btnInXemNguoiDan.Click += new System.EventHandler(this.btnInXemNguoiDan_Click);
            // 
            // cmbKhuNguoiDan
            // 
            this.cmbKhuNguoiDan.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbKhuNguoiDan.ForeColor = System.Drawing.Color.Black;
            this.cmbKhuNguoiDan.FormattingEnabled = true;
            this.cmbKhuNguoiDan.Location = new System.Drawing.Point(107, 20);
            this.cmbKhuNguoiDan.Margin = new System.Windows.Forms.Padding(2);
            this.cmbKhuNguoiDan.Name = "cmbKhuNguoiDan";
            this.cmbKhuNguoiDan.Size = new System.Drawing.Size(111, 21);
            this.cmbKhuNguoiDan.TabIndex = 14;
            // 
            // ReportNguoiDanBindingSource
            // 
            this.ReportNguoiDanBindingSource.DataSource = typeof(TIEMCHUNGCOVI19.ReportData.ReportNguoiDan);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(128)))));
            this.label3.Location = new System.Drawing.Point(21, 23);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(81, 13);
            this.label3.TabIndex = 16;
            this.label3.Text = "Xem theo Quận";
            // 
            // FormBaoCao
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(33)))), ((int)(((byte)(34)))), ((int)(((byte)(73)))));
            this.ClientSize = new System.Drawing.Size(977, 496);
            this.Controls.Add(this.btnBackHome);
            this.Controls.Add(this.tabControl1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "FormBaoCao";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Báo Cáo";
            this.Load += new System.EventHandler(this.FormBaoCao_Load);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.tabPage2.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.tabPage3.ResumeLayout(false);
            this.tabPage3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ReportNguoiDanBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.RadioButton rdbKhuVuc;
        private System.Windows.Forms.Button btnReport;
        private System.Windows.Forms.DateTimePicker dtpDate;
        private System.Windows.Forms.RadioButton rdbDate;
        private System.Windows.Forms.ComboBox cmbKhuVuc;
        private Microsoft.Reporting.WinForms.ReportViewer reportViewerNVYT;
        private System.Windows.Forms.TabPage tabPage3;
        private Microsoft.Reporting.WinForms.ReportViewer reportViewerNguoiDan;
        private System.Windows.Forms.BindingSource ReportNguoiDanBindingSource;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox cmbKhuVucKQ;
        private System.Windows.Forms.RadioButton radioButton1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.DateTimePicker dtpToDate;
        private System.Windows.Forms.DateTimePicker dtpFromDate;
        private System.Windows.Forms.DateTimePicker dtpMonth;
        private System.Windows.Forms.DateTimePicker dtpDateKQ;
        private System.Windows.Forms.RadioButton rdbFromDate;
        private System.Windows.Forms.RadioButton rdbMonth;
        private System.Windows.Forms.RadioButton rdbDateKQ;
        private System.Windows.Forms.Label label1;
        private Microsoft.Reporting.WinForms.ReportViewer reportViewerPCN;
        private System.Windows.Forms.GroupBox groupBox2;
        private FontAwesome.Sharp.IconButton btnBackHome;
        private System.Windows.Forms.Button btnInXemNguoiDan;
        private System.Windows.Forms.ComboBox cmbKhuNguoiDan;
        private System.Windows.Forms.Label label3;
    }
}