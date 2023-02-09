package ddit.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ddit.member.service.IMemberService;
import ddit.member.service.MemberServiceImpl;
import ddit.vo.MemberVO;

@WebServlet("/regist.do")
public class Regist extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");		
		
		String addr = request.getParameter("member_addr"); 
		String bir = request.getParameter("member_birth");
		String hobby = request.getParameter("member_hobby");
		String id1 = request.getParameter("member_id1");
		String id2 = request.getParameter("member_id2");
		String name = request.getParameter("member_name");
		String nickname = request.getParameter("member_nickname");
		String pwd = request.getParameter("member_password");
		String tel = request.getParameter("member_phone");
		String memId = id1 + id2;
		
		MemberVO memVo = new MemberVO();
		memVo.setMember_addr(addr);
		memVo.setMember_hobby(hobby);
		memVo.setMember_id(memId);
		memVo.setMember_name(name);
		memVo.setMember_nickname(nickname);
		memVo.setMember_password(pwd);
		memVo.setMember_phone(tel);
		memVo.setMember_birth(bir);
		
		
		
		//System.out.println(memVo.getMember_id());
		IMemberService service = MemberServiceImpl.getService();
		
		int result = service.registMem(memVo);
		request.setAttribute("result", result);
		
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
	}
	
	
}
