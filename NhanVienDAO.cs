using DTO;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.SqlServer.Server;

namespace DAO
{
	public class NhanVienDAO
	{
		//
		static SqlConnection con;
		public static List<NhanVienDTO> LayNhanVien()
		{
			string sTruyVan = "select * from nhanvien";
			con = DataProvider.MoKetNoi();
			DataTable dt = DataProvider.TruyVanLayDuLieu(sTruyVan, con);
			
			if (dt.Rows.Count == 0)
			{
				return null;
			}
			
			List<NhanVienDTO> lstNhanVien = new List<NhanVienDTO>();
			for (int i = 0; i < dt.Rows.Count; i++)
			{
				NhanVienDTO nv = new NhanVienDTO();
				nv.SMaNV = dt.Rows[i]["manv"].ToString();
				nv.SHoLot = dt.Rows[i]["holot"].ToString();
				nv.STenNV = dt.Rows[i]["tennv"].ToString();
				nv.SPhai = dt.Rows[i]["phai"].ToString();
				nv.DtNgaySinh = DateTime.Parse(dt.Rows[i]["ngaysinh"].ToString());
				nv.SMaCV = dt.Rows[i]["macv"].ToString();
				lstNhanVien.Add(nv);
			}
			return lstNhanVien;
		}

		// Hàm Thêm nhân viên
		public static bool ThemNhanVien(NhanVienDTO nv)
		{
			string sTruyVan = string.Format(@"insert into nhanvien values(N'{0}', N'{1}',N'{2}',N'{3}','{4}',N'{5}')",
									nv.SMaNV, nv.SHoLot, nv.STenNV, nv.SPhai, nv.DtNgaySinh, nv.SMaCV);
			con = DataProvider.MoKetNoi();
			bool kq = DataProvider.TruyVanKhongLayDuLieu(sTruyVan, con);
			
			DataProvider.DongKetNoi(con);
			return kq;
		}

		// Hàm Xoá nhân viên
		public static bool XoaNhanVien(NhanVienDTO nv)
		{
			string sTruyVan = string.Format(@"delete from nhanvien where manv=N'{0}'", nv.SMaNV);
			con = DataProvider.MoKetNoi();
			bool kq = DataProvider.TruyVanKhongLayDuLieu(sTruyVan, con);
			
			DataProvider.DongKetNoi(con);
			return kq;
		}

		// Hàm Sửa tt nhân viên
		public static bool SuaNhanVien(NhanVienDTO nv)
		{
			string sTruyVan = string.Format(@"update nhanvien set holot=N'{1}', tennv=N'{2}', phai=N'{3}', ngaysinh='{4}', macv=N'{5}' where manv=N'{0}'", nv.SMaNV, nv.SHoLot, nv.STenNV, nv.SPhai, nv.DtNgaySinh, nv.SMaCV);
			con = DataProvider.MoKetNoi();
			bool kq = DataProvider.TruyVanKhongLayDuLieu(sTruyVan, con);
			
			DataProvider.DongKetNoi(con);
			return kq;
		}

		// Lấy thông tin nhân viên có mã ma, trả về null nếu không thấy
		public static NhanVienDTO TimNhanVienTheoMa(string ma)
		{
			string sTruyVan = string.Format(@"select * from nhanvien where manv=N'{0}'",ma);
			con = DataProvider.MoKetNoi();
			DataTable dt = DataProvider.TruyVanLayDuLieu(sTruyVan, con);
			
			if (dt.Rows.Count == 0)
			{
				return null;
			}
			NhanVienDTO nv = new NhanVienDTO();
			
			nv.SMaNV = dt.Rows[0]["manv"].ToString();
			nv.SHoLot = dt.Rows[0]["holot"].ToString();
			nv.STenNV = dt.Rows[0]["tennv"].ToString();
			nv.SPhai = dt.Rows[0]["phai"].ToString();
			nv.DtNgaySinh = DateTime.Parse(dt.Rows[0]["ngaysinh"].ToString());
			nv.SMaCV = dt.Rows[0]["macv"].ToString();
			
			return nv;
		}

		// Lấy thông tin nhân viên theo HoTen, trả về null nếu không thấy
		public static List<NhanVienDTO> TimNhanVienTheoHoTen(string hl, string ten)
		{
			string sTruyVan = string.Format(@"select * from nhanvien where holot=N'{0}' and tennv=N'{1}'",hl,ten);
			con = DataProvider.MoKetNoi();
			DataTable dt = DataProvider.TruyVanLayDuLieu(sTruyVan, con);
			
			if (dt.Rows.Count == 0)
			{
				return null;
			}
			List<NhanVienDTO> lstNhanVien = new List<NhanVienDTO>();
			for (int i = 0; i < dt.Rows.Count; i++)
			{
				NhanVienDTO nv = new NhanVienDTO();
				nv.SMaNV = dt.Rows[i]["manv"].ToString();
				nv.SHoLot = dt.Rows[i]["holot"].ToString();
				nv.STenNV = dt.Rows[i]["tennv"].ToString();
				nv.SPhai = dt.Rows[i]["phai"].ToString();
				nv.DtNgaySinh = DateTime.Parse(dt.Rows[i]["ngaysinh"].ToString());
				nv.SMaCV = dt.Rows[i]["macv"].ToString();
				lstNhanVien.Add(nv);
			}
			return lstNhanVien;
		}
	}
}
