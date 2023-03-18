namespace TIEMCHUNGCOVI19.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NhanVienYT")]
    public partial class NhanVienYT
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NhanVienYT()
        {
            PhieuChungNhans = new HashSet<PhieuChungNhan>();
        }

        [Key]
        [StringLength(50)]
        public string MaNhanVienYT { get; set; }

        [Required]
        [StringLength(50)]
        public string TenNhanVienYT { get; set; }

        [Required]
        [StringLength(50)]
        public string MaDoiNgu { get; set; }

        [Required]
        [StringLength(50)]
        public string SDT { get; set; }

        [Required]
        [StringLength(50)]
        public string CoQuan { get; set; }

        [Required]
        [StringLength(50)]
        public string Email { get; set; }

        public virtual DoiNguYT DoiNguYT { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhieuChungNhan> PhieuChungNhans { get; set; }
    }
}
