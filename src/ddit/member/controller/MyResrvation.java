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
import ddit.vo.RoomResListVO;

@WebServlet("/MyResrvation.do")
public class MyResrvation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		IMemberService service = MemberServiceImpl.getService();
		String member_id = request.getParameter("member_id");
		List<RoomResListVO> list =service.member_myres_room(member_id); 
		request.setAttribute("list", list);
		request.getRequestDispatcher("member/MyResrvation.jsp").forward(request, response);		
	}

}
