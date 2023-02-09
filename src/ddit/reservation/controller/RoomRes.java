package ddit.reservation.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.reservation.service.IReservationService;
import ddit.reservation.service.ReservationServiceImpl;
import ddit.vo.RoomResVO;

@WebServlet("/RoomRes.do")
public class RoomRes extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		 
		String member_id = request.getParameter("member_id");
		System.out.println("받아온 memberid : "+ member_id);
		String roomcode = request.getParameter("roomcode");
		String startday = request.getParameter("startday");
		String endday = request.getParameter("endday");
		
		RoomResVO vo = new RoomResVO();
		vo.setMember_id(member_id);
		System.out.println(vo.getMember_id());
		vo.setRoom_code(roomcode);
		vo.setRoomres_start(startday);
		vo.setRoomres_end(endday);
	
		IReservationService service = ReservationServiceImpl.getService();
		 int res = service.room_reservation_insert(vo);
		 System.out.println("예약 성공수 :" + res);
		 
		 request.setAttribute("result", res);
		 request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
				
		
	}

}
