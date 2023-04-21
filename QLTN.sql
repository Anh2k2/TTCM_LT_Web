--CREATE DATABASE QLTN
--USE QLTN
--table NguoiDung
create table NguoiDung(
	MaNguoiDung int identity not null,
	TenNguoiDung nvarchar(MAX) not null,
	SDT nvarchar(MAX) not null,
	Email nvarchar(MAX) not null,
	DiaChi nvarchar(MAX) not null,
	primary key(MaNguoiDung)
)

--insert NguoiDung
insert into NguoiDung(TenNguoiDung, SDT, Email, DiaChi) values (N'Dungx', '0987654321', 'dung@gmail.com', 'inyourheart')

--table LoaiNha
create table LoaiNha(
	MaLoai int identity not null,
	TenLoai nvarchar(MAX) not null, 
	primary key (MaLoai),
)

--insert LoaiNha
insert into LoaiNha(TenLoai) values (N'Nhà cấp 4')
insert into LoaiNha(TenLoai) values (N'Nhà 2 tầng')
insert into LoaiNha(TenLoai) values (N'Nhà 3 tầng')
insert into LoaiNha(TenLoai) values (N'Chung cư')
insert into LoaiNha(TenLoai) values (N'Chung cư mini')
insert into LoaiNha(TenLoai) values (N'Nhà trọ')

--table DoiTuongSuDung
Create table DoiTuongSuDung(
	MaDTSD int identity not null,
	TenDTSD nvarchar(MAX) not null,
	primary key(MaDTSD),
)

--insert DoiTuongSuDung
insert into DoiTuongSuDung(TenDTSD) values (N'Sinh viên')
insert into DoiTuongSuDung(TenDTSD) values (N'Học sinh')
insert into DoiTuongSuDung(TenDTSD) values (N'Người lao động')
insert into DoiTuongSuDung(TenDTSD) values (N'Nhân viên văn phòng')
insert into DoiTuongSuDung(TenDTSD) values (N'Doanh nghiệp')

--table DichVu
create table DichVu(
	MaDichVu int identity not null,
	TenDichVu nvarchar(MAX) not null,
	primary key (MaDichVu)
)

--insert DichVu
insert into DichVu(TenDichVu) values (N'Wifi miễn phí')
insert into DichVu(TenDichVu) values (N'Chỗ để xe máy')
insert into DichVu(TenDichVu) values (N'Chỗ để ô tô')
insert into DichVu(TenDichVu) values (N'Miễn phí thu gom rác')
insert into DichVu(TenDichVu) values (N'Thang máy')
insert into DichVu(TenDichVu) values (N'Máy giặt miễn phí')

--table ChuNha
create table ChuNha(
	MaChuNha int identity not null,
	TenChuNha nvarchar(MAX) not null,
	DiaChi nvarchar(MAX) not null,
	NgaySinh date not null,
	SDTChuNha text not null,
	SDTChuNha2 text,
	Email text not null,
	AnhChuNha text not null,
	MoTaChuNha nvarchar(MAX) not null,
	primary key(MaChuNha)
)

--insert ChuNha
insert into ChuNha(TenChuNha, DiaChi, NgaySinh, SDTChuNha, Email, AnhChuNha, MoTaChuNha) values (N'Nguyễn Ngọc Anh', N'Đống Đa, Hà Nội', '1986-04-07', '0475643821', 'nguyenngocanh@gmail.com', 'chu_1.jpg', N'Chủ nhà cho thuê là người vui tính, thân thiện và luôn sẵn sàng hỗ trợ cho khách thuê nhà. Họ sẽ giúp đỡ khách thuê nhà trong việc điều chỉnh và sửa chữa các thiết bị trong nhà nếu cần thiết và giúp đỡ trong các thủ tục liên quan đến việc thuê nhà.')
insert into ChuNha(TenChuNha, DiaChi, NgaySinh, SDTChuNha, Email, AnhChuNha, MoTaChuNha) values (N'Trương Anh Ngọc', N'Hà Đông, Hà Nội', '1985-04-07', '0863426843', 'truonganhngoc@gmail.com', 'chu_2.jpg', N'Chủ nhà cho thuê rất tận tâm và chăm sóc căn nhà của mình. Họ sẽ đảm bảo rằng nhà luôn sạch sẽ, tiện nghi và được bảo trì định kỳ. Nếu khách thuê nhà gặp bất kỳ vấn đề gì trong quá trình sử dụng, chủ nhà sẽ giúp đỡ để giải quyết ngay lập tức.')
insert into ChuNha(TenChuNha, DiaChi, NgaySinh, SDTChuNha, Email, AnhChuNha, MoTaChuNha) values (N'Phạm Văn Toàn', N'Đống Đa, Hà Nội', '1965-02-11', '0762457341', 'phamvantoan@gmail.com', 'chu_3.jpg', N'Chủ nhà cho thuê là người rất chuyên nghiệp và đáng tin cậy. Họ sẽ đưa ra các thỏa thuận rõ ràng và chính xác về việc thuê nhà và đảm bảo tuân thủ các quy định liên quan đến việc cho thuê nhà.')
insert into ChuNha(TenChuNha, DiaChi, NgaySinh, SDTChuNha, Email, AnhChuNha, MoTaChuNha) values (N'Trần Thu Thủy', N'Cầu Giấy, Hà Nội', '1973-09-11', '0583745731', 'tranthuthuy@gmail.com', 'chu_4.jpg', N'Chủ nhà cho thuê là người rất linh hoạt và có thể thương lượng về giá thuê và các điều kiện cho thuê nhà. Họ sẵn sàng đàm phán và thay đổi điều kiện cho thuê nhà để đáp ứng nhu cầu của khách thuê nhà.')
insert into ChuNha(TenChuNha, DiaChi, NgaySinh, SDTChuNha, Email, AnhChuNha, MoTaChuNha) values (N'Khổng Thu Quỳnh', N'Ba Đình, Hà Nội', '1955-02-24', '0865354190', 'khongthuquynh@gmail.com', 'chu_5.jpg', N'Chủ nhà cho thuê là người đáng tin cậy và giữ gìn an ninh của căn nhà. Họ đảm bảo rằng nhà luôn được bảo vệ và giám sát, đồng thời cung cấp cho khách thuê nhà các chỉ dẫn liên quan đến việc giữ an ninh cho căn nhà.')
insert into ChuNha(TenChuNha, DiaChi, NgaySinh, SDTChuNha, Email, AnhChuNha, MoTaChuNha) values (N'Nguyễn Văn Trường', N'Đống Đa, Hà Nội', '1958-02-11', '0163475325', 'nguyenvantruong@gmail.com', 'chu_6.jpg', N'Chủ nhà cho thuê là người thân thiện và sẵn sàng tạo ra một môi trường sống thoải mái và ấm cúng cho khách thuê nhà. Họ sẽ đưa ra các gợi ý về cách trang trí và bố trí nội thất để giúp căn nhà trở nên đẹp hơn và thoải mái hơn.')
insert into ChuNha(TenChuNha, DiaChi, NgaySinh, SDTChuNha, Email, AnhChuNha, MoTaChuNha) values (N'Lương Tú Tuấn', N'Mỹ Đình, Hà Nội', '1989-07-31', '0547326863', 'luongtutuan@gmail.com', 'chu_7.jpg', N'Chủ nhà cho thuê là người có trách nhiệm và luôn đáp ứng kịp thời các yêu cầu của khách thuê nhà. Họ sẽ giúp đỡ trong việc giải quyết các vấn đề kỹ thuật và sửa chữa khi cần thiết để đảm bảo nhà luôn ở trong tình trạng tốt nhất.')
insert into ChuNha(TenChuNha, DiaChi, NgaySinh, SDTChuNha, Email, AnhChuNha, MoTaChuNha) values (N'Phạm Thu Oanh', N'Long Biên, Hà Nội', '1999-11-05', '0654398416', 'phamthuoanh@gmail.com', 'chu_8.jpg', N'Chủ nhà cho thuê là người có tâm huyết và đam mê trong việc quản lý và cho thuê căn nhà của mình. Họ luôn cập nhật và nâng cấp các tiện ích và trang thiết bị trong nhà để đáp ứng nhu cầu của khách thuê nhà.')
insert into ChuNha(TenChuNha, DiaChi, NgaySinh, SDTChuNha, Email, AnhChuNha, MoTaChuNha) values (N'Nguyễn Ánh Trang', N'Đông Anh, Hà Nội', '1995-12-11', '0576824319', 'nguyenanhtrang@gmail.com', 'chu_9.jpg', N'Chủ nhà cho thuê là người đáng tin cậy và sẵn sàng giúp đỡ trong việc giới thiệu các tiện ích và dịch vụ xung quanh khu vực nhà để giúp khách thuê nhà có được một cuộc sống thuận tiện và tốt đẹp hơn.')
insert into ChuNha(TenChuNha, DiaChi, NgaySinh, SDTChuNha, Email, AnhChuNha, MoTaChuNha) values (N'Cao Bá Đạo', N'Cầu Giấy, Hà Nội', '1968-01-31', '0534218642', 'caobadao@gmail.com', 'chu_10.jpg', N'Chủ nhà cho thuê là người tôn trọng quyền riêng tư của khách thuê nhà và đảm bảo rằng những thông tin cá nhân của khách thuê nhà sẽ được bảo mật và không được tiết lộ cho bất kỳ ai ngoài các quy định pháp luật.')

