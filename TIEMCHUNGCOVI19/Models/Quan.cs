namespace TIEMCHUNGCOVI19.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Quan")]
    public partial class Quan
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Quan()
        {
            DotTiems = new HashSet<DotTiem>();
            NguoiDans = new HashSet<NguoiDan>();
            Phuongs = new HashSet<Phuong>();
        }

        [Key]
        [StringLength(50)]
        public string MaQuan { get; set; }

        [Required]
        [StringLength(50)]
        public string TenQuan { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DotTiem> DotTiems { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NguoiDan> NguoiDans { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Phuong> Phuongs { get; set; }
    }
}
