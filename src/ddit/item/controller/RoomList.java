package ddit.item.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.item.service.IItemService;
import ddit.item.service.ItemServiceImpl;
import ddit.vo.RoomVO;

@WebServlet("/RoomList.do")
public class RoomList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		IItemService service = ItemServiceImpl.getInstance();
		List<RoomVO> list = service.listRoom();
		
		request.setAttribute("list", list);
		
		
//		RequestDispatcher disp = request.getRequestDispatcher("Room/roomtest.jsp");
//		disp.forward(request, response);
		
		request.getRequestDispatcher("Room/roomlist.jsp").forward(request, response);
		
		
		
	}

}