--table MucDichSuDung
create table MucDichSuDung(
	MaMDSD int identity not null,
	TenMDSD nvarchar(MAX) not null,
	primary key(MaMDSD),
)

--insert MucDichSuDung
insert into MucDichSuDung(TenMDSD) values (N'Ở')
insert into MucDichSuDung(TenMDSD) values (N'Làm việc')
insert into MucDichSuDung(TenMDSD) values (N'Mở cửa hàng')
insert into MucDichSuDung(TenMDSD) values (N'Văn phòng')

--table ThongTinNha
create table ThongTinNha(
	MaNha int identity not null,
	DiaChiNha nvarchar(MAX) not null,
	DienTich text not null,
	GiaPhong money not null,
	TienDien money not null,
	TienNuoc money not null,
	TienDatCoc money not null,
	TinhTrangThue int not null,
	AnhMinhHoa text not null,
	NgayDangTai date not null,
	MoTaNha nvarchar(MAX) not null,
	MaDTSD int not null,
	MaLoai int not null,
	MaChuNha int not null,
	MaMDSD int not null,
	primary key(MaNha),
	constraint FK_MaLoai foreign key(MaLoai) references LoaiNha(MaLoai),
	constraint FK_MaDTSD foreign key(MaDTSD) references DoiTuongSuDung(MaDTSD),
	constraint FK_MaChuNha foreign key(MaChuNha) references ChuNha(MaChuNha),
	constraint FK_MaMDSD foreign key(MaMDSD) references MucDichSuDung(MaMDSD),
)

insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Đống Đa, Hà Nội', '200m2', '3000000', '3500', '10000', '3000000', 0, '2tang_1.jpg', '2022-12-25', N'Nhà cho thuê có 3 phòng ngủ, 2 phòng tắm, phòng khách rộng, nhà bếp tiện nghi và sân sau rộng rãi. Nhà nằm trong khu vực yên tĩnh, gần trường học, cửa hàng và các tiện ích công cộng. Nhà được trang bị đầy đủ nội thất cơ bản như tủ lạnh, máy giặt, bếp ga, tủ quần áo, điều hòa và nóng lạnh.', 4, 2, 1, 1)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Cầu Giấy, Hà Nội', '230m2', '3500000', '3000', '9000', '3000000', 0, '2tang_2.jpg', '2021-10-14', N'Căn hộ cho thuê gồm 2 phòng ngủ, 1 phòng tắm, phòng khách và nhà bếp. Căn hộ được thiết kế hiện đại, nội thất mới và tiện nghi, có ban công và tầm nhìn đẹp. Nằm trong tòa nhà an ninh, có bảo vệ 24/7, chỗ đậu xe hơi miễn phí và tiện ích khác như phòng tập thể dục, hồ bơi và sân chơi trẻ em.', 4, 2, 1, 2)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Đống Đa, Hà Nội', '250m2', '4000000', '2500', '10000', '4000000', 0, '2tang_3.jpg', '2021-09-01', N'Phòng cho thuê có diện tích khoảng 250m2, bao gồm phòng ngủ, phòng tắm và nhà bếp. Phòng được trang bị đầy đủ nội thất như giường, tủ quần áo, bàn làm việc, điều hòa và nóng lạnh. Nhà vệ sinh riêng, có chỗ để xe, khu vực an ninh và yên tĩnh. Phòng trọ nằm gần các trường đại học và chợ, rất thuận tiện cho sinh viên và người đi làm.', 1, 2, 4, 2)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Cầu Giấy, Hà Nội', '185m2', '2500000', '4500', '15000', '2500000', 0, '2tang_4.jpg', '2023-01-09', N'Nhà riêng cho thuê bao gồm 4 phòng ngủ, 3 phòng tắm, phòng khách rộng và nhà bếp. Nhà được thiết kế theo phong cách hiện đại, có sân trước và sân sau rộng rãi. Nằm trong khu vực an ninh, gần các trung tâm mua sắm, cửa hàng và các tiện ích khác. Nhà được trang bị đầy đủ nội thất và thiết bị gia dụng cơ bản.', 3, 2, 9, 3)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Nhổn, Hà Nội', '260m2', '3000000', '3000', '12000', '3000000', 0, '2tang_5.jpg', '2023-02-04', N'Căn hộ studio cho thuê có diện tích khoảng 30m2, gồm một phòng ngủ, một phòng tắm và một phòng khách/không gian sinh hoạt chung. Căn hộ được trang bị đầy đủ nội thất mới và tiện nghi, bao gồm giường, tủ quần áo, bàn làm việc, điều hòa và nóng lạnh. Nằm trong tòa nhà an ninh, có bảo vệ 24/7, chỗ đậu xe hơi miễn phí và tiện ích khác như phòng tập thể dục và hồ bơi.', 5, 2, 3, 4)

insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Hà Đông, Hà Nội', '200m2', '5000000', '2500', '8000', '5000000', 0, '3tang_1.jpg', '2023-02-20', N'Phòng trọ cho thuê có diện tích khoảng 15m2, bao gồm một phòng ngủ và một phòng tắm. Phòng được trang bị đầy đủ nội thất cơ bản như giường, tủ quần áo, bàn làm việc và quạt. Nhà vệ sinh riêng, có khu vực để xe, khu vực an ninh và yên tĩnh. Phòng trọ nằm gần các tiện ích như cửa hàng, trường học và chợ.', 2, 3, 9, 4)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Hà Đông, Hà Nội', '260m2', '7000000', '2500', '8000', '7000000', 0, '3tang_2.jpg', '2022-12-01', N'Căn hộ dịch vụ cho thuê có diện tích khoảng 40m2, bao gồm 1 phòng ngủ, 1 phòng tắm, phòng khách và nhà bếp. Căn hộ được thiết kế sang trọng và hiện đại, được trang bị đầy đủ nội thất và thiết bị điện tử. Nằm trong tòa nhà cao cấp, có bảo vệ 24/7, dịch vụ giặt là và giúp việc hàng ngày. Tòa nhà nằm ở vị trí trung tâm, thuận tiện cho việc đi lại và mua sắm.', 3, 3, 5, 1)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Hà Tây, Hà Nội', '180m2', '6500000', '2500', '8000', '6500000', 0, '3tang_3.jpg', '2022-08-20', N'Nhà có với 5 phòng ngủ và 3 phòng tắm, có thể cho thuê từng phòng hoặc cả nhà. Nội thất đầy đủ và hiện đại, có sân vườn và bãi đỗ xe rộng rãi.', 5, 3, 8, 2)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Ba Đình, Hà Nội', '150m2', '5500000', '2500', '9000', '5500000', 0, '3tang_4.jpg', '2022-08-23', N'Căn hộ đầy đủ tiện nghi, gồm phòng ngủ, phòng khách, phòng bếp và phòng tắm riêng. Điều hòa nhiệt độ, truyền hình cáp, Internet tốc độ cao và máy giặt đều có sẵn.', 4, 3, 6, 1)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Kim Mã, Hà Nội', '170m2', '6000000', '2500', '8500', '6000000', 0, '3tang_5.jpg', '2022-07-07', N'Căn hộ đầy đủ tiện nghi, gồm phòng ngủ, phòng khách, phòng bếp và phòng tắm riêng. Điều hòa nhiệt độ, truyền hình cáp, Internet tốc độ cao và máy giặt đều có sẵn.', 3, 3, 8, 2)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Phạm Văn Đồng, Hà Nội', '200m2', '5800000', '2500', '9000', '5800000', 0, '3tang_6.jpg', '2022-02-02', N'Phòng trọ đơn giản nhưng sạch sẽ và tiện nghi. Có giường, tủ quần áo, bàn làm việc và tủ lạnh. Nhà vệ sinh chung sạch sẽ và đảm bảo an toàn.', 5, 3, 10, 2)

insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Sơn Tây, Hà Nội', '300m2', '2500000', '2500', '10000', '2500000', 0, 'cap4_1.jpg', '2022-05-20', N'Nhà có 3 phòng ngủ và 2 phòng tắm, có thể cho thuê từng phòng hoặc cả nhà. Nội thất đầy đủ, bao gồm điều hòa nhiệt độ, tủ lạnh, bếp, tủ quần áo và bàn làm việc. Có chỗ đậu xe miễn phí.', 2, 1, 2, 1)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Hoài Đức, Hà Nội', '300m2', '2800000', '3000', '10000', '2800000', 0, 'cap4_2.jpg', '2022-04-28', N'Căn hộ dịch vụ cho thuê gồm 1 hoặc 2 phòng ngủ, phòng khách và nhà bếp. Căn hộ được trang bị đầy đủ nội thất và thiết bị gia dụng, bao gồm máy giặt, tủ lạnh, TV, điều hòa, nóng lạnh, lò vi sóng, bếp điện, tủ quần áo và giường ngủ. Nằm trong tòa nhà cao cấp, có bảo vệ 24/7, dịch vụ vệ sinh hàng ngày và các tiện ích khác như phòng tập thể dục, hồ bơi, khu vui chơi và BBQ.', 1, 1, 7, 4)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Đông Anh, Hà Nội', '280m2', '3500000', '2500', '8000', '3500000', 0, 'cap4_3.jpg', '2022-07-11', N'Phòng trọ cho thuê gồm 1 phòng ngủ và 1 nhà vệ sinh riêng. Phòng được trang bị đầy đủ nội thất như giường, tủ quần áo, bàn làm việc, điều hòa và nóng lạnh. Nằm trong khu vực yên tĩnh, an ninh, có chỗ để xe và wifi miễn phí. Gần các trường đại học, chợ và các tiện ích công cộng khác.
', 1, 1, 4, 2)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Sơn Tây, Hà Nội', '180m2', '2700000', '2500', '8000', '2700000', 0, 'cap4_4.jpg', '2022-05-17', N'Căn hộ dịch vụ cho thuê bao gồm 1 phòng ngủ, 1 phòng tắm, phòng khách và nhà bếp. Căn hộ được trang bị đầy đủ nội thất và tiện nghi như máy lạnh, tivi, tủ lạnh, máy giặt, bếp từ, lò vi sóng và các đồ dùng nhà bếp cơ bản. Nằm trong tòa nhà cao cấp, có bảo vệ 24/7, dịch vụ dọn phòng hàng ngày và tiện ích khác như phòng tập thể dục và hồ bơi.', 3, 1, 7, 4)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Sóc Sơn, Hà Nội', '210m2', '2000000', '2500', '10000', '2000000', 0, 'cap4_5.jpg', '2022-08-08', N'Phòng trọ cho thuê có diện tích khoảng 15m2, bao gồm phòng ngủ và nhà tắm riêng. Phòng được trang bị đầy đủ nội thất cơ bản như giường, tủ quần áo, bàn làm việc, máy lạnh và nóng lạnh. Nhà vệ sinh riêng, khu vực an ninh, yên tĩnh và gần các trung tâm mua sắm, trường học và các tiện ích khác.', 3, 1, 5, 4)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Hoài Đức, Hà Nội', '200m2', '2600000', '3000', '8000', '2600000', 0, 'cap4_6.jpg', '2023-01-20', N'Nhà cho thuê có diện tích lớn, bao gồm nhiều phòng ngủ và phòng tắm, phòng khách và nhà bếp. Nhà được xây dựng theo phong cách kiến trúc truyền thống, có sân vườn rộng rãi, nằm trong khu vực yên tĩnh, an ninh và gần các tiện ích như chợ, trường học và các cửa hàng.', 1, 1, 9, 3)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Gia Lâm, Hà Nội', '240m2', '2900000', '2800', '8000', '2900000', 0, 'cap4_7.jpg', '2023-02-02', N'Căn hộ studio cho thuê bao gồm phòng ngủ, phòng tắm và nhà bếp. Căn hộ được thiết kế theo phong cách hiện đại, trang bị đầy đủ nội thất và tiện nghi như máy lạnh, tivi, tủ lạnh, bếp từ và lò vi sóng. Nằm trong khu vực trung tâm, gần các trung tâm mua sắm và các tiện ích khác.', 4, 1, 7, 2)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Gia Lâm, Hà Nội', '150m2', '2700000', '3000', '9000', '2700000', 0, 'cap4_8.jpg', '2022-07-03', N'Phòng trọ cho thuê có diện tích khoảng 25m2, bao gồm phòng ngủ và nhà tắm riêng. Phòng được trang bị đầy đủ nội thất cơ bản như giường, tủ quần áo, bàn làm việc, máy lạnh và nóng lạnh. Khu vực an ninh, yên tĩnh và gần các tiện ích như chợ, trường học và các cửa hàng.', 2, 1, 2, 1)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Nhổn, Hà Nội', '150m2', '3500000', '2500', '9000', '3500000', 0, 'cap4_9.jpg', '2022-10-25', N'Nhà cho thuê có 3 phòng ngủ, 2 phòng tắm, phòng khách rộng, nhà bếp tiện nghi và sân sau rộng rãi. Nhà nằm trong khu vực yên tĩnh, gần trường học, cửa hàng và các tiện ích công cộng. Nhà được trang bị đầy đủ nội thất cơ bản như tủ lạnh, máy giặt, bếp ga, tủ quần áo, điều hòa và nóng lạnh.', 4, 1, 1, 4)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Hoài Đức, Hà Nội', '205m2', '4500000', '2500', '9000', '4500000', 0, 'cap4_10.jpg', '2022-12-20', N'Căn hộ cho thuê gồm 2 phòng ngủ, 1 phòng tắm, phòng khách và nhà bếp. Căn hộ được thiết kế hiện đại, nội thất mới và tiện nghi, có ban công và tầm nhìn đẹp. Nằm trong tòa nhà an ninh, có bảo vệ 24/7, chỗ đậu xe hơi miễn phí và tiện ích khác như phòng tập thể dục, hồ bơi và sân chơi trẻ em.', 5, 1, 4, 1)

insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Trần Duy Hưng, Hà Nội', '90m2', '8000000', '3000', '10000', '8000000', 0, 'cc_1.jpg', '2022-05-20', N'Phòng cho thuê có diện tích khoảng 20m2, bao gồm phòng ngủ, phòng tắm và nhà bếp. Phòng được trang bị đầy đủ nội thất như giường, tủ quần áo, bàn làm việc, điều hòa và nóng lạnh. Nhà vệ sinh riêng, có chỗ để xe, khu vực an ninh và yên tĩnh. Phòng trọ nằm gần các trường đại học và chợ, rất thuận tiện cho sinh viên và người đi làm.', 5, 4, 7, 4)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Phạm Hùng, Hà Nội', '80m2', '7500000', '3000', '10000', '7500000', 0, 'cc_2.jpg', '2022-06-06', N'Nhà riêng cho thuê bao gồm 4 phòng ngủ, 3 phòng tắm, phòng khách rộng và nhà bếp. Nhà được thiết kế theo phong cách hiện đại, có sân trước và sân sau rộng rãi. Nằm trong khu vực an ninh, gần các trung tâm mua sắm, cửa hàng và các tiện ích khác. Nhà được trang bị đầy đủ nội thất và thiết bị gia dụng cơ bản.', 4, 4, 8, 1)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Phạm Hùng, Hà Nội', '90m2', '10000000', '3000', '15000', '5000000', 0, 'cc_3.jpg', '2021-07-28', N'Căn hộ cho thuê gồm một phòng ngủ, một phòng tắm và một phòng khách/không gian sinh hoạt chung. Căn hộ được trang bị đầy đủ nội thất mới và tiện nghi, bao gồm giường, tủ quần áo, bàn làm việc, điều hòa và nóng lạnh. Nằm trong tòa nhà an ninh, có bảo vệ 24/7, chỗ đậu xe hơi miễn phí và tiện ích khác như phòng tập thể dục và hồ bơi.', 2, 4, 1, 2)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Hồ Tùng Mậu, Hà Nội', '70m2', '6500000', '3000', '15000', '6500000', 0, 'cc_4.jpg', '2022-09-28', N'Phòng cho thuê bao gồm một phòng ngủ và một phòng tắm. Phòng được trang bị đầy đủ nội thất cơ bản như giường, tủ quần áo, bàn làm việc và quạt. Nhà vệ sinh riêng, có khu vực để xe, khu vực an ninh và yên tĩnh. Phòng trọ nằm gần các tiện ích như cửa hàng, trường học và chợ.', 5, 4, 6, 1)

insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Phạm Hùng, Hà Nội', '50m2', '4000000', '3000', '10000', '4000000', 0, 'ccmn_1.jpg', '2021-08-29', N'Nhà có với 5 phòng ngủ và 3 phòng tắm, có thể cho thuê từng phòng hoặc cả nhà. Nội thất đầy đủ và hiện đại, có sân vườn và bãi đỗ xe rộng rãi.', 2, 5, 1, 2)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Phạm Hùng, Hà Nội', '60m2', '5000000', '3500', '10000', '5000000', 0, 'ccmn_2.jpg', '2021-02-26', N'Nhà có với 5 phòng ngủ và 3 phòng tắm, có thể cho thuê từng phòng hoặc cả nhà. Nội thất đầy đủ và hiện đại, có sân vườn và bãi đỗ xe rộng rãi.', 3, 5, 4, 1)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Kim Mã, Hà Nội', '45m2', '4000000', '3000', '10000', '4000000', 0, 'ccmn_3.jpg', '2022-09-03', N'Căn hộ studio đầy đủ tiện nghi, gồm phòng ngủ, phòng khách, phòng bếp và phòng tắm riêng. Điều hòa nhiệt độ, truyền hình cáp, Internet tốc độ cao và máy giặt đều có sẵn.', 4, 5, 10, 3)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Trần Duy Hưng, Hà Nội', '35m2', '5000000', '3500', '10000', '5000000', 0, 'ccmn_4.jpg', '2022-10-09', N'Căn hộ studio đầy đủ tiện nghi, gồm phòng ngủ, phòng khách, phòng bếp và phòng tắm riêng. Điều hòa nhiệt độ, truyền hình cáp, Internet tốc độ cao và máy giặt đều có sẵn.', 1, 5, 8, 1)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Cầu Giấy, Hà Nội', '35m2', '5000000', '3500', '10000', '5000000', 0, 'ccmn_5.jpg', '2022-10-09', N'Phòng trọ đơn giản nhưng sạch sẽ và tiện nghi. Có giường, tủ quần áo, bàn làm việc và tủ lạnh. Nhà vệ sinh chung sạch sẽ và đảm bảo an toàn.', 2, 5, 10, 4)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Cầu Giấy, Hà Nội', '85m2', '10000000', '3500', '8000', '10000000', 0, 'ccmn_6.jpg', '2023-01-10', N'Nhà 2 tầng với 3 phòng ngủ và 2 phòng tắm, có thể cho thuê từng phòng hoặc cả nhà. Nội thất đầy đủ, bao gồm điều hòa nhiệt độ, tủ lạnh, bếp, tủ quần áo và bàn làm việc. Có chỗ đậu xe miễn phí.', 4, 5, 8, 2)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Hoàng Mai, Hà Nội', '65m2', '7500000', '2500', '8000', '7500000', 0, 'ccmn_7.jpg', '2022-11-11', N'Căn hộ dịch vụ cho thuê gồm 1 hoặc 2 phòng ngủ, phòng khách và nhà bếp. Căn hộ được trang bị đầy đủ nội thất và thiết bị gia dụng, bao gồm máy giặt, tủ lạnh, TV, điều hòa, nóng lạnh, lò vi sóng, bếp điện, tủ quần áo và giường ngủ.', 5, 5, 5, 1)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Hoàng Mai, Hà Nội', '55m2', '6500000', '3000', '10000', '6500000', 0, 'ccmn_8.jpg', '2022-12-02', N'Căn hộ dịch vụ cho thuê gồm 1 hoặc 2 phòng ngủ, phòng khách và nhà bếp. Căn hộ được trang bị đầy đủ nội thất và thiết bị gia dụng, bao gồm máy giặt, tủ lạnh, TV, điều hòa, nóng lạnh, lò vi sóng, bếp điện, tủ quần áo và giường ngủ.', 3, 5, 4, 3)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Hai Bà Trưng, Hà Nội', '45m2', '4500000', '3500', '8000', '4500000', 0, 'ccmn_9.jpg', '2021-01-11', N'Nằm trong tòa nhà cao cấp, có bảo vệ 24/7, dịch vụ vệ sinh hàng ngày và các tiện ích khác như phòng tập thể dục, hồ bơi, khu vui chơi và BBQ.', 1, 5, 2, 2)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Tây Hồ, Hà Nội', '75m2', '7000000', '3500', '10000', '7000000', 0, 'ccmn_10.jpg', '2022-04-04', N'Nằm trong khu vực yên tĩnh, an ninh, có chỗ để xe và wifi miễn phí. Gần các trường đại học, chợ và các tiện ích công cộng khác.', 1, 5, 7, 3)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Hai Bà Trưng, Hà Nội', '85m2', '10000000', '3000', '8000', '10000000', 0, 'ccmn_11.jpg', '2022-10-10', N'Nằm trong khu vực yên tĩnh, an ninh, có chỗ để xe và wifi miễn phí. Gần các trường đại học, chợ và các tiện ích công cộng khác.', 3, 5, 9, 1)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Nam Từ Liêm, Hà Nội', '65m2', '5000000', '3500', '10000', '5000000', 0, 'ccmn_12.jpg', '2022-01-11', N'Căn hộ dịch vụ cho thuê bao gồm 1 phòng ngủ, 1 phòng tắm, phòng khách và nhà bếp. Căn hộ được trang bị đầy đủ nội thất và tiện nghi như máy lạnh, tivi, tủ lạnh, máy giặt, bếp từ, lò vi sóng và các đồ dùng nhà bếp cơ bản.', 5, 5, 4, 1)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Nam Từ Liêm, Hà Nội', '70m2', '9000000', '3000', '10000', '9000000', 0, 'ccmn_13.jpg', '2021-12-11', N'Nằm trong tòa nhà cao cấp, có bảo vệ 24/7, dịch vụ dọn phòng hàng ngày và tiện ích khác như phòng tập thể dục và hồ bơi.', 2, 5, 6, 4)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Bắc Từ Liêm, Hà Nội', '65m2', '5500000', '3500', '8000', '5500000', 0, 'ccmn_14.jpg', '2023-01-10', N'Phòng trọ cho thuê có diện tích khoảng 15m2, bao gồm phòng ngủ và nhà tắm riêng. Phòng được trang bị đầy đủ nội thất cơ bản như giường, tủ quần áo, bàn làm việc, máy lạnh và nóng lạnh. Nhà vệ sinh riêng, khu vực an ninh, yên tĩnh và gần các trung tâm mua sắm, trường học và các tiện ích khác.', 4, 5, 4, 1)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Hoàn Kiếm, Hà Nội', '75m2', '15000000', '3500', '10000', '10000000', 0, 'ccmn_15.jpg', '2020-07-09', N'Nhà cho thuê có diện tích lớn, bao gồm nhiều phòng ngủ và phòng tắm, phòng khách và nhà bếp. Nhà được xây dựng theo phong cách kiến trúc truyền thống, có sân vườn rộng rãi, nằm trong khu vực yên tĩnh, an ninh và gần các tiện ích như chợ, trường học và các cửa hàng.', 2, 5, 3, 3)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Hoàn Kiếm, Hà Nội', '55m2', '12000000', '3000', '9000', '12000000', 0, 'ccmn_16.jpg', '2023-01-10', N'Căn hộ studio cho thuê bao gồm phòng ngủ, phòng tắm và nhà bếp. Căn hộ được thiết kế theo phong cách hiện đại, trang bị đầy đủ nội thất và tiện nghi như máy lạnh, tivi, tủ lạnh, bếp từ và lò vi sóng. Nằm trong khu vực trung tâm, gần các trung tâm mua sắm và các tiện ích khác.', 5, 5, 5, 2)

insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Long Biên, Hà Nội', '20m2', '3000000', '3500', '8000', '3000000', 0, 'phongtro_1.jpg', '2020-11-10', N'Phòng trọ cho thuê có diện tích khoảng 25m2, bao gồm phòng ngủ và nhà tắm riêng. Phòng được trang bị đầy đủ nội thất cơ bản như giường, tủ quần áo, bàn làm việc, máy lạnh và nóng lạnh. Khu vực an ninh, yên tĩnh và gần các tiện ích như chợ, trường học và các cửa hàng.', 2, 6, 6, 1)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Phạm Văn Đồng, Hà Nội', '25m2', '3500000', '4000', '10000', '3500000', 0, 'phongtro_2.jpg', '2023-02-10', N'Nhà nằm trong khu vực yên tĩnh, gần trường học, cửa hàng và các tiện ích công cộng. Nhà được trang bị đầy đủ nội thất cơ bản như tủ lạnh, máy giặt, bếp ga, tủ quần áo, điều hòa và nóng lạnh.', 1, 6, 1, 4)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Phạm Hùng, Hà Nội', '15m2', '2500000', '4000', '15000', '2500000', 0, 'phongtro_3.jpg', '2022-02-24', N'Nằm trong tòa nhà an ninh, có bảo vệ 24/7, chỗ đậu xe hơi miễn phí và tiện ích khác như phòng tập thể dục, hồ bơi và sân chơi trẻ em.', 2, 6, 2, 2)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Tây Mỗ, Hà Nội', '35m2', '4500000', '4000', '10000', '4000000', 0, 'phongtro_4.jpg', '2022-02-17', N'Nằm trong khu vực an ninh, gần các trung tâm mua sắm, cửa hàng và các tiện ích khác. Nhà được trang bị đầy đủ nội thất và thiết bị gia dụng cơ bản.', 5, 6, 3, 2)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Kim Mã, Hà Nội', '18m2', '2500000', '3500', '11000', '2500000', 0, 'phongtro_5.jpg', '2022-12-10', N'Căn hộ cho thuê gồm 2 phòng ngủ, 1 phòng tắm, phòng khách và nhà bếp. Căn hộ được thiết kế hiện đại, nội thất mới và tiện nghi, có ban công và tầm nhìn đẹp.', 1, 6, 1, 4)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Huỳnh Thúc Kháng, Hà Nội', '28m2', '2800000', '3000', '10000', '2800000', 0, 'phongtro_6.jpg', '2023-02-10', N'Phòng trọ cho thuê có diện tích khoảng 20m2, bao gồm phòng ngủ, phòng tắm và nhà bếp. Phòng được trang bị đầy đủ nội thất như giường, tủ quần áo, bàn làm việc, điều hòa và nóng lạnh.', 5, 6, 2, 2)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Tây Hồ, Hà Nội', '30m2', '3000000', '3300', '9000', '3000000', 0, 'phongtro_7.jpg', '2022-03-15', N'Nhà vệ sinh riêng, có chỗ để xe, khu vực an ninh và yên tĩnh. Phòng trọ nằm gần các trường đại học và chợ, rất thuận tiện cho sinh viên và người đi làm.
', 2, 6, 3, 4)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Gia Lâm, Hà Nội', '22m2', '3000000', '4000', '10000', '3000000', 0, 'phongtro_8.jpg', '2021-12-28', N'Nhà riêng cho thuê bao gồm 4 phòng ngủ, 3 phòng tắm, phòng khách rộng và nhà bếp. Nhà được thiết kế theo phong cách hiện đại, có sân trước và sân sau rộng rãi.', 3, 6, 5, 2)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Gia Lâm, Hà Nội', '23m2', '2300000', '4500', '15000', '2000000', 0, 'phongtro_9.jpg', '2022-01-11', N'Nằm trong khu vực an ninh, gần các trung tâm mua sắm, cửa hàng và các tiện ích khác. Nhà được trang bị đầy đủ nội thất và thiết bị gia dụng cơ bản.', 3, 6, 2, 2)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Phạm Văn Đồng, Hà Nội', '25m2', '3500000', '4000', '10000', '3500000', 0, 'phongtro_10.jpg', '2023-02-10', N'Nằm trong khu vực an ninh, gần các trung tâm mua sắm, cửa hàng và các tiện ích khác. Nhà được trang bị đầy đủ nội thất và thiết bị gia dụng cơ bản.', 1, 6, 1, 4)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Huỳnh Thúc Kháng, Hà Nội', '15m2', '2500000', '3000', '10000', '2500000', 0, 'phongtro_11.jpg', '2022-05-01', N'Căn hộ được trang bị đầy đủ nội thất mới và tiện nghi, bao gồm giường, tủ quần áo, bàn làm việc, điều hòa và nóng lạnh. Nằm trong tòa nhà an ninh, có bảo vệ 24/7, chỗ đậu xe hơi miễn phí và tiện ích khác như phòng tập thể dục và hồ bơi.', 3, 6, 5, 3)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Láng Thượng, Hà Nội', '25m2', '3100000', '4500', '9000', '3100000', 0, 'phongtro_12.jpg', '2022-06-16', N'Căn hộ studio cho thuê có diện tích khoảng 30m2, gồm một phòng ngủ, một phòng tắm và một phòng khách/không gian sinh hoạt chung. ', 4, 6, 7, 2)
insert into ThongTinNha(DiaChiNha, DienTich, GiaPhong, TienDien, TienNuoc, TienDatCoc, TinhTrangThue, AnhMinhHoa, NgayDangTai, MoTaNha, MaDTSD, MaLoai, MaChuNha, MaMDSD) values (N'Chùa Láng, Hà Nội', '25m2', '3500000', '4000', '15000', '3500000', 0, 'phongtro_13.jpg', '2022-04-15', N'Căn hộ dịch vụ cho thuê có diện tích khoảng 40m2, bao gồm 1 phòng ngủ, 1 phòng tắm, phòng khách và nhà bếp. Căn hộ được thiết kế sang trọng và hiện đại, được trang bị đầy đủ nội thất và thiết bị điện tử.', 3, 6, 8, 3)

