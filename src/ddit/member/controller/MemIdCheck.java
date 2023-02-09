package ddit.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.member.service.IMemberService;
import ddit.member.service.MemberServiceImpl;

@WebServlet("/memIdCheck.do")
public class MemIdCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// 디비와 아이디 중복검사하는 메소드
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String member_id = request.getParameter("id");
		IMemberService service = MemberServiceImpl.getService();
		
		String idCheck = service.memIdCheck(member_id);
		
		System.out.println(member_id);
		request.setAttribute("idCheck", idCheck);
		request.getRequestDispatcher("Views/idCheck.jsp").forward(request, response);
	}

}
