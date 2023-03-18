using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;
using TIEMCHUNGCOVI19.Chart;

namespace TIEMCHUNGCOVI19.FormALL
{
    public partial class FormThongKe : Form
    {
        public int TrungBinh = 0;
        public FormThongKe()
        {
            InitializeComponent();
        }
        private void FormThongKe_Load(object sender, EventArgs e)
        {
            getChartColumn();
            getChartTop3Max();
            getChartTop3Min();
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
            obj.AxisY.Maximum = 70;
            obj.AxisX.Interval = 0;
            obj.AxisX.Interval = 1;
            obj.AxisY.Interval = 10;

            chartColumn.Series["ChartA"].Points.Clear(); // Xóa dữ liệu hiện có 
            GetQuanCOVID19 listCovid19 = new GetQuanCOVID19();
            chartColumn.Series["ChartA"].Color = Color.Blue;

            chartColumn.Series["ChartA"].IsVisibleInLegend = false; // Tạo nhiều cột 
            int index = 0;
                foreach (var item in listCovid19.DataChartQuan())
                { 
                    chartColumn.Series["ChartA"].Points.Add(item.CaTiem);
                    chartColumn.Series["ChartA"].Points[index].Label = item.CaTiem.ToString();
                    chartColumn.Series["ChartA"].Points[index].AxisLabel = item.Quan;
                    index++;
           
                }
        }

        public void getChartTop3Max()
        {
            var obj = chartTop3Max.ChartAreas[0];
            obj.AxisX.IntervalType = DateTimeIntervalType.Number;
            obj.AxisY.LabelStyle.IsEndLabelVisible = true;

            obj.AxisX.Minimum = 0;
            //obj.AxisX.Maximum = 3;
            obj.AxisY.Minimum = 0;
            obj.AxisY.Maximum = 70;
            obj.AxisX.Interval = 0;
            obj.AxisX.Interval = 1;
            obj.AxisY.Interval = 10;

            chartTop3Max.Series["ChartTop3Max"].Points.Clear(); // Xóa dữ liệu hiện có 
            GetQuanCOVID19 listCovid19 = new GetQuanCOVID19();
            chartTop3Max.Series["ChartTop3Max"].Color = Color.Green;

            chartTop3Max.Series["ChartTop3Max"].IsVisibleInLegend = false; // Tạo nhiều cột 
            int index = 0;
            foreach (var item in listCovid19.DataChartQuan())
            {
                chartTop3Max.Series["ChartTop3Max"].Points.Add(item.CaTiem);
                chartTop3Max.Series["ChartTop3Max"].Points[index].Label = item.CaTiem.ToString();
                chartTop3Max.Series["ChartTop3Max"].Points[index].AxisLabel = item.Quan;
                index++;
                if (index == 3)
                    break;
            }
        }

        public void getChartTop3Min()
        {
            var obj = chartTop3Min.ChartAreas[0];
            obj.AxisX.IntervalType = DateTimeIntervalType.Number;
            obj.AxisY.LabelStyle.IsEndLabelVisible = true;

            obj.AxisX.Minimum = 0;
            //obj.AxisX.Maximum = 3;
            obj.AxisY.Minimum = 0;
            obj.AxisY.Maximum = 70;
            obj.AxisX.Interval = 0;
            obj.AxisX.Interval = 1;
            obj.AxisY.Interval = 10;

            chartTop3Min.Series["ChartTop3Min"].Points.Clear(); // Xóa dữ liệu hiện có 
            GetQuanCOVID19 listCovid19 = new GetQuanCOVID19();
            chartTop3Min.Series["ChartTop3Min"].Color = Color.Green;

            chartTop3Min.Series["ChartTop3Min"].IsVisibleInLegend = false; // Tạo nhiều cột 
            int index = 0;
            foreach (var item in listCovid19.DataChartQuan())
            {
                chartTop3Min.Series["ChartTop3Min"].Points.Add(item.CaTiem);
                chartTop3Min.Series["ChartTop3Min"].Points[index].Label = item.CaTiem.ToString();
                chartTop3Min.Series["ChartTop3Min"].Points[index].AxisLabel = item.Quan;
                index++;
                if (index == 3)
                    break;
            }
        }


    }
}
