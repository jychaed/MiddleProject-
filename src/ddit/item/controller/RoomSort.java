package ddit.item.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.item.service.IItemService;
import ddit.item.service.ItemServiceImpl;
import ddit.vo.RoomVO;

@WebServlet("/RoomSort.do")
public class RoomSort extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		IItemService service = ItemServiceImpl.getInstance();
		
		String colname= request.getParameter("colname");
		System.out.println("선택된 컬럼명 : "+ colname);
		
		List<RoomVO> list = service.sortRoom(colname);
		System.out.println("sorlis첫번째 이름 : " +list.get(0).getRoom_name()	);
		System.out.println("sorlis두번째 이름 : " +list.get(1).getRoom_name()	);
		System.out.println("sorlis세번째 이름 : " +list.get(2).getRoom_name()	);
		
		request.setAttribute("sortlist", list);
		
		request.getRequestDispatcher("Room/roomsort.jsp").forward(request, response);
		
	}

}
