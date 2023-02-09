package ddit.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import ddit.member.service.IMemberService;
import ddit.member.service.MemberServiceImpl;
import ddit.vo.MemberVO;

@WebServlet("/memberDetail.do")
public class MemberDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		IMemberService service = MemberServiceImpl.getService();
		
		
		String member_id = request.getParameter("member");
		
		List<MemberVO> member =  service.member_myinfo(member_id);
		request.setAttribute("memberlist", member);
		
		request.getRequestDispatcher("/Views/memberList.jsp").forward(request, response);
	}

}
