using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace TIEMCHUNGCOVI19.Models
{
    public partial class Covid19ContextDB : DbContext
    {
        public Covid19ContextDB()
            : base("name=Covid19ContextDB1")
        {
        }

        public virtual DbSet<DanhSachTiem> DanhSachTiems { get; set; }
        public virtual DbSet<DoiNguYT> DoiNguYTs { get; set; }
        public virtual DbSet<DotTiem> DotTiems { get; set; }
        public virtual DbSet<LoaiVacXin> LoaiVacXins { get; set; }
        public virtual DbSet<NguoiDan> NguoiDans { get; set; }
        public virtual DbSet<NhanVienYT> NhanVienYTs { get; set; }
        public virtual DbSet<PhieuChungNhan> PhieuChungNhans { get; set; }
        public virtual DbSet<Phuong> Phuongs { get; set; }
        public virtual DbSet<Quan> Quans { get; set; }
        public virtual DbSet<Quyen> Quyens { get; set; }
        public virtual DbSet<TaiKhoan> TaiKhoans { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<DanhSachTiem>()
                .Property(e => e.MaSoDS)
                .IsUnicode(false);

            modelBuilder.Entity<DanhSachTiem>()
                .HasMany(e => e.DotTiems)
                .WithRequired(e => e.DanhSachTiem)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<DanhSachTiem>()
                .HasMany(e => e.NguoiDans)
                .WithRequired(e => e.DanhSachTiem)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<DoiNguYT>()
                .Property(e => e.MaDoiNgu)
                .IsUnicode(false);

            modelBuilder.Entity<DoiNguYT>()
                .HasMany(e => e.DotTiems)
                .WithRequired(e => e.DoiNguYT)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<DoiNguYT>()
                .HasMany(e => e.NhanVienYTs)
                .WithRequired(e => e.DoiNguYT)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<DotTiem>()
                .Property(e => e.MaDotTiem)
                .IsUnicode(false);

            modelBuilder.Entity<DotTiem>()
                .Property(e => e.MaQuan)
                .IsUnicode(false);

            modelBuilder.Entity<DotTiem>()
                .Property(e => e.MaPhuong)
                .IsUnicode(false);

            modelBuilder.Entity<DotTiem>()
                .Property(e => e.MaLoai)
                .IsUnicode(false);

            modelBuilder.Entity<DotTiem>()
                .Property(e => e.MaSoDS)
                .IsUnicode(false);

            modelBuilder.Entity<DotTiem>()
                .Property(e => e.MaDoiNgu)
                .IsUnicode(false);

            modelBuilder.Entity<DotTiem>()
                .HasMany(e => e.PhieuChungNhans)
                .WithRequired(e => e.DotTiem)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<LoaiVacXin>()
                .Property(e => e.MaLoai)
                .IsUnicode(false);

            modelBuilder.Entity<LoaiVacXin>()
                .HasMany(e => e.DotTiems)
                .WithRequired(e => e.LoaiVacXin)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NguoiDan>()
                .Property(e => e.CMND)
                .IsUnicode(false);

            modelBuilder.Entity<NguoiDan>()
                .Property(e => e.GioiTinh)
                .IsUnicode(false);

            modelBuilder.Entity<NguoiDan>()
                .Property(e => e.NamSinh)
                .IsUnicode(false);

            modelBuilder.Entity<NguoiDan>()
                .Property(e => e.SDT)
                .IsUnicode(false);

            modelBuilder.Entity<NguoiDan>()
                .Property(e => e.MaQuan)
                .IsUnicode(false);

            modelBuilder.Entity<NguoiDan>()
                .Property(e => e.MaPhuong)
                .IsUnicode(false);

            modelBuilder.Entity<NguoiDan>()
                .Property(e => e.MaSoDS)
                .IsUnicode(false);

            modelBuilder.Entity<NguoiDan>()
                .HasMany(e => e.PhieuChungNhans)
                .WithRequired(e => e.NguoiDan)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NhanVienYT>()
                .Property(e => e.MaNhanVienYT)
                .IsUnicode(false);

            modelBuilder.Entity<NhanVienYT>()
                .Property(e => e.MaDoiNgu)
                .IsUnicode(false);

            modelBuilder.Entity<NhanVienYT>()
                .Property(e => e.SDT)
                .IsUnicode(false);

            modelBuilder.Entity<NhanVienYT>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<NhanVienYT>()
                .HasMany(e => e.PhieuChungNhans)
                .WithRequired(e => e.NhanVienYT)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PhieuChungNhan>()
                .Property(e => e.MaSoPhieu)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuChungNhan>()
                .Property(e => e.MaDotTiem)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuChungNhan>()
                .Property(e => e.CMND)
                .IsUnicode(false);

            modelBuilder.Entity<PhieuChungNhan>()
                .Property(e => e.MaNhanVienYT)
                .IsUnicode(false);

            modelBuilder.Entity<Phuong>()
                .Property(e => e.MaPhuong)
                .IsUnicode(false);

            modelBuilder.Entity<Phuong>()
                .Property(e => e.MaQuan)
                .IsUnicode(false);

            modelBuilder.Entity<Phuong>()
                .HasMany(e => e.DotTiems)
                .WithRequired(e => e.Phuong)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Phuong>()
                .HasMany(e => e.NguoiDans)
                .WithRequired(e => e.Phuong)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Quan>()
                .Property(e => e.MaQuan)
                .IsUnicode(false);

            modelBuilder.Entity<Quan>()
                .HasMany(e => e.DotTiems)
                .WithRequired(e => e.Quan)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Quan>()
                .HasMany(e => e.NguoiDans)
                .WithRequired(e => e.Quan)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Quan>()
                .HasMany(e => e.Phuongs)
                .WithRequired(e => e.Quan)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Quyen>()
                .Property(e => e.MaQuyen)
                .IsUnicode(false);

            modelBuilder.Entity<Quyen>()
                .HasMany(e => e.TaiKhoans)
                .WithRequired(e => e.Quyen)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TaiKhoan>()
                .Property(e => e.TenTaiKhoan)
                .IsUnicode(false);

            modelBuilder.Entity<TaiKhoan>()
                .Property(e => e.MaQuyen)
                .IsUnicode(false);
        }
    }
}
