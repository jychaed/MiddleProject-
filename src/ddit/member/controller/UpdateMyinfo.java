package ddit.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.member.service.IMemberService;
import ddit.member.service.MemberServiceImpl;
import ddit.vo.MemberVO;

@WebServlet("/UpdateMyinfo.do")
public class UpdateMyinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String member_id = request.getParameter("member_id");
		String member_nickname = request.getParameter("member_nickname");
		String member_phone = request.getParameter("member_phone");
		String member_birth = request.getParameter("member_birth");
		String member_hobby = request.getParameter("member_hobby");
		String member_addr = request.getParameter("member_addr");
		MemberVO memberVo = new MemberVO();
		memberVo.setMember_id(member_id);
		memberVo.setMember_nickname(member_nickname);
		memberVo.setMember_phone(member_phone);
		memberVo.setMember_birth(member_birth);
		memberVo.setMember_hobby(member_hobby);
		memberVo.setMember_addr(member_addr);
		
		IMemberService service = MemberServiceImpl.getService();
		
		int result = service.member_update_myinfo(memberVo);
		request.setAttribute("result", result);
		
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
	}

}
