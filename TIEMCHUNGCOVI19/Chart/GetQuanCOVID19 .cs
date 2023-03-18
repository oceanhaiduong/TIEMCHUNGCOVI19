using System;
using System.Collections.Generic;
using System.Linq;
using TIEMCHUNGCOVI19.Models;

namespace TIEMCHUNGCOVI19.Chart
{
    // Tạo Class lấy dữ liệu để tạo biểu đồ cột số ca nhiêm bênh của mỗi quận
    public class GetQuanCOVID19
    {
        public String Quan { get; set; } // Khu vực
        public int CaTiem { get; set; } // Ca Nhiễm
        public String TrungBinh { get; set; } // Tỉ lệ %

        public List<GetQuanCOVID19> DataChartQuan()
        {
            List<GetQuanCOVID19> ListCOVID19 = new List<GetQuanCOVID19>();
            int SLCaTiem = 0; // Số lượng ca nhiễm theo quận
            Covid19ContextDB context = new Covid19ContextDB();
            List<Quan> listQuan = context.Quans.ToList();
            List<PhieuChungNhan> listPhieuChungNhan = context.PhieuChungNhans.ToList();


            foreach (var item1 in listQuan)
            {
                foreach (var item2 in listPhieuChungNhan)
                {
                    if (item1.MaQuan == item2.DotTiem.MaQuan)
                    {
                        SLCaTiem++; // tính tổng số ca nhiễm theo một ngay
                    }
                }
                GetQuanCOVID19 itemChart = new GetQuanCOVID19();
                {
                    itemChart.Quan = item1.TenQuan;
                    itemChart.CaTiem = SLCaTiem;
                    ListCOVID19.Add(itemChart);
                }
                SLCaTiem = 0;
            }

            return ListCOVID19;
        }

    }
}
