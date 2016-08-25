package com.kedu.common.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.staff.dao.StaffDao;

public class StaffDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String staff_id = request.getParameter("staff_id");
		
		StaffDao sfdao = StaffDao.getInstance();
		sfdao.deleteStaff(staff_id);
		
		new StaffListAction().execute(request, response);
	}

}