--table TaiSan
create table TaiSan(
	MaTaiSan int identity not null,
	TenTaiSan nvarchar(MAX) not null,
	primary key(MaTaiSan),
)

--insert TaiSan
insert into TaiSan(TenTaiSan) values (N'Tủ lạnh')
insert into TaiSan(TenTaiSan) values (N'Bàn ghế')
insert into TaiSan(TenTaiSan) values (N'Điều hòa nhiệt độ')
insert into TaiSan(TenTaiSan) values (N'Bình nóng lạnh')
insert into TaiSan(TenTaiSan) values (N'Quạt cây')
insert into TaiSan(TenTaiSan) values (N'Bóng đèn')
insert into TaiSan(TenTaiSan) values (N'Giường')

--table HopDongNha
create table HopDongNha(
	MaHopDong int identity not null,
	ThoiGianBatDau date not null,
	ThoiGianKetThuc date not null,
	MaNha int not null,
	MaNguoiDung int not null,
	is_deleted int not null,
	primary key(MaHopDong),
	constraint FK_MaNha foreign key(MaNha) references ThongTinNha(MaNha),
	constraint FK_MaNguoiDung foreign key(MaNguoiDung) references NguoiDung(MaNguoiDung),
)

--table Nha_DichVu
create table Nha_DichVu (
	MaNha int not null,
	MaDichVu int not null,
	GhiChu nvarchar(MAX),
	constraint FK_NDV_MaNha foreign key(MaNha) references ThongTinNha(MaNha),
	constraint FK_NDV_MaDichVu foreign key(MaDichVu) references DichVu(MaDichVu),
	CONSTRAINT [PK_Nha_DichVu] PRIMARY KEY CLUSTERED 
(
	MaNha ASC,
	MaDichVu ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

--insert Nha_DichVu
insert into Nha_DichVu values (1, 1, null)
insert into Nha_DichVu values (1, 2, null)
insert into Nha_DichVu values (1, 4, null)
insert into Nha_DichVu values (1, 6, null)

insert into Nha_DichVu values (2, 1, null)
insert into Nha_DichVu values (2, 3, null)
insert into Nha_DichVu values (2, 2, null)
insert into Nha_DichVu values (2, 4, null)
insert into Nha_DichVu values (2, 6, null)

insert into Nha_DichVu values (3, 1, null)
insert into Nha_DichVu values (3, 2, null)
insert into Nha_DichVu values (3, 4, null)
insert into Nha_DichVu values (3, 6, null)

insert into Nha_DichVu values (4, 1, null)
insert into Nha_DichVu values (4, 3, null)
insert into Nha_DichVu values (4, 2, null)
insert into Nha_DichVu values (4, 5, null)
insert into Nha_DichVu values (4, 6, null)

insert into Nha_DichVu values (5, 1, null)
insert into Nha_DichVu values (5, 4, null)
insert into Nha_DichVu values (5, 6, null)

insert into Nha_DichVu values (6, 1, null)
insert into Nha_DichVu values (6, 3, null)
insert into Nha_DichVu values (6, 4, null)
insert into Nha_DichVu values (6, 6, null)

insert into Nha_DichVu values (7, 1, null)
insert into Nha_DichVu values (7, 2, null)
insert into Nha_DichVu values (7, 4, null)
insert into Nha_DichVu values (7, 6, null)

insert into Nha_DichVu values (8, 1, null)
insert into Nha_DichVu values (8, 3, null)
insert into Nha_DichVu values (8, 4, null)
insert into Nha_DichVu values (8, 5, null)
insert into Nha_DichVu values (8, 6, null)

insert into Nha_DichVu values (9, 1, null)
insert into Nha_DichVu values (9, 2, null)
insert into Nha_DichVu values (9, 4, null)
insert into Nha_DichVu values (9, 6, null)

insert into Nha_DichVu values (10, 1, null)
insert into Nha_DichVu values (10, 3, null)
insert into Nha_DichVu values (10, 2, null)
insert into Nha_DichVu values (10, 4, null)
insert into Nha_DichVu values (10, 6, null)

insert into Nha_DichVu values (11, 1, null)
insert into Nha_DichVu values (11, 2, null)
insert into Nha_DichVu values (11, 4, null)
insert into Nha_DichVu values (11, 6, null)

insert into Nha_DichVu values (12, 1, null)
insert into Nha_DichVu values (12, 3, null)
insert into Nha_DichVu values (12, 2, null)
insert into Nha_DichVu values (12, 5, null)
insert into Nha_DichVu values (12, 6, null)

insert into Nha_DichVu values (13, 1, null)
insert into Nha_DichVu values (13, 4, null)
insert into Nha_DichVu values (13, 6, null)

insert into Nha_DichVu values (14, 1, null)
insert into Nha_DichVu values (14, 3, null)
insert into Nha_DichVu values (14, 4, null)
insert into Nha_DichVu values (14, 6, null)

insert into Nha_DichVu values (15, 1, null)
insert into Nha_DichVu values (15, 2, null)
insert into Nha_DichVu values (15, 4, null)
insert into Nha_DichVu values (15, 6, null)

insert into Nha_DichVu values (16, 1, null)
insert into Nha_DichVu values (16, 3, null)
insert into Nha_DichVu values (16, 4, null)
insert into Nha_DichVu values (16, 5, null)
insert into Nha_DichVu values (16, 6, null)

insert into Nha_DichVu values (17, 1, null)
insert into Nha_DichVu values (17, 2, null)
insert into Nha_DichVu values (17, 4, null)
insert into Nha_DichVu values (17, 6, null)

insert into Nha_DichVu values (18, 1, null)
insert into Nha_DichVu values (18, 3, null)
insert into Nha_DichVu values (18, 2, null)
insert into Nha_DichVu values (18, 4, null)
insert into Nha_DichVu values (18, 6, null)

insert into Nha_DichVu values (19, 1, null)
insert into Nha_DichVu values (19, 2, null)
insert into Nha_DichVu values (19, 4, null)
insert into Nha_DichVu values (19, 6, null)

insert into Nha_DichVu values (20, 1, null)
insert into Nha_DichVu values (20, 3, null)
insert into Nha_DichVu values (20, 2, null)
insert into Nha_DichVu values (20, 5, null)
insert into Nha_DichVu values (20, 6, null)

insert into Nha_DichVu values (21, 1, null)
insert into Nha_DichVu values (21, 4, null)
insert into Nha_DichVu values (21, 6, null)

insert into Nha_DichVu values (22, 1, null)
insert into Nha_DichVu values (22, 3, null)
insert into Nha_DichVu values (22, 4, null)
insert into Nha_DichVu values (22, 6, null)

insert into Nha_DichVu values (23, 1, null)
insert into Nha_DichVu values (23, 2, null)
insert into Nha_DichVu values (23, 4, null)
insert into Nha_DichVu values (23, 6, null)

insert into Nha_DichVu values (24, 1, null)
insert into Nha_DichVu values (24, 3, null)
insert into Nha_DichVu values (24, 4, null)
insert into Nha_DichVu values (24, 5, null)
insert into Nha_DichVu values (24, 6, null)

insert into Nha_DichVu values (25, 1, null)
insert into Nha_DichVu values (25, 2, null)
insert into Nha_DichVu values (25, 4, null)
insert into Nha_DichVu values (25, 6, null)

insert into Nha_DichVu values (26, 1, null)
insert into Nha_DichVu values (26, 3, null)
insert into Nha_DichVu values (26, 2, null)
insert into Nha_DichVu values (26, 4, null)
insert into Nha_DichVu values (26, 6, null)

insert into Nha_DichVu values (27, 1, null)
insert into Nha_DichVu values (27, 2, null)
insert into Nha_DichVu values (27, 4, null)
insert into Nha_DichVu values (27, 6, null)

insert into Nha_DichVu values (28, 1, null)
insert into Nha_DichVu values (28, 3, null)
insert into Nha_DichVu values (28, 2, null)
insert into Nha_DichVu values (28, 5, null)
insert into Nha_DichVu values (28, 6, null)

insert into Nha_DichVu values (29, 1, null)
insert into Nha_DichVu values (29, 4, null)
insert into Nha_DichVu values (29, 6, null)

insert into Nha_DichVu values (30, 1, null)
insert into Nha_DichVu values (30, 3, null)
insert into Nha_DichVu values (30, 4, null)
insert into Nha_DichVu values (30, 6, null)

insert into Nha_DichVu values (31, 1, null)
insert into Nha_DichVu values (31, 2, null)
insert into Nha_DichVu values (31, 4, null)
insert into Nha_DichVu values (31, 6, null)

insert into Nha_DichVu values (32, 1, null)
insert into Nha_DichVu values (32, 3, null)
insert into Nha_DichVu values (32, 4, null)
insert into Nha_DichVu values (32, 5, null)
insert into Nha_DichVu values (32, 6, null)

insert into Nha_DichVu values (33, 1, null)
insert into Nha_DichVu values (33, 2, null)
insert into Nha_DichVu values (33, 4, null)
insert into Nha_DichVu values (33, 6, null)

insert into Nha_DichVu values (34, 1, null)
insert into Nha_DichVu values (34, 3, null)
insert into Nha_DichVu values (34, 2, null)
insert into Nha_DichVu values (34, 5, null)
insert into Nha_DichVu values (34, 6, null)

insert into Nha_DichVu values (35, 1, null)
insert into Nha_DichVu values (35, 4, null)
insert into Nha_DichVu values (35, 6, null)

insert into Nha_DichVu values (36, 1, null)
insert into Nha_DichVu values (36, 3, null)
insert into Nha_DichVu values (36, 4, null)
insert into Nha_DichVu values (36, 6, null)

insert into Nha_DichVu values (37, 1, null)
insert into Nha_DichVu values (37, 2, null)
insert into Nha_DichVu values (37, 4, null)
insert into Nha_DichVu values (37, 6, null)

insert into Nha_DichVu values (38, 1, null)
insert into Nha_DichVu values (38, 3, null)
insert into Nha_DichVu values (38, 4, null)
insert into Nha_DichVu values (38, 5, null)
insert into Nha_DichVu values (38, 6, null)

insert into Nha_DichVu values (39, 1, null)
insert into Nha_DichVu values (39, 2, null)
insert into Nha_DichVu values (39, 4, null)
insert into Nha_DichVu values (39, 6, null)

insert into Nha_DichVu values (40, 1, null)
insert into Nha_DichVu values (40, 3, null)
insert into Nha_DichVu values (40, 2, null)
insert into Nha_DichVu values (40, 4, null)
insert into Nha_DichVu values (40, 6, null)

insert into Nha_DichVu values (41, 1, null)
insert into Nha_DichVu values (41, 2, null)
insert into Nha_DichVu values (41, 4, null)
insert into Nha_DichVu values (41, 6, null)

insert into Nha_DichVu values (42, 1, null)
insert into Nha_DichVu values (42, 3, null)
insert into Nha_DichVu values (42, 2, null)
insert into Nha_DichVu values (42, 5, null)
insert into Nha_DichVu values (42, 6, null)

insert into Nha_DichVu values (43, 1, null)
insert into Nha_DichVu values (43, 4, null)
insert into Nha_DichVu values (43, 6, null)

insert into Nha_DichVu values (44, 1, null)
insert into Nha_DichVu values (44, 3, null)
insert into Nha_DichVu values (44, 4, null)
insert into Nha_DichVu values (44, 6, null)

insert into Nha_DichVu values (45, 1, null)
insert into Nha_DichVu values (45, 2, null)
insert into Nha_DichVu values (45, 4, null)
insert into Nha_DichVu values (45, 6, null)

insert into Nha_DichVu values (46, 1, null)
insert into Nha_DichVu values (46, 3, null)
insert into Nha_DichVu values (46, 4, null)
insert into Nha_DichVu values (46, 5, null)
insert into Nha_DichVu values (46, 6, null)

insert into Nha_DichVu values (47, 1, null)
insert into Nha_DichVu values (47, 2, null)
insert into Nha_DichVu values (47, 4, null)
insert into Nha_DichVu values (47, 6, null)

insert into Nha_DichVu values (48, 1, null)
insert into Nha_DichVu values (48, 3, null)
insert into Nha_DichVu values (48, 2, null)
insert into Nha_DichVu values (48, 4, null)
insert into Nha_DichVu values (48, 6, null)

insert into Nha_DichVu values (49, 1, null)
insert into Nha_DichVu values (49, 2, null)
insert into Nha_DichVu values (49, 4, null)
insert into Nha_DichVu values (49, 6, null)

insert into Nha_DichVu values (50, 1, null)
insert into Nha_DichVu values (50, 3, null)
insert into Nha_DichVu values (50, 2, null)
insert into Nha_DichVu values (50, 5, null)
insert into Nha_DichVu values (50, 6, null)

insert into Nha_DichVu values (51, 1, null)
insert into Nha_DichVu values (51, 4, null)
insert into Nha_DichVu values (51, 6, null)

insert into Nha_DichVu values (52, 1, null)
insert into Nha_DichVu values (52, 3, null)
insert into Nha_DichVu values (52, 4, null)
insert into Nha_DichVu values (52, 6, null)

insert into Nha_DichVu values (53, 1, null)
insert into Nha_DichVu values (53, 2, null)
insert into Nha_DichVu values (53, 4, null)
insert into Nha_DichVu values (53, 6, null)

insert into Nha_DichVu values (54, 1, null)
insert into Nha_DichVu values (54, 3, null)
insert into Nha_DichVu values (54, 4, null)
insert into Nha_DichVu values (54, 5, null)
insert into Nha_DichVu values (54, 6, null)

--table Nha_TaiSan
create table Nha_TaiSan (
	MaNha int not null,
	MaTaiSan int not null,
	SoLuong int not null,
	GiaTri money not null,
	constraint FK_NTS_MaNha foreign key(MaNha) references ThongTinNha(MaNha),
	constraint FK_NTS_MaTaiSan foreign key(MaTaiSan) references TaiSan(MaTaiSan),
	CONSTRAINT [PK_Nha_TaiSan] PRIMARY KEY CLUSTERED 
(
	MaNha ASC,
	MaTaiSan ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

insert into Nha_TaiSan values (1, 1, 1, 2000000)
insert into Nha_TaiSan values (1, 3, 1, 2000000)
insert into Nha_TaiSan values (1, 6, 2, 200000)
insert into Nha_TaiSan values (1, 5, 1, 100000)
insert into Nha_TaiSan values (1, 7, 1, 600000)

insert into Nha_TaiSan values (2, 1, 1, 2000000)
insert into Nha_TaiSan values (2, 2, 1, 500000)
insert into Nha_TaiSan values (2, 3, 1, 2000000)
insert into Nha_TaiSan values (2, 6, 2, 200000)
insert into Nha_TaiSan values (2, 5, 1, 100000)
insert into Nha_TaiSan values (2, 7, 1, 600000)

insert into Nha_TaiSan values (3, 1, 1, 2000000)
insert into Nha_TaiSan values (3, 3, 1, 2000000)
insert into Nha_TaiSan values (3, 6, 2, 200000)
insert into Nha_TaiSan values (3, 5, 1, 100000)
insert into Nha_TaiSan values (3, 7, 1, 600000)

insert into Nha_TaiSan values (4, 1, 1, 2000000)
insert into Nha_TaiSan values (4, 2, 1, 500000)
insert into Nha_TaiSan values (4, 3, 1, 2000000)
insert into Nha_TaiSan values (4, 6, 2, 200000)
insert into Nha_TaiSan values (4, 4, 2, 2000000)
insert into Nha_TaiSan values (4, 5, 1, 100000)
insert into Nha_TaiSan values (4, 7, 1, 600000)

insert into Nha_TaiSan values (5, 1, 1, 2000000)
insert into Nha_TaiSan values (5, 3, 1, 2000000)
insert into Nha_TaiSan values (5, 6, 2, 200000)
insert into Nha_TaiSan values (5, 5, 1, 100000)
insert into Nha_TaiSan values (5, 7, 1, 600000)

insert into Nha_TaiSan values (6, 1, 1, 2000000)
insert into Nha_TaiSan values (6, 2, 1, 500000)
insert into Nha_TaiSan values (6, 3, 1, 2000000)
insert into Nha_TaiSan values (6, 6, 2, 200000)
insert into Nha_TaiSan values (6, 5, 1, 100000)
insert into Nha_TaiSan values (6, 7, 1, 600000)

insert into Nha_TaiSan values (7, 1, 1, 2000000)
insert into Nha_TaiSan values (7, 3, 1, 2000000)
insert into Nha_TaiSan values (7, 6, 2, 200000)
insert into Nha_TaiSan values (7, 5, 1, 100000)
insert into Nha_TaiSan values (7, 7, 1, 600000)

insert into Nha_TaiSan values (8, 1, 1, 2000000)
insert into Nha_TaiSan values (8, 2, 1, 500000)
insert into Nha_TaiSan values (8, 3, 1, 2000000)
insert into Nha_TaiSan values (8, 6, 2, 200000)
insert into Nha_TaiSan values (8, 4, 2, 2000000)
insert into Nha_TaiSan values (8, 5, 1, 100000)
insert into Nha_TaiSan values (8, 7, 1, 600000)

insert into Nha_TaiSan values (9, 1, 1, 2000000)
insert into Nha_TaiSan values (9, 3, 1, 2000000)
insert into Nha_TaiSan values (9, 6, 2, 200000)
insert into Nha_TaiSan values (9, 5, 1, 100000)
insert into Nha_TaiSan values (9, 7, 1, 600000)

insert into Nha_TaiSan values (10, 1, 1, 2000000)
insert into Nha_TaiSan values (10, 2, 1, 500000)
insert into Nha_TaiSan values (10, 3, 1, 2000000)
insert into Nha_TaiSan values (10, 6, 2, 200000)
insert into Nha_TaiSan values (10, 5, 1, 100000)
insert into Nha_TaiSan values (10, 7, 1, 600000)

insert into Nha_TaiSan values (11, 1, 1, 2000000)
insert into Nha_TaiSan values (11, 3, 1, 2000000)
insert into Nha_TaiSan values (11, 6, 2, 200000)
insert into Nha_TaiSan values (11, 5, 1, 100000)
insert into Nha_TaiSan values (11, 7, 1, 600000)

insert into Nha_TaiSan values (12, 1, 1, 2000000)
insert into Nha_TaiSan values (12, 2, 1, 500000)
insert into Nha_TaiSan values (12, 3, 1, 2000000)
insert into Nha_TaiSan values (12, 6, 2, 200000)
insert into Nha_TaiSan values (12, 4, 2, 2000000)
insert into Nha_TaiSan values (12, 5, 1, 100000)
insert into Nha_TaiSan values (12, 7, 1, 600000)

insert into Nha_TaiSan values (13, 1, 1, 2000000)
insert into Nha_TaiSan values (13, 3, 1, 2000000)
insert into Nha_TaiSan values (13, 6, 2, 200000)
insert into Nha_TaiSan values (13, 5, 1, 100000)
insert into Nha_TaiSan values (13, 7, 1, 600000)

insert into Nha_TaiSan values (14, 1, 1, 2000000)
insert into Nha_TaiSan values (14, 2, 1, 500000)
insert into Nha_TaiSan values (14, 3, 1, 2000000)
insert into Nha_TaiSan values (14, 6, 2, 200000)
insert into Nha_TaiSan values (14, 5, 1, 100000)
insert into Nha_TaiSan values (14, 7, 1, 600000)

insert into Nha_TaiSan values (15, 1, 1, 2000000)
insert into Nha_TaiSan values (15, 3, 1, 2000000)
insert into Nha_TaiSan values (15, 6, 2, 200000)
insert into Nha_TaiSan values (15, 5, 1, 100000)
insert into Nha_TaiSan values (15, 7, 1, 600000)

insert into Nha_TaiSan values (16, 1, 1, 2000000)
insert into Nha_TaiSan values (16, 2, 1, 500000)
insert into Nha_TaiSan values (16, 3, 1, 2000000)
insert into Nha_TaiSan values (16, 6, 2, 200000)
insert into Nha_TaiSan values (16, 5, 1, 100000)
insert into Nha_TaiSan values (16, 7, 1, 600000)

insert into Nha_TaiSan values (17, 1, 1, 2000000)
insert into Nha_TaiSan values (17, 3, 1, 2000000)
insert into Nha_TaiSan values (17, 6, 2, 200000)
insert into Nha_TaiSan values (17, 5, 1, 100000)
insert into Nha_TaiSan values (17, 7, 1, 600000)

insert into Nha_TaiSan values (18, 1, 1, 2000000)
insert into Nha_TaiSan values (18, 2, 1, 500000)
insert into Nha_TaiSan values (18, 3, 1, 2000000)
insert into Nha_TaiSan values (18, 6, 2, 200000)
insert into Nha_TaiSan values (18, 4, 2, 2000000)
insert into Nha_TaiSan values (18, 5, 1, 100000)
insert into Nha_TaiSan values (18, 7, 1, 600000)

insert into Nha_TaiSan values (19, 1, 1, 2000000)
insert into Nha_TaiSan values (19, 3, 1, 2000000)
insert into Nha_TaiSan values (19, 6, 2, 200000)
insert into Nha_TaiSan values (19, 5, 1, 100000)
insert into Nha_TaiSan values (19, 7, 1, 600000)

insert into Nha_TaiSan values (20, 1, 1, 2000000)
insert into Nha_TaiSan values (20, 2, 1, 500000)
insert into Nha_TaiSan values (20, 3, 1, 2000000)
insert into Nha_TaiSan values (20, 6, 2, 200000)
insert into Nha_TaiSan values (20, 5, 1, 100000)
insert into Nha_TaiSan values (20, 7, 1, 600000)

insert into Nha_TaiSan values (21, 1, 1, 2000000)
insert into Nha_TaiSan values (21, 3, 1, 2000000)
insert into Nha_TaiSan values (21, 6, 2, 200000)
insert into Nha_TaiSan values (21, 5, 1, 100000)
insert into Nha_TaiSan values (21, 7, 1, 600000)

insert into Nha_TaiSan values (22, 1, 1, 2000000)
insert into Nha_TaiSan values (22, 2, 1, 500000)
insert into Nha_TaiSan values (22, 3, 1, 2000000)
insert into Nha_TaiSan values (22, 6, 2, 200000)
insert into Nha_TaiSan values (22, 4, 2, 2000000)
insert into Nha_TaiSan values (22, 5, 1, 100000)
insert into Nha_TaiSan values (22, 7, 1, 600000)

insert into Nha_TaiSan values (23, 1, 1, 2000000)
insert into Nha_TaiSan values (23, 3, 1, 2000000)
insert into Nha_TaiSan values (23, 6, 2, 200000)
insert into Nha_TaiSan values (23, 5, 1, 100000)
insert into Nha_TaiSan values (23, 7, 1, 600000)

insert into Nha_TaiSan values (24, 1, 1, 2000000)
insert into Nha_TaiSan values (24, 2, 1, 500000)
insert into Nha_TaiSan values (24, 3, 1, 2000000)
insert into Nha_TaiSan values (24, 6, 2, 200000)
insert into Nha_TaiSan values (24, 5, 1, 100000)
insert into Nha_TaiSan values (24, 7, 1, 600000)

insert into Nha_TaiSan values (25, 1, 1, 2000000)
insert into Nha_TaiSan values (25, 3, 1, 2000000)
insert into Nha_TaiSan values (25, 6, 2, 200000)
insert into Nha_TaiSan values (25, 5, 1, 100000)
insert into Nha_TaiSan values (25, 7, 1, 600000)

insert into Nha_TaiSan values (26, 1, 1, 2000000)
insert into Nha_TaiSan values (26, 2, 1, 500000)
insert into Nha_TaiSan values (26, 3, 1, 2000000)
insert into Nha_TaiSan values (26, 6, 2, 200000)
insert into Nha_TaiSan values (26, 4, 2, 2000000)
insert into Nha_TaiSan values (26, 5, 1, 100000)
insert into Nha_TaiSan values (26, 7, 1, 600000)

insert into Nha_TaiSan values (27, 1, 1, 2000000)
insert into Nha_TaiSan values (27, 3, 1, 2000000)
insert into Nha_TaiSan values (27, 6, 2, 200000)
insert into Nha_TaiSan values (27, 5, 1, 100000)
insert into Nha_TaiSan values (27, 7, 1, 600000)

insert into Nha_TaiSan values (28, 1, 1, 2000000)
insert into Nha_TaiSan values (28, 2, 1, 500000)
insert into Nha_TaiSan values (28, 3, 1, 2000000)
insert into Nha_TaiSan values (28, 6, 2, 200000)
insert into Nha_TaiSan values (28, 5, 1, 100000)
insert into Nha_TaiSan values (28, 7, 1, 600000)

insert into Nha_TaiSan values (29, 1, 1, 2000000)
insert into Nha_TaiSan values (29, 3, 1, 2000000)
insert into Nha_TaiSan values (29, 6, 2, 200000)
insert into Nha_TaiSan values (29, 5, 1, 100000)
insert into Nha_TaiSan values (29, 7, 1, 600000)

insert into Nha_TaiSan values (30, 1, 1, 2000000)
insert into Nha_TaiSan values (30, 2, 1, 500000)
insert into Nha_TaiSan values (30, 3, 1, 2000000)
insert into Nha_TaiSan values (30, 6, 2, 200000)
insert into Nha_TaiSan values (30, 4, 2, 2000000)
insert into Nha_TaiSan values (30, 5, 1, 100000)
insert into Nha_TaiSan values (30, 7, 1, 600000)

insert into Nha_TaiSan values (31, 1, 1, 2000000)
insert into Nha_TaiSan values (31, 3, 1, 2000000)
insert into Nha_TaiSan values (31, 6, 2, 200000)
insert into Nha_TaiSan values (31, 5, 1, 100000)
insert into Nha_TaiSan values (31, 7, 1, 600000)

insert into Nha_TaiSan values (32, 1, 1, 2000000)
insert into Nha_TaiSan values (32, 2, 1, 500000)
insert into Nha_TaiSan values (32, 3, 1, 2000000)
insert into Nha_TaiSan values (32, 6, 2, 200000)
insert into Nha_TaiSan values (32, 5, 1, 100000)
insert into Nha_TaiSan values (32, 7, 1, 600000)

insert into Nha_TaiSan values (33, 1, 1, 2000000)
insert into Nha_TaiSan values (33, 3, 1, 2000000)
insert into Nha_TaiSan values (33, 6, 2, 200000)
insert into Nha_TaiSan values (33, 5, 1, 100000)
insert into Nha_TaiSan values (33, 7, 1, 600000)

insert into Nha_TaiSan values (34, 1, 1, 2000000)
insert into Nha_TaiSan values (34, 2, 1, 500000)
insert into Nha_TaiSan values (34, 3, 1, 2000000)
insert into Nha_TaiSan values (34, 6, 2, 200000)
insert into Nha_TaiSan values (34, 4, 2, 2000000)
insert into Nha_TaiSan values (34, 5, 1, 100000)
insert into Nha_TaiSan values (34, 7, 1, 600000)

insert into Nha_TaiSan values (35, 1, 1, 2000000)
insert into Nha_TaiSan values (35, 3, 1, 2000000)
insert into Nha_TaiSan values (35, 6, 2, 200000)
insert into Nha_TaiSan values (35, 5, 1, 100000)
insert into Nha_TaiSan values (35, 7, 1, 600000)

insert into Nha_TaiSan values (36, 1, 1, 2000000)
insert into Nha_TaiSan values (36, 2, 1, 500000)
insert into Nha_TaiSan values (36, 3, 1, 2000000)
insert into Nha_TaiSan values (36, 6, 2, 200000)
insert into Nha_TaiSan values (36, 5, 1, 100000)
insert into Nha_TaiSan values (36, 7, 1, 600000)

insert into Nha_TaiSan values (37, 1, 1, 2000000)
insert into Nha_TaiSan values (37, 3, 1, 2000000)
insert into Nha_TaiSan values (37, 6, 2, 200000)
insert into Nha_TaiSan values (37, 5, 1, 100000)
insert into Nha_TaiSan values (37, 7, 1, 600000)

insert into Nha_TaiSan values (38, 1, 1, 2000000)
insert into Nha_TaiSan values (38, 2, 1, 500000)
insert into Nha_TaiSan values (38, 3, 1, 2000000)
insert into Nha_TaiSan values (38, 6, 2, 200000)
insert into Nha_TaiSan values (38, 4, 2, 2000000)
insert into Nha_TaiSan values (38, 5, 1, 100000)
insert into Nha_TaiSan values (38, 7, 1, 600000)

insert into Nha_TaiSan values (39, 1, 1, 2000000)
insert into Nha_TaiSan values (39, 3, 1, 2000000)
insert into Nha_TaiSan values (39, 6, 2, 200000)
insert into Nha_TaiSan values (39, 5, 1, 100000)
insert into Nha_TaiSan values (39, 7, 1, 600000)

insert into Nha_TaiSan values (40, 1, 1, 2000000)
insert into Nha_TaiSan values (40, 2, 1, 500000)
insert into Nha_TaiSan values (40, 3, 1, 2000000)
insert into Nha_TaiSan values (40, 6, 2, 200000)
insert into Nha_TaiSan values (40, 5, 1, 100000)
insert into Nha_TaiSan values (40, 7, 1, 600000)

insert into Nha_TaiSan values (41, 1, 1, 2000000)
insert into Nha_TaiSan values (41, 3, 1, 2000000)
insert into Nha_TaiSan values (41, 6, 2, 200000)
insert into Nha_TaiSan values (41, 5, 1, 100000)
insert into Nha_TaiSan values (41, 7, 1, 600000)

insert into Nha_TaiSan values (42, 1, 1, 2000000)
insert into Nha_TaiSan values (42, 2, 1, 500000)
insert into Nha_TaiSan values (42, 3, 1, 2000000)
insert into Nha_TaiSan values (42, 6, 2, 200000)
insert into Nha_TaiSan values (42, 4, 2, 2000000)
insert into Nha_TaiSan values (42, 5, 1, 100000)
insert into Nha_TaiSan values (42, 7, 1, 600000)

insert into Nha_TaiSan values (43, 1, 1, 2000000)
insert into Nha_TaiSan values (43, 3, 1, 2000000)
insert into Nha_TaiSan values (43, 6, 2, 200000)
insert into Nha_TaiSan values (43, 5, 1, 100000)
insert into Nha_TaiSan values (43, 7, 1, 600000)

insert into Nha_TaiSan values (44, 1, 1, 2000000)
insert into Nha_TaiSan values (44, 2, 1, 500000)
insert into Nha_TaiSan values (44, 3, 1, 2000000)
insert into Nha_TaiSan values (44, 6, 2, 200000)
insert into Nha_TaiSan values (44, 5, 1, 100000)
insert into Nha_TaiSan values (44, 7, 1, 600000)

insert into Nha_TaiSan values (45, 1, 1, 2000000)
insert into Nha_TaiSan values (45, 3, 1, 2000000)
insert into Nha_TaiSan values (45, 6, 2, 200000)
insert into Nha_TaiSan values (45, 5, 1, 100000)
insert into Nha_TaiSan values (45, 7, 1, 600000)

insert into Nha_TaiSan values (46, 1, 1, 2000000)
insert into Nha_TaiSan values (46, 2, 1, 500000)
insert into Nha_TaiSan values (46, 3, 1, 2000000)
insert into Nha_TaiSan values (46, 6, 2, 200000)
insert into Nha_TaiSan values (46, 4, 2, 2000000)
insert into Nha_TaiSan values (46, 5, 1, 100000)
insert into Nha_TaiSan values (46, 7, 1, 600000)

insert into Nha_TaiSan values (47, 1, 1, 2000000)
insert into Nha_TaiSan values (47, 3, 1, 2000000)
insert into Nha_TaiSan values (47, 6, 2, 200000)
insert into Nha_TaiSan values (47, 5, 1, 100000)
insert into Nha_TaiSan values (47, 7, 1, 600000)

insert into Nha_TaiSan values (48, 1, 1, 2000000)
insert into Nha_TaiSan values (48, 2, 1, 500000)
insert into Nha_TaiSan values (48, 3, 1, 2000000)
insert into Nha_TaiSan values (48, 6, 2, 200000)
insert into Nha_TaiSan values (48, 5, 1, 100000)
insert into Nha_TaiSan values (48, 7, 1, 600000)

insert into Nha_TaiSan values (49, 1, 1, 2000000)
insert into Nha_TaiSan values (49, 3, 1, 2000000)
insert into Nha_TaiSan values (49, 6, 2, 200000)
insert into Nha_TaiSan values (49, 5, 1, 100000)
insert into Nha_TaiSan values (49, 7, 1, 600000)

insert into Nha_TaiSan values (50, 1, 1, 2000000)
insert into Nha_TaiSan values (50, 3, 1, 2000000)
insert into Nha_TaiSan values (50, 6, 2, 200000)
insert into Nha_TaiSan values (50, 5, 1, 100000)
insert into Nha_TaiSan values (50, 7, 1, 600000)

insert into Nha_TaiSan values (51, 1, 1, 2000000)
insert into Nha_TaiSan values (51, 2, 1, 500000)
insert into Nha_TaiSan values (51, 3, 1, 2000000)
insert into Nha_TaiSan values (51, 6, 2, 200000)
insert into Nha_TaiSan values (51, 5, 1, 100000)
insert into Nha_TaiSan values (51, 7, 1, 600000)

insert into Nha_TaiSan values (52, 1, 1, 2000000)
insert into Nha_TaiSan values (52, 3, 1, 2000000)
insert into Nha_TaiSan values (52, 6, 2, 200000)
insert into Nha_TaiSan values (52, 5, 1, 100000)
insert into Nha_TaiSan values (52, 7, 1, 600000)

insert into Nha_TaiSan values (53, 1, 1, 2000000)
insert into Nha_TaiSan values (53, 2, 1, 500000)
insert into Nha_TaiSan values (53, 3, 1, 2000000)
insert into Nha_TaiSan values (53, 6, 2, 200000)
insert into Nha_TaiSan values (53, 4, 2, 2000000)
insert into Nha_TaiSan values (53, 5, 1, 100000)
insert into Nha_TaiSan values (53, 7, 1, 600000)

insert into Nha_TaiSan values (54, 1, 1, 2000000)
insert into Nha_TaiSan values (54, 3, 1, 2000000)
insert into Nha_TaiSan values (54, 6, 2, 200000)
insert into Nha_TaiSan values (54, 5, 1, 100000)
insert into Nha_TaiSan values (54, 7, 1, 600000)

Go
create trigger UpdateNhaByNguoiDung on HopDongNha for insert as
begin
    declare @manha int	
	Select @manha = manha from inserted
	update ThongTinNha set TinhTrangThue = 1 where MaNha = @manha
End
Go

Go
create trigger UpdateNhaByNguoiDung2 on HopDongNha for delete as
begin
    declare @manha int	
	Select @manha = manha from deleted
	update ThongTinNha set TinhTrangThue = 0 where MaNha = @manha
End
Go