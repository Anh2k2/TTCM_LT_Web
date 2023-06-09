﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace QLTN.Models;

public partial class ThongTinNha
{
    [DisplayName("Mã nhà: ")]
    public int MaNha { get; set; }

    [DisplayName("Địa chỉ nhà: ")]
    [RegularExpression(@"^[a-zA-Z0-9\s,'-]*$", ErrorMessage = "Địa chỉ không hợp lệ")]
    public string DiaChiNha { get; set; } = null!;

    [DisplayName("Diện tích nhà: ")]
    [Range(1, 1000, ErrorMessage = "Diện tích phải nằm trong khoảng từ 1 đến 1000 mét vuông.")]
    public string DienTich { get; set; } = null!;

    [DisplayName("Giá nhà: ")]
    [RegularExpression(@"^\d+$", ErrorMessage = "Giá phòng chỉ được chứa các chữ số.")]
    public decimal GiaPhong { get; set; }

    [DisplayName("Tiền điện: ")]
    [RegularExpression(@"^\d+$", ErrorMessage = "Giá điện chỉ được chứa các chữ số.")]
    public decimal TienDien { get; set; }

    [DisplayName("Tiền nước: ")]
    [RegularExpression(@"^\d+$", ErrorMessage = "Giá nước chỉ được chứa các chữ số.")]
    public decimal TienNuoc { get; set; }

    [DisplayName("Tiền đặt cọc: ")]
    [RegularExpression(@"^\d+$", ErrorMessage = "Tiền đặt cọc chỉ được chứa các chữ số.")]
    public decimal TienDatCoc { get; set; }

    [DisplayName("Tình trạng thuê: ")]
    [RegularExpression(@"^[a-zA-Z\s\u00C0-\u00FF]+$", ErrorMessage = "Tình trạng thuê có thể gồm chữ thường hoặc in hoa.")]
    public int TinhTrangThue { get; set; }

    [DisplayName("Ảnh minh họa: ")]
    [RegularExpression(@"\.(jpg|jpeg|png|gif)$", ErrorMessage = "Vui lòng chỉ chọn file ảnh định dạng JPG, JPEG, PNG hoặc GIF.")]
    public string? AnhMinhHoa { get; set; } = null!;

    [NotMapped]
    public IFormFile? formFile { get; set; }

    [DisplayName("Ngày đăng tải: ")]
    [RegularExpression(@"^([0-9]{2})/([0-9]{2})/([0-9]{4})$", ErrorMessage = "Ngày đăng không đúng định dạng dd/MM/yyyy.")]
    public DateTime NgayDangTai { get; set; }

    [DisplayName("Mô tả nhà: ")]
    [RegularExpression(@"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$", ErrorMessage = "Nội dung mô tả có thể gồm chữ thường, in hoa và số.")]
    public string MoTaNha { get; set; } = null!;

    public int MaDtsd { get; set; }

    public int MaLoai { get; set; }

    public int MaChuNha { get; set; }

    public int MaMdsd { get; set; }

    public virtual ICollection<HopDongNha> HopDongNhas { get; } = new List<HopDongNha>();

    public virtual ChuNha MaChuNhaNavigation { get; set; } = null!;

    public virtual DoiTuongSuDung MaDtsdNavigation { get; set; } = null!;

    public virtual LoaiNha MaLoaiNavigation { get; set; } = null!;

    public virtual MucDichSuDung MaMdsdNavigation { get; set; } = null!;

    public virtual ICollection<NhaDichVu> NhaDichVus { get; } = new List<NhaDichVu>();

    public virtual ICollection<NhaTaiSan> NhaTaiSans { get; } = new List<NhaTaiSan>();
}
