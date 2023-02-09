package ddit.member.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.member.service.IMemberService;
import ddit.member.service.MemberServiceImpl;

/**
 * Servlet implementation class FindId
 */
@WebServlet("/FindId.do")
public class FindId extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String member_name = request.getParameter("member_name");
		String member_phone = request.getParameter("member_phone");
		
		
		Map<String, String> map = new HashMap<>();
		map.put("member_name", member_name);
		map.put("member_phone", member_phone);
		
		IMemberService service = MemberServiceImpl.getService();
		
		String result = service.findId(map);
	
		System.out.println(result);
		
		
		request.setAttribute("result", result);
		request.getRequestDispatcher("Views/findId.jsp").forward(request, response);
		
	}

}
