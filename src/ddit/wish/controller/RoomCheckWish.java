package ddit.wish.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.item.service.IItemService;
import ddit.item.service.ItemServiceImpl;
import ddit.wish.service.IWishService;
import ddit.wish.service.WishServiceImpl;


@WebServlet("/RoomCheckWish.do")
public class RoomCheckWish extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String member_id = request.getParameter("member_id");
		String roomcode = request.getParameter("roomcode");

		
		IWishService service = WishServiceImpl.getService();
		
		Map<String, String> map = new HashMap<>();
		map.put("roomcode", roomcode);
		map.put("member_id", member_id);
			
		int result = service.room_check_wish(map);
		
		System.out.println("찜 체크 : " + result);
		
		request.setAttribute("result", result);

		
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
	}

}
