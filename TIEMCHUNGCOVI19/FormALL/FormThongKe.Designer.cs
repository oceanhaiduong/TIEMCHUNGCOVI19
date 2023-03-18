namespace TIEMCHUNGCOVI19.FormALL
{
    partial class FormThongKe
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
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea1 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend1 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series1 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Title title1 = new System.Windows.Forms.DataVisualization.Charting.Title();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea2 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend2 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series2 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Title title2 = new System.Windows.Forms.DataVisualization.Charting.Title();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea3 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend3 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series3 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.Title title3 = new System.Windows.Forms.DataVisualization.Charting.Title();
            this.panel1 = new System.Windows.Forms.Panel();
            this.chartTop3Min = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.chartTop3Max = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.chartColumn = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chartTop3Min)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chartTop3Max)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chartColumn)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.AutoScroll = true;
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(33)))), ((int)(((byte)(34)))), ((int)(((byte)(73)))));
            this.panel1.Controls.Add(this.chartTop3Min);
            this.panel1.Controls.Add(this.chartTop3Max);
            this.panel1.Controls.Add(this.dataGridView1);
            this.panel1.Controls.Add(this.chartColumn);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1004, 451);
            this.panel1.TabIndex = 0;
            // 
            // chartTop3Min
            // 
            this.chartTop3Min.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.chartTop3Min.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(128)))));
            this.chartTop3Min.BorderlineColor = System.Drawing.Color.WhiteSmoke;
            chartArea1.Name = "ChartArea1";
            this.chartTop3Min.ChartAreas.Add(chartArea1);
            legend1.Name = "Legend1";
            this.chartTop3Min.Legends.Add(legend1);
            this.chartTop3Min.Location = new System.Drawing.Point(477, 450);
            this.chartTop3Min.Name = "chartTop3Min";
            this.chartTop3Min.Palette = System.Windows.Forms.DataVisualization.Charting.ChartColorPalette.Bright;
            series1.ChartArea = "ChartArea1";
            series1.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Bar;
            series1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            series1.Legend = "Legend1";
            series1.LegendText = "Tổng Tiêm";
            series1.Name = "ChartTop3Min";
            series1.YValuesPerPoint = 2;
            this.chartTop3Min.Series.Add(series1);
            this.chartTop3Min.Size = new System.Drawing.Size(392, 231);
            this.chartTop3Min.TabIndex = 6;
            this.chartTop3Min.Text = "chart2";
            title1.Font = new System.Drawing.Font("Tahoma", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            title1.Name = "Title1";
            title1.Text = "Top 3 quận có tỉ lệ tiêm trung bình thấp nhất";
            this.chartTop3Min.Titles.Add(title1);
            // 
            // chartTop3Max
            // 
            this.chartTop3Max.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(128)))));
            this.chartTop3Max.BorderlineColor = System.Drawing.Color.WhiteSmoke;
            chartArea2.Name = "ChartArea1";
            this.chartTop3Max.ChartAreas.Add(chartArea2);
            legend2.Name = "Legend1";
            this.chartTop3Max.Legends.Add(legend2);
            this.chartTop3Max.Location = new System.Drawing.Point(74, 450);
            this.chartTop3Max.Name = "chartTop3Max";
            this.chartTop3Max.Palette = System.Windows.Forms.DataVisualization.Charting.ChartColorPalette.Bright;
            series2.ChartArea = "ChartArea1";
            series2.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Bar;
            series2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            series2.Legend = "Legend1";
            series2.LegendText = "Tổng tiêm";
            series2.Name = "ChartTop3Max";
            series2.YValuesPerPoint = 2;
            this.chartTop3Max.Series.Add(series2);
            this.chartTop3Max.Size = new System.Drawing.Size(392, 231);
            this.chartTop3Max.TabIndex = 5;
            this.chartTop3Max.Text = "chart1";
            title2.Font = new System.Drawing.Font("Tahoma", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            title2.Name = "Title1";
            title2.Text = "Top 3 quận có tỉ lệ tiêm trung bình cao nhất";
            this.chartTop3Max.Titles.Add(title2);
            // 
            // dataGridView1
            // 
            this.dataGridView1.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(33)))), ((int)(((byte)(34)))), ((int)(((byte)(73)))));
            this.dataGridView1.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(0, 712);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(984, 18);
            this.dataGridView1.TabIndex = 3;
            // 
            // chartColumn
            // 
            this.chartColumn.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.chartColumn.BackColor = System.Drawing.Color.LightSteelBlue;
            this.chartColumn.BorderlineColor = System.Drawing.Color.WhiteSmoke;
            chartArea3.Name = "ChartArea1";
            this.chartColumn.ChartAreas.Add(chartArea3);
            legend3.Name = "Legend1";
            this.chartColumn.Legends.Add(legend3);
            this.chartColumn.Location = new System.Drawing.Point(78, 56);
            this.chartColumn.Name = "chartColumn";
            this.chartColumn.Palette = System.Windows.Forms.DataVisualization.Charting.ChartColorPalette.Bright;
            series3.ChartArea = "ChartArea1";
            series3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            series3.Legend = "Legend1";
            series3.LegendText = "Mũi Tiêm";
            series3.Name = "ChartA";
            series3.YValuesPerPoint = 2;
            this.chartColumn.Series.Add(series3);
            this.chartColumn.Size = new System.Drawing.Size(790, 337);
            this.chartColumn.TabIndex = 2;
            this.chartColumn.Text = "chart1";
            title3.Font = new System.Drawing.Font("Tahoma", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            title3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(42)))), ((int)(((byte)(50)))), ((int)(((byte)(147)))));
            title3.Name = "Title1";
            title3.Text = "Biểu Đồ Tiêm Chủng Toàn Thành Phố HCM";
            this.chartColumn.Titles.Add(title3);
            // 
            // FormThongKe
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoScroll = true;
            this.AutoSize = true;
            this.ClientSize = new System.Drawing.Size(1004, 451);
            this.Controls.Add(this.panel1);
            this.Name = "FormThongKe";
            this.Text = "Thống Kê";
            this.Load += new System.EventHandler(this.FormThongKe_Load);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.chartTop3Min)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chartTop3Max)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chartColumn)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DataGridView dataGridView1;
        public System.Windows.Forms.DataVisualization.Charting.Chart chartColumn;
        public System.Windows.Forms.DataVisualization.Charting.Chart chartTop3Min;
        public System.Windows.Forms.DataVisualization.Charting.Chart chartTop3Max;
    }
}