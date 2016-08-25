package com.kedu.common.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.staff.dao.StaffDao;
import com.kedu.staff.dto.StaffDto;

public class StaffInfoAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String url = "/acom/staff_info.jsp";

		String staff_id = request.getParameter("staff_id");
		
		StaffDao sfdao = StaffDao.getInstance();
		StaffDto sfdto = sfdao.selectOneByStaffid(staff_id);
		
		request.setAttribute("staff", sfdto);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
