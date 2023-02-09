package ddit.trip.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.trip.service.ITripDetailService;
import ddit.trip.service.TripDetailServiceImpl;
import ddit.vo.TripDetailVO;


@WebServlet("/TripDetailAdd.do")
@MultipartConfig(
		fileSizeThreshold = 1024 * 1024 * 10, 
		maxFileSize = 1024 * 1024 * 30,
		maxRequestSize = 1024 * 1024 * 100
	)
public class TripDetailAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		
		String ntrip_no = request.getParameter("ntrip_no");
		String detail_addr = request.getParameter("detail_addr");
		String detail_name = request.getParameter("detail_name");
		String detail_ypoint = request.getParameter("ypoint");
		String detail_xpoint = request.getParameter("xpoint");
		
		Map<String, String> map = new HashMap<>();
		map.put("ntrip_no", ntrip_no);
		map.put("detail_addr", detail_addr);
		map.put("detail_name", detail_name);
		map.put("detail_ypoint", detail_ypoint);
		map.put("detail_xpoint", detail_xpoint);
		
		ITripDetailService service = TripDetailServiceImpl.getService();
		int result = service.tripDetailInsert(map);
		TripDetailVO vo = new TripDetailVO();
		
		System.out.println("서블릿 안입니다.");
		
		if(result > 0) {
			vo = service.tripDetailCheck(map);
			request.setAttribute("vo", vo);
		}else {
			vo = null;
			request.setAttribute("vo", vo);	
		}
		
		request.getRequestDispatcher("Views/TripDetail.jsp").forward(request, response);
	
	}

}
