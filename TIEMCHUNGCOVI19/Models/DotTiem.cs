namespace TIEMCHUNGCOVI19.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DotTiem")]
    public partial class DotTiem
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DotTiem()
        {
            PhieuChungNhans = new HashSet<PhieuChungNhan>();
        }

        [Key]
        [StringLength(50)]
        public string MaDotTiem { get; set; }

        [Column(TypeName = "date")]
        public DateTime NgayTiem { get; set; }

        [Required]
        [StringLength(50)]
        public string MaQuan { get; set; }

        [Required]
        [StringLength(50)]
        public string MaPhuong { get; set; }

        [Required]
        [StringLength(50)]
        public string MaLoai { get; set; }

        [Required]
        [StringLength(50)]
        public string MaSoDS { get; set; }

        [Required]
        [StringLength(50)]
        public string MaDoiNgu { get; set; }

        public virtual DanhSachTiem DanhSachTiem { get; set; }

        public virtual DoiNguYT DoiNguYT { get; set; }

        public virtual LoaiVacXin LoaiVacXin { get; set; }

        public virtual Phuong Phuong { get; set; }

        public virtual Quan Quan { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhieuChungNhan> PhieuChungNhans { get; set; }
    }
}
