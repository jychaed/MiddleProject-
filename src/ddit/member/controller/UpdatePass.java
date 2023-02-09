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

@WebServlet("/UpdatePass.do")
public class UpdatePass extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String member_id = request.getParameter("member_id");
		String member_password = request.getParameter("member_password");
		MemberVO memberVo = new MemberVO();
		memberVo.setMember_id(member_id);
		memberVo.setMember_password(member_password);
		IMemberService service = MemberServiceImpl.getService();
		
		int result = service.updatePass(memberVo);
		request.setAttribute("result", result);
		
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
		
	}

}
