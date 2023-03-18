namespace TIEMCHUNGCOVI19.FormALL
{
    partial class FormChangePassWord
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
            this.txtPassWordPresent = new System.Windows.Forms.TextBox();
            this.txtPassWord = new System.Windows.Forms.TextBox();
            this.btnUpdateMk = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // txtPassWordAgain
            // 
            this.txtPassWordAgain.BackColor = System.Drawing.Color.Gainsboro;
            this.txtPassWordAgain.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPassWordAgain.Location = new System.Drawing.Point(195, 142);
            this.txtPassWordAgain.Name = "txtPassWordAgain";
            this.txtPassWordAgain.PasswordChar = '*';
            this.txtPassWordAgain.Size = new System.Drawing.Size(186, 24);
            this.txtPassWordAgain.TabIndex = 30;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(22, 144);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(144, 20);
            this.label3.TabIndex = 29;
            this.label3.Text = "Nhập lại mật khẩu :";
            // 
            // optViewPass
            // 
            this.optViewPass.AutoSize = true;
            this.optViewPass.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.optViewPass.Location = new System.Drawing.Point(262, 185);
            this.optViewPass.Name = "optViewPass";
            this.optViewPass.Size = new System.Drawing.Size(119, 19);
            this.optViewPass.TabIndex = 28;
            this.optViewPass.Text = "Hiển thị mật khẩu";
            this.optViewPass.UseVisualStyleBackColor = true;
            this.optViewPass.CheckedChanged += new System.EventHandler(this.optViewPass_CheckedChanged);
            // 
            // txtPassWordPresent
            // 
            this.txtPassWordPresent.BackColor = System.Drawing.Color.Gainsboro;
            this.txtPassWordPresent.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPassWordPresent.Location = new System.Drawing.Point(195, 47);
            this.txtPassWordPresent.Name = "txtPassWordPresent";
            this.txtPassWordPresent.Size = new System.Drawing.Size(186, 24);
            this.txtPassWordPresent.TabIndex = 27;
            // 
            // txtPassWord
            // 
            this.txtPassWord.BackColor = System.Drawing.Color.Gainsboro;
            this.txtPassWord.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPassWord.Location = new System.Drawing.Point(195, 93);
            this.txtPassWord.Name = "txtPassWord";
            this.txtPassWord.PasswordChar = '*';
            this.txtPassWord.Size = new System.Drawing.Size(186, 24);
            this.txtPassWord.TabIndex = 26;
            // 
            // btnUpdateMk
            // 
            this.btnUpdateMk.AutoSize = true;
            this.btnUpdateMk.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.btnUpdateMk.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnUpdateMk.ForeColor = System.Drawing.Color.White;
            this.btnUpdateMk.Location = new System.Drawing.Point(195, 226);
            this.btnUpdateMk.Name = "btnUpdateMk";
            this.btnUpdateMk.Size = new System.Drawing.Size(186, 34);
            this.btnUpdateMk.TabIndex = 25;
            this.btnUpdateMk.Text = "Đổi mật khẩu";
            this.btnUpdateMk.UseVisualStyleBackColor = false;
            this.btnUpdateMk.Click += new System.EventHandler(this.btnUpdateMk_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(22, 95);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(112, 20);
            this.label2.TabIndex = 24;
            this.label2.Text = "Mật khẩu mới :";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(22, 49);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(138, 20);
            this.label1.TabIndex = 23;
            this.label1.Text = "Mật khẩu hiện tại :";
            // 
            // FormChangePassWord
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(33)))), ((int)(((byte)(34)))), ((int)(((byte)(90)))));
            this.ClientSize = new System.Drawing.Size(421, 297);
            this.Controls.Add(this.txtPassWordAgain);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.optViewPass);
            this.Controls.Add(this.txtPassWordPresent);
            this.Controls.Add(this.txtPassWord);
            this.Controls.Add(this.btnUpdateMk);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.ForeColor = System.Drawing.Color.Gainsboro;
            this.Name = "FormChangePassWord";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Đổi mật khẩu";
            this.Load += new System.EventHandler(this.FormChangePassWord_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtPassWordAgain;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.CheckBox optViewPass;
        private System.Windows.Forms.TextBox txtPassWordPresent;
        private System.Windows.Forms.TextBox txtPassWord;
        private System.Windows.Forms.Button btnUpdateMk;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
    }
}