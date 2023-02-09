package ddit.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ddit.member.service.IMemberService;
import ddit.member.service.MemberServiceImpl;
import ddit.vo.MemberVO;

@WebServlet("/loginCheck.do")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String loginId = request.getParameter("loginId");
		String loginPwd = request.getParameter("loginPwd");
		
		MemberVO memberVo = new MemberVO();
		memberVo.setMember_id(loginId);
		memberVo.setMember_password(loginPwd);
		IMemberService service = MemberServiceImpl.getService();
		
		MemberVO loginMem = service.loginCheck(memberVo);
		//System.out.println(loginMem);
		HttpSession session = request.getSession();
		
		if ( loginMem != null ) {  // 비번 아이디 잘 입력하면 
			session.setAttribute("SessionId", loginMem.getMember_id());
			session.setAttribute("SessionName", loginMem.getMember_name());
			response.sendRedirect("/ddit_MiddleProject/Main/main.jsp");
		}else {		// 비번 아이디 잘 입력되지 않으면
			request.setAttribute("loginErrMsg", " 아이디 또는 비밀번호를 잘못 입력했습니다.\n" + 
					"입력하신 내용을 다시 확인해주세요.");
			request.getRequestDispatcher("member/login.jsp").forward(request, response);
		}
		
		
		
		
	
	}	
}
