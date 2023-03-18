namespace TIEMCHUNGCOVI19.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PhieuChungNhan")]
    public partial class PhieuChungNhan
    {
        [Key]
        [StringLength(50)]
        public string MaSoPhieu { get; set; }

        [Required]
        [StringLength(50)]
        public string MaDotTiem { get; set; }

        public int LanTiem { get; set; }

        [Required]
        [StringLength(50)]
        public string CMND { get; set; }

        [Required]
        [StringLength(50)]
        public string MaNhanVienYT { get; set; }

        public virtual DotTiem DotTiem { get; set; }

        public virtual NguoiDan NguoiDan { get; set; }

        public virtual NhanVienYT NhanVienYT { get; set; }
    }
}
