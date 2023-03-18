namespace TIEMCHUNGCOVI19.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NguoiDan")]
    public partial class NguoiDan
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NguoiDan()
        {
            PhieuChungNhans = new HashSet<PhieuChungNhan>();
        }

        [Key]
        [StringLength(50)]
        public string CMND { get; set; }

        [Required]
        [StringLength(50)]
        public string HoTen { get; set; }

        [Required]
        [StringLength(50)]
        public string GioiTinh { get; set; }

        [Required]
        [StringLength(50)]
        public string NamSinh { get; set; }

        [Required]
        [StringLength(50)]
        public string SDT { get; set; }

        [Required]
        [StringLength(50)]
        public string MaQuan { get; set; }

        [Required]
        [StringLength(50)]
        public string MaPhuong { get; set; }

        [Required]
        [StringLength(50)]
        public string DiaChi { get; set; }

        [Required]
        [StringLength(50)]
        public string MaSoDS { get; set; }

        public virtual DanhSachTiem DanhSachTiem { get; set; }

        public virtual Phuong Phuong { get; set; }

        public virtual Quan Quan { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhieuChungNhan> PhieuChungNhans { get; set; }
    }
}
