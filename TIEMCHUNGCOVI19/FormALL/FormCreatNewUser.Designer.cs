namespace TIEMCHUNGCOVI19.FormALL
{
    partial class FormCreatNewUser
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
            this.txtPassWordAgain = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.optViewPass = new System.Windows.Forms.CheckBox();
            this.txtUserName = new System.Windows.Forms.TextBox();
            this.txtPassWord = new System.Windows.Forms.TextBox();
            this.btnTaoMoiTK = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.cmbQuyen = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // txtPassWordAgain
            // 
            this.txtPassWordAgain.BackColor = System.Drawing.Color.Gainsboro;
            this.txtPassWordAgain.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPassWordAgain.Location = new System.Drawing.Point(190, 127);
            this.txtPassWordAgain.Name = "txtPassWordAgain";
            this.txtPassWordAgain.PasswordChar = '*';
            this.txtPassWordAgain.Size = new System.Drawing.Size(186, 24);
            this.txtPassWordAgain.TabIndex = 22;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(17, 129);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(144, 20);
            this.label3.TabIndex = 21;
            this.label3.Text = "Nhập lại mật khẩu :";
            // 
            // optViewPass
            // 
            this.optViewPass.AutoSize = true;
            this.optViewPass.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.optViewPass.Location = new System.Drawing.Point(257, 230);
            this.optViewPass.Name = "optViewPass";
            this.optViewPass.Size = new System.Drawing.Size(119, 19);
            this.optViewPass.TabIndex = 20;
            this.optViewPass.Text = "Hiển thị mật khẩu";
            this.optViewPass.UseVisualStyleBackColor = true;
            this.optViewPass.CheckedChanged += new System.EventHandler(this.optViewPass_CheckedChanged);
            // 
            // txtUserName
            // 
            this.txtUserName.BackColor = System.Drawing.Color.Gainsboro;
            this.txtUserName.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtUserName.Location = new System.Drawing.Point(190, 32);
            this.txtUserName.Name = "txtUserName";
            this.txtUserName.Size = new System.Drawing.Size(186, 24);
            this.txtUserName.TabIndex = 19;
            // 
            // txtPassWord
            // 
            this.txtPassWord.BackColor = System.Drawing.Color.Gainsboro;
            this.txtPassWord.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPassWord.Location = new System.Drawing.Point(190, 78);
            this.txtPassWord.Name = "txtPassWord";
            this.txtPassWord.PasswordChar = '*';
            this.txtPassWord.Size = new System.Drawing.Size(186, 24);
            this.txtPassWord.TabIndex = 18;
            // 
            // btnTaoMoiTK
            // 
            this.btnTaoMoiTK.AutoSize = true;
            this.btnTaoMoiTK.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.btnTaoMoiTK.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTaoMoiTK.ForeColor = System.Drawing.Color.White;
            this.btnTaoMoiTK.Location = new System.Drawing.Point(190, 269);
            this.btnTaoMoiTK.Name = "btnTaoMoiTK";
            this.btnTaoMoiTK.Size = new System.Drawing.Size(186, 34);
            this.btnTaoMoiTK.TabIndex = 17;
            this.btnTaoMoiTK.Text = "Tạo tài khoản mới";
            this.btnTaoMoiTK.UseVisualStyleBackColor = false;
            this.btnTaoMoiTK.Click += new System.EventHandler(this.btnTaoMoiTK_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(17, 80);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(83, 20);
            this.label2.TabIndex = 16;
            this.label2.Text = "Mật khẩu :";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(17, 34);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(113, 20);
            this.label1.TabIndex = 15;
            this.label1.Text = "Tên tài khoản :";
            // 
            // cmbQuyen
            // 
            this.cmbQuyen.BackColor = System.Drawing.Color.Gainsboro;
            this.cmbQuyen.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbQuyen.FormattingEnabled = true;
            this.cmbQuyen.Location = new System.Drawing.Point(190, 177);
            this.cmbQuyen.Name = "cmbQuyen";
            this.cmbQuyen.Size = new System.Drawing.Size(186, 26);
            this.cmbQuyen.TabIndex = 23;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(17, 175);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(55, 20);
            this.label4.TabIndex = 24;
            this.label4.Text = "Quyền";
            // 
            // FormCreatNewUser
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(33)))), ((int)(((byte)(34)))), ((int)(((byte)(90)))));
            this.ClientSize = new System.Drawing.Size(401, 330);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.cmbQuyen);
            this.Controls.Add(this.txtPassWordAgain);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.optViewPass);
            this.Controls.Add(this.txtUserName);
            this.Controls.Add(this.txtPassWord);
            this.Controls.Add(this.btnTaoMoiTK);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.ForeColor = System.Drawing.Color.Gainsboro;
            this.Name = "FormCreatNewUser";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Tạo Tài Khoản Mới";
            this.Load += new System.EventHandler(this.FormCreatNewUser_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtPassWordAgain;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.CheckBox optViewPass;
        private System.Windows.Forms.TextBox txtUserName;
        private System.Windows.Forms.TextBox txtPassWord;
        private System.Windows.Forms.Button btnTaoMoiTK;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cmbQuyen;
        private System.Windows.Forms.Label label4;
    }
}