package ddit.customercenter.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ddit.customercenter.service.CustomerCenterServiceImpl;
import ddit.customercenter.service.ICustomerCenterService;
import ddit.vo.CustomerCenterVO;


@WebServlet("/ccWriterController.do")
public class ccWriter extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		// 0. 클라이언트 전송시 값을 받는다
		// 데이터 값을 넘겨 받아야함! form
	
		String title = request.getParameter("cc_title");
		String type = request.getParameter("cc_type");
		String content = request.getParameter("cc_content");
		
		System.out.println("title :" + title);
		System.out.println("type :" + type); // 지금 이게 value로 들어오니.. 이따 확인!
		System.out.println("content :" + content);
		
		HttpSession  session = request.getSession();
		String  idses =  (String) session.getAttribute("SessionId");
		
		CustomerCenterVO vo = new CustomerCenterVO();
		//cc_no, member_id, cc_title, cc_date, cc_content, cc_type, cc_status
		vo.setMember_id(idses);
		vo.setCc_title(title);
		vo.setCc_content(content);
		vo.setCc_type(type);
		
		// 1. service객체 얻어오기
		ICustomerCenterService service = CustomerCenterServiceImpl.getInstance();
		
		// 2. service메소드 호출 - 결과값 얻기
		int res = service.cc_insert(vo);
		System.out.println("res : "+ res);
		
		// 3. request에 결과값을 저장
		request.setAttribute("result", res);
		
		// 4. 결과값 출력 - view페이지로 이동
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
				
		
	}

}
