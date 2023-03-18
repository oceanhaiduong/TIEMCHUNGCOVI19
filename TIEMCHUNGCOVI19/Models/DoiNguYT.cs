namespace TIEMCHUNGCOVI19.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DoiNguYT")]
    public partial class DoiNguYT
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DoiNguYT()
        {
            DotTiems = new HashSet<DotTiem>();
            NhanVienYTs = new HashSet<NhanVienYT>();
        }

        [Key]
        [StringLength(50)]
        public string MaDoiNgu { get; set; }

        [Required]
        [StringLength(50)]
        public string TenDoiNgu { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DotTiem> DotTiems { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NhanVienYT> NhanVienYTs { get; set; }
    }
}
