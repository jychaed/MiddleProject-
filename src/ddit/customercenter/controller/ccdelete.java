package ddit.customercenter.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.customercenter.service.CustomerCenterServiceImpl;
import ddit.customercenter.service.ICustomerCenterService;


@WebServlet("/ccdeleteController.do")
public class ccdelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int ccNum = Integer.parseInt(request.getParameter("data"));
		
		ICustomerCenterService service = CustomerCenterServiceImpl.getInstance();
		
		int res = service.cc_delete(ccNum);
		
		request.setAttribute("result", res);
		
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
	}

}
