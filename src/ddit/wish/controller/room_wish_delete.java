package ddit.wish.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.wish.service.IWishService;
import ddit.wish.service.WishServiceImpl;

@WebServlet("/room_wish_delete.do")
public class room_wish_delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String roomcode =request.getParameter("roomcode");
		String member_id =request.getParameter("member_id");
		
		IWishService service = WishServiceImpl.getService();
		
		int result = service.room_wish_delete(member_id,roomcode);
		System.out.println("삭제 체크 : " + result);
		
		
		request.setAttribute("result", result);
		
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
		
		
	}

}
