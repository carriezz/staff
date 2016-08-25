package com.kedu.staff.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.kedu.common.db.DbManager;
import com.kedu.staff.dto.StaffDto;

public class StaffDao {
	private StaffDao(){
	}
	
	public static StaffDao instance = new StaffDao();
	
	public static StaffDao getInstance(){
		if(instance == null) {
			instance = new StaffDao();
		}
		return instance;
	}
	
	public int confirmId(String staff_id){
		int result = -1;
		String sql = "select staff_id from staff where staff_id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DbManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, staff_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = 1;
			}else {
				result = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
				if(pstmt != null) {
					pstmt.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	
	public int userCheck(String staff_id, String staff_pwd) {
		int result = -1;
		String sql = "select staff_pwd from staff where staff_id=?";
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = DbManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, staff_id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				if(rs.getString("staff_pwd")!=null 
				&& rs.getString("staff_pwd").equals(staff_pwd)){
					result = 1;
				} else {
					result = 0;
				}
			} else {
				result = -1;
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) {
					rs.close();
				}
				if(pstmt != null) {
					pstmt.close();
				}
				if(con != null) {
					con.close();
				} 
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public List<StaffDto> selectAllStaffs() {
		String sql = "select * from staff order by staff_id";
		
		List<StaffDto> list = new ArrayList<StaffDto>();
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			con = DbManager.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				StaffDto sfdto = new StaffDto();
				
				sfdto.setStaff_id(rs.getString("staff_id"));
				sfdto.setPicture(rs.getString("picture"));
				sfdto.setStaff_name(rs.getString("staff_name"));
				sfdto.setStaff_jumin(rs.getString("staff_jumin"));
				sfdto.setGender(rs.getString("gender"));
				sfdto.setStaff_email(rs.getString("staff_email"));
				sfdto.setPhone(rs.getString("phone"));
				sfdto.setZipcode(rs.getString("zipcode"));
				sfdto.setAddress(rs.getString("address"));
				sfdto.setDetail_add(rs.getString("detail_add"));
				sfdto.setStaff_pwd(rs.getString("staff_pwd"));
				sfdto.setDep_id(rs.getInt("dep_id"));
				sfdto.setPos_id(rs.getInt("pos_id"));
				sfdto.setAdmin(rs.getString("admin"));
				sfdto.setStt_date(rs.getString("stt_date"));
				sfdto.setEnd_date(rs.getString("end_date"));
				sfdto.setSalary(rs.getInt("salary"));
				sfdto.setReg_stf_date(rs.getString("reg_stf_date"));
				sfdto.setRegistrant(rs.getString("registrant"));
				
				list.add(sfdto);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DbManager.close(con, stmt, rs);
		}
		return list;
	}
	
	public void insertStaff(StaffDto sfdto) {
		String sql = "insert into staff(" 
				   + "staff_id, picture, staff_name, staff_jumin, gender, staff_email, phone, zipcode"
				   + ", address, detail_add, staff_pwd, dep_id, pos_id, admin, stt_date"
				   + ", end_date, salary, reg_stf_date, registrant)"
				   + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = DbManager.getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, sfdto.getStaff_id());
			pstmt.setString(2, sfdto.getPicture());
			pstmt.setString(3, sfdto.getStaff_name());
			pstmt.setString(4, sfdto.getStaff_jumin());
			pstmt.setString(5, sfdto.getGender());
			pstmt.setString(6, sfdto.getStaff_email());
			pstmt.setString(7, sfdto.getPhone());
			pstmt.setString(8, sfdto.getZipcode());
			pstmt.setString(9, sfdto.getAddress());
			pstmt.setString(10, sfdto.getDetail_add());
			pstmt.setString(11, sfdto.getStaff_pwd());
			pstmt.setInt(12, sfdto.getDep_id());
			pstmt.setInt(13, sfdto.getPos_id());
			pstmt.setString(14, sfdto.getAdmin());
			pstmt.setString(15, sfdto.getStt_date());
			pstmt.setString(16, sfdto.getEnd_date());
			pstmt.setInt(17, sfdto.getSalary());
			pstmt.setString(18, sfdto.getReg_stf_date());
			pstmt.setString(19, sfdto.getRegistrant());
			
			pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DbManager.close(con, pstmt);
		}
	}
	
	public void deleteStaff(String staff_id) {
		String sql = "delete staff where staff_id=?";
		
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DbManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, staff_id);
			pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public StaffDto selectOneByStaffid(String staff_id) {
		String sql = "select * from staff where staff_id=?";
		
		StaffDto sfdto = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DbManager.getConnection();
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, staff_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				sfdto = new StaffDto();
				
				sfdto.setStaff_id(rs.getString("staff_id"));
				sfdto.setPicture(rs.getString("picture"));
				sfdto.setStaff_name(rs.getString("staff_name"));
				sfdto.setStaff_jumin(rs.getString("staff_jumin"));
				sfdto.setGender(rs.getString("gender"));
				sfdto.setStaff_email(rs.getString("staff_email"));
				sfdto.setPhone(rs.getString("phone"));
				sfdto.setZipcode(rs.getString("zipcode"));
				sfdto.setAddress(rs.getString("address"));
				sfdto.setDetail_add(rs.getString("detail_add"));
				sfdto.setStaff_pwd(rs.getString("staff_pwd"));
				sfdto.setDep_id(rs.getInt("dep_id"));
				sfdto.setPos_id(rs.getInt("pos_id"));
				sfdto.setAdmin(rs.getString("admin"));
				sfdto.setStt_date(rs.getString("stt_date"));
				sfdto.setEnd_date(rs.getString("end_date"));
				sfdto.setSalary(rs.getInt("salary"));
				sfdto.setReg_stf_date(rs.getString("reg_stf_date"));
				sfdto.setRegistrant(rs.getString("registrant"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DbManager.close(con, pstmt, rs);
		}
		
		return sfdto;
	}
}
