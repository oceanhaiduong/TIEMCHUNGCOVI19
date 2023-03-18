namespace TIEMCHUNGCOVI19.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Phuong")]
    public partial class Phuong
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Phuong()
        {
            DotTiems = new HashSet<DotTiem>();
            NguoiDans = new HashSet<NguoiDan>();
        }

        [Key]
        [StringLength(50)]
        public string MaPhuong { get; set; }

        [Required]
        [StringLength(50)]
        public string TenPhuong { get; set; }

        [Required]
        [StringLength(50)]
        public string MaQuan { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DotTiem> DotTiems { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NguoiDan> NguoiDans { get; set; }

        public virtual Quan Quan { get; set; }
    }
}
