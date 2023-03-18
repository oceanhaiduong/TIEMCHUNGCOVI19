namespace TIEMCHUNGCOVI19.FormALL
{
    partial class FormQuanLyTaiKhoan
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            this.label4 = new System.Windows.Forms.Label();
            this.cmbQuyen = new System.Windows.Forms.ComboBox();
            this.txtUserName = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnXoaTaiKhoan = new FontAwesome.Sharp.IconButton();
            this.btnSuaQuyen = new FontAwesome.Sharp.IconButton();
            this.txtSeachTK = new System.Windows.Forms.TextBox();
            this.iconButton3 = new FontAwesome.Sharp.IconButton();
            this.dgvQLTaiKhoan = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgvQLTaiKhoan)).BeginInit();
            this.SuspendLayout();
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(24, 64);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(55, 20);
            this.label4.TabIndex = 34;
            this.label4.Text = "Quyền";
            // 
            // cmbQuyen
            // 
            this.cmbQuyen.BackColor = System.Drawing.Color.Gainsboro;
            this.cmbQuyen.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbQuyen.FormattingEnabled = true;
            this.cmbQuyen.Location = new System.Drawing.Point(158, 64);
            this.cmbQuyen.Name = "cmbQuyen";
            this.cmbQuyen.Size = new System.Drawing.Size(150, 26);
            this.cmbQuyen.TabIndex = 33;
            // 
            // txtUserName
            // 
            this.txtUserName.BackColor = System.Drawing.Color.Gainsboro;
            this.txtUserName.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtUserName.Location = new System.Drawing.Point(158, 22);
            this.txtUserName.Name = "txtUserName";
            this.txtUserName.Size = new System.Drawing.Size(150, 24);
            this.txtUserName.TabIndex = 29;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(24, 26);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(113, 20);
            this.label1.TabIndex = 25;
            this.label1.Text = "Tên tài khoản :";
            // 
            // btnXoaTaiKhoan
            // 
            this.btnXoaTaiKhoan.BackColor = System.Drawing.Color.MediumPurple;
            this.btnXoaTaiKhoan.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXoaTaiKhoan.ForeColor = System.Drawing.Color.Black;
            this.btnXoaTaiKhoan.IconChar = FontAwesome.Sharp.IconChar.Trash;
            this.btnXoaTaiKhoan.IconColor = System.Drawing.Color.Gainsboro;
            this.btnXoaTaiKhoan.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnXoaTaiKhoan.IconSize = 24;
            this.btnXoaTaiKhoan.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnXoaTaiKhoan.Location = new System.Drawing.Point(364, 59);
            this.btnXoaTaiKhoan.Name = "btnXoaTaiKhoan";
            this.btnXoaTaiKhoan.Size = new System.Drawing.Size(148, 36);
            this.btnXoaTaiKhoan.TabIndex = 38;
            this.btnXoaTaiKhoan.Text = "Xóa Tài Khoản";
            this.btnXoaTaiKhoan.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnXoaTaiKhoan.UseVisualStyleBackColor = false;
            this.btnXoaTaiKhoan.Click += new System.EventHandler(this.btnXoaTaiKhoan_Click);
            // 
            // btnSuaQuyen
            // 
            this.btnSuaQuyen.BackColor = System.Drawing.Color.MediumPurple;
            this.btnSuaQuyen.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSuaQuyen.ForeColor = System.Drawing.Color.Black;
            this.btnSuaQuyen.IconChar = FontAwesome.Sharp.IconChar.PenAlt;
            this.btnSuaQuyen.IconColor = System.Drawing.Color.Gainsboro;
            this.btnSuaQuyen.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnSuaQuyen.IconSize = 24;
            this.btnSuaQuyen.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSuaQuyen.Location = new System.Drawing.Point(364, 16);
            this.btnSuaQuyen.Name = "btnSuaQuyen";
            this.btnSuaQuyen.Size = new System.Drawing.Size(148, 36);
            this.btnSuaQuyen.TabIndex = 39;
            this.btnSuaQuyen.Text = "Sửa Quyền";
            this.btnSuaQuyen.UseVisualStyleBackColor = false;
            this.btnSuaQuyen.Click += new System.EventHandler(this.btnSuaQuyen_Click);
            // 
            // txtSeachTK
            // 
            this.txtSeachTK.BackColor = System.Drawing.Color.Gainsboro;
            this.txtSeachTK.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSeachTK.Location = new System.Drawing.Point(61, 136);
            this.txtSeachTK.Name = "txtSeachTK";
            this.txtSeachTK.Size = new System.Drawing.Size(214, 24);
            this.txtSeachTK.TabIndex = 40;
            this.txtSeachTK.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // iconButton3
            // 
            this.iconButton3.BackColor = System.Drawing.Color.Gainsboro;
            this.iconButton3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.iconButton3.ForeColor = System.Drawing.Color.Black;
            this.iconButton3.IconChar = FontAwesome.Sharp.IconChar.Search;
            this.iconButton3.IconColor = System.Drawing.Color.FromArgb(((int)(((byte)(33)))), ((int)(((byte)(34)))), ((int)(((byte)(110)))));
            this.iconButton3.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.iconButton3.IconSize = 32;
            this.iconButton3.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.iconButton3.Location = new System.Drawing.Point(26, 129);
            this.iconButton3.Name = "iconButton3";
            this.iconButton3.Size = new System.Drawing.Size(36, 36);
            this.iconButton3.TabIndex = 41;
            this.iconButton3.UseVisualStyleBackColor = false;
            // 
            // dgvQLTaiKhoan
            // 
            this.dgvQLTaiKhoan.AllowUserToAddRows = false;
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.Black;
            this.dgvQLTaiKhoan.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.dgvQLTaiKhoan.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvQLTaiKhoan.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column3,
            this.Column4});
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.Gainsboro;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgvQLTaiKhoan.DefaultCellStyle = dataGridViewCellStyle2;
            this.dgvQLTaiKhoan.GridColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.dgvQLTaiKhoan.Location = new System.Drawing.Point(26, 177);
            this.dgvQLTaiKhoan.Name = "dgvQLTaiKhoan";
            this.dgvQLTaiKhoan.ReadOnly = true;
            dataGridViewCellStyle3.ForeColor = System.Drawing.Color.Black;
            this.dgvQLTaiKhoan.RowsDefaultCellStyle = dataGridViewCellStyle3;
            this.dgvQLTaiKhoan.Size = new System.Drawing.Size(486, 127);
            this.dgvQLTaiKhoan.TabIndex = 42;
            this.dgvQLTaiKhoan.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvKhuVuc_CellClick);
            // 
            // Column1
            // 
            this.Column1.HeaderText = "STT";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            this.Column1.Width = 50;
            // 
            // Column2
            // 
            this.Column2.HeaderText = "Tên Tài Khoản ";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            this.Column2.Width = 140;
            // 
            // Column3
            // 
            this.Column3.HeaderText = "Mật Khẩu ";
            this.Column3.Name = "Column3";
            this.Column3.ReadOnly = true;
            this.Column3.Width = 120;
            // 
            // Column4
            // 
            this.Column4.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.Column4.HeaderText = "Quyền";
            this.Column4.Name = "Column4";
            this.Column4.ReadOnly = true;
            // 
            // FormQuanLyTaiKhoan
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(33)))), ((int)(((byte)(34)))), ((int)(((byte)(90)))));
            this.ClientSize = new System.Drawing.Size(542, 318);
            this.Controls.Add(this.dgvQLTaiKhoan);
            this.Controls.Add(this.iconButton3);
            this.Controls.Add(this.txtSeachTK);
            this.Controls.Add(this.btnSuaQuyen);
            this.Controls.Add(this.btnXoaTaiKhoan);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.cmbQuyen);
            this.Controls.Add(this.txtUserName);
            this.Controls.Add(this.label1);
            this.ForeColor = System.Drawing.Color.Gainsboro;
            this.Name = "FormQuanLyTaiKhoan";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Quản Lý Tài Khoản";
            this.Load += new System.EventHandler(this.FormQuanLyTaiKhoan_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvQLTaiKhoan)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox cmbQuyen;
        private System.Windows.Forms.TextBox txtUserName;
        private System.Windows.Forms.Label label1;
        private FontAwesome.Sharp.IconButton btnXoaTaiKhoan;
        private FontAwesome.Sharp.IconButton btnSuaQuyen;
        private System.Windows.Forms.TextBox txtSeachTK;
        private FontAwesome.Sharp.IconButton iconButton3;
        private System.Windows.Forms.DataGridView dgvQLTaiKhoan;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
    }
}