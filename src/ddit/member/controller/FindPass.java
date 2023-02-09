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
 * Servlet implementation class FindPass
 */
@WebServlet("/FindPass.do")
public class FindPass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String member_id = request.getParameter("member_id");
		String member_name = request.getParameter("member_name");
		
		
		Map<String, String> map = new HashMap<>();
		map.put("member_id", member_id);
		map.put("member_name", member_name);
		
		IMemberService service = MemberServiceImpl.getService();
		
		String result = service.findPass(map);
	
		System.out.println(result);
		
		
		request.setAttribute("result", result);
		request.getRequestDispatcher("Views/findPass.jsp").forward(request, response);
	
	
	}

}
