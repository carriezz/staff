package com.kedu.common.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kedu.staff.dao.StaffDao;
import com.kedu.staff.dto.StaffDto;

public class LoginAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String url = "/acom/login.jsp";
		
		String staff_id = request.getParameter("staff_id");
		String staff_pwd = request.getParameter("staff_pwd");
		
		StaffDao sfdao = StaffDao.getInstance();
		int result = sfdao.userCheck(staff_id, staff_pwd);
		
		if(result == 1) {
			StaffDto sfdto = sfdao.selectOneByStaffid(staff_id);
			HttpSession session = request.getSession();
			session.setAttribute("staff_id", sfdto);
			url = "StaffServlet?command=main";
		} else if (result == 0) {
			request.setAttribute("message", "비밀번호가 맞지 않습니다.");
		} else if (result == 1) {
			request.setAttribute("message", "존재하지 않는 사번입니다.");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
