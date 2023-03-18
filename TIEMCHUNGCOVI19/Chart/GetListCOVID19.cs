using System;
using System.Collections.Generic;
using System.Linq;
using TIEMCHUNGCOVI19.Models;

namespace TIEMCHUNGCOVI19.Chart
{
    // Tạo Class lấy dữ liệu để tạo biểu đồ cột số ca nhiêm bênh của mỗi ngày
    public class GetListCOVID19
    {
        public DateTime Ngay { get; set; } // Ngày
        public int CaTiem { get; set; } // Ca Nhiễm
        public int CountCaTiem { get; set; } // tổng ca nhiễm

        public List<GetListCOVID19> DataChart()
        {
            List<GetListCOVID19> ListCOVID19 = new List<GetListCOVID19>();
            int SLCaTiem = 0; // Số lượng ca nhiễm theo ngày
            Covid19ContextDB context = new Covid19ContextDB();
            List<PhieuChungNhan> listPhieuChungNhan = context.PhieuChungNhans.ToList();
            List<DotTiem> listDotTiem = context.DotTiems.ToList();

            CountCaTiem = listPhieuChungNhan.Count;

            foreach (var item1 in listDotTiem)
            {
                foreach (var item2 in listPhieuChungNhan)
                {
                    if (item1.NgayTiem == item2.DotTiem.NgayTiem)
                    {
                        SLCaTiem++; // tính tổng số ca nhiễm theo một ngày
                    }
                }
                GetListCOVID19 itemChart = new GetListCOVID19();
                {
                    itemChart.Ngay = item1.NgayTiem;
                    itemChart.CaTiem = SLCaTiem;
                    ListCOVID19.Add(itemChart);
                }
                SLCaTiem = 0;
            }

            return ListCOVID19;
        }

    }
}
