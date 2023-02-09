package ddit.customercenter.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.customercenter.service.CustomerCenterServiceImpl;
import ddit.customercenter.service.ICustomerCenterService;
import ddit.vo.CustomerCenterVO;

@WebServlet("/AdminCcSearchList.do")
public class AdminCcSearchList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String searchType = request.getParameter("searchType");	
		String searchText = request.getParameter("searchText");	
		ICustomerCenterService service = CustomerCenterServiceImpl.getInstance();
		
		List<CustomerCenterVO> cclist = service.cc_admin_TypeList(searchType, searchText);
		
		request.setAttribute("cclist", cclist);
		request.getRequestDispatcher("/Customercenter/ccList.jsp").forward(request, response);	
	}

}
