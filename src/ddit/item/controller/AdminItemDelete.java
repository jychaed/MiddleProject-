package ddit.item.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.item.service.IItemService;
import ddit.item.service.ItemServiceImpl;
import ddit.notice.service.INoticeService;
import ddit.notice.service.NoticeServiceImpl;

@WebServlet("/AdminItemDelete.do")
public class AdminItemDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		
		String deleteCode = request.getParameter("data");	// data : 삭제할 코드
		System.out.println("삭제할 코드번호" + deleteCode);
		System.out.println(deleteCode.contains("ROOM"));
		IItemService service = ItemServiceImpl.getInstance();
		int result = -1;
		
		if(deleteCode.contains("FOOD")) {
			System.out.println("음식삭제 시작");
			result = service.food_delete(deleteCode);
			System.out.println("음식삭제 완료 : " + result);
		}else if(deleteCode.contains("ROOM")) {
			System.out.println("숙소삭제 시작");
			result = service.deleteRoom(deleteCode);
			System.out.println("숙소삭제 완료: " + result);
		}else if(deleteCode.contains("TOUR")) {
			System.out.println("관광삭제 시작");
			result = service.tour_delete(deleteCode);
			System.out.println("관광삭제 완료: " + result);
		}
		System.out.println("삭제 결과" + result);
		request.setAttribute("result", result);
		request.getRequestDispatcher("/Views/successCheck.jsp").forward(request, response);
	
	}


}
