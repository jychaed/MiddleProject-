package ddit.item.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.item.service.IItemService;
import ddit.item.service.ItemServiceImpl;
import ddit.vo.RoomVO;
import ddit.vo.TourVO;

@WebServlet("/RoomSelectOne.do")
public class RoomSelectOne extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String roomCode = request.getParameter("roomcode");
		System.out.println(roomCode);
		
		IItemService service = ItemServiceImpl.getInstance();
		
		RoomVO vo = service.room_selectOne(roomCode);
		System.out.println(vo);
	
		
		request.setAttribute("vo", vo);
		
		request.getRequestDispatcher("Room/roomSelectOne.jsp").forward(request, response);
		
		
	
	}

}
