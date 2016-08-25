package com.kedu.common.action;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.staff.dao.StaffDao;
import com.kedu.staff.dto.StaffDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class NewStaffInsertAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		ServletContext context = request.getServletContext();
		String path = context.getRealPath("upload");
		String enctype="UTF-8";
		int sizeLimit = 20*1024*1024;
		
		MultipartRequest multi = new MultipartRequest(request, path, sizeLimit, enctype, new DefaultFileRenamePolicy());
		
		StaffDto sfdto = new StaffDto();
		
		sfdto.setStaff_id(multi.getParameter("staff_id"));
		sfdto.setPicture(multi.getFilesystemName("picture"));
		sfdto.setStaff_name(multi.getParameter("staff_name"));
		sfdto.setStaff_jumin(multi.getParameter("staff_jumin1") + multi.getParameter("staff_jumin2"));
		sfdto.setGender(multi.getParameter("gender"));
		sfdto.setStaff_email(multi.getParameter("staff_email"));
		sfdto.setPhone(multi.getParameter("phone"));
		sfdto.setZipcode(multi.getParameter("zipcode"));
		sfdto.setAddress(multi.getParameter("address"));
		sfdto.setDetail_add(multi.getParameter("detail_add"));
		sfdto.setStaff_pwd(multi.getParameter("staff_pwd"));
		sfdto.setDep_id(Integer.parseInt(multi.getParameter("dep_id")));
		sfdto.setPos_id(Integer.parseInt(multi.getParameter("pos_id")));
		sfdto.setAdmin(multi.getParameter("admin"));
		sfdto.setStt_date(multi.getParameter("stt_date"));
		sfdto.setEnd_date(multi.getParameter("end_date"));
		sfdto.setSalary(Integer.parseInt(multi.getParameter("salary")));
		sfdto.setReg_stf_date(multi.getParameter("reg_stf_date"));
		sfdto.setRegistrant(multi.getParameter("registrant"));
		
		StaffDao sfdao = StaffDao.getInstance();
		sfdao.insertStaff(sfdto);
		
		new StaffListAction().execute(request, response);
	}

}
