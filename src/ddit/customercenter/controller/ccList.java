package ddit.customercenter.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ddit.customercenter.service.CustomerCenterServiceImpl;
import ddit.customercenter.service.ICustomerCenterService;
import ddit.vo.CustomerCenterVO;



@WebServlet("/ccListController.do")
public class ccList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("utf-8");
		
		// 1. service객체 얻어오기
		ICustomerCenterService service = CustomerCenterServiceImpl.getInstance();
		
		HttpSession  session = request.getSession();
		String  idses =  (String) session.getAttribute("SessionId");
		
		System.out.println("아이디 ====" +  idses );
		
		// 2. service메소드 호출하기 - 결과값 받기
		List<CustomerCenterVO> cclist = service.cc_list(idses);
		System.out.println("List ===="    +  cclist);
		
		// 3. request에 결과값 저장하기
		request.setAttribute("cclist", cclist);
		
		// 4. view페이지로 이동
		request.getRequestDispatcher("/Customercenter/ccList.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ICustomerCenterService service = CustomerCenterServiceImpl.getInstance();
		
		List<CustomerCenterVO> cclist = service.cc_admin_allList();
		
		request.setAttribute("cclist", cclist);
		request.getRequestDispatcher("/Customercenter/ccList.jsp").forward(request, response);
	}

}
