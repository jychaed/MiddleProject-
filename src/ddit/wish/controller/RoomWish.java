package ddit.wish.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.item.service.IItemService;
import ddit.item.service.ItemServiceImpl;
import ddit.wish.dao.WishDaoImpl;
import ddit.wish.service.IWishService;
import ddit.wish.service.WishServiceImpl;

/**
 * Servlet implementation class TourWish
 */
@WebServlet("/RoomWish.do")
public class RoomWish extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String member_id = request.getParameter("member_id");
		String roomcode = request.getParameter("roomcode");
		

		IWishService service = WishServiceImpl.getService();
		
		int result = service.room_wish(member_id, roomcode);
		
		System.out.println("찜 등록 확인 : " + result );
		
		request.setAttribute("result", result);

		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
	
	}

}
