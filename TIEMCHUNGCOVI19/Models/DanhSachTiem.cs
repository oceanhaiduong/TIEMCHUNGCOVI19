namespace TIEMCHUNGCOVI19.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DanhSachTiem")]
    public partial class DanhSachTiem
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DanhSachTiem()
        {
            DotTiems = new HashSet<DotTiem>();
            NguoiDans = new HashSet<NguoiDan>();
        }

        [Key]
        [StringLength(50)]
        public string MaSoDS { get; set; }

        [Required]
        [StringLength(50)]
        public string TenDanhSach { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DotTiem> DotTiems { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NguoiDan> NguoiDans { get; set; }
    }
}
