package ddit.member.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.member.service.IMemberService;
import ddit.member.service.MemberServiceImpl;
import ddit.vo.MemberVO;

@WebServlet("/memberList.do")
public class MemberList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		
		IMemberService service = MemberServiceImpl.getService();
		Map<String, String> map = new HashMap<String, String>();
		String searchText = request.getParameter("search");
		//System.out.println("검색아이디 " + searchText);
		String searchType = "member_name";
		map.put("searchText", searchText);
		map.put("searchType", searchType);
		List<MemberVO> memberlist = service.memberList(map);
		
		request.setAttribute("memberlist", memberlist);
		request.getRequestDispatcher("/Views/memberList.jsp").forward(request, response);
	}
}
