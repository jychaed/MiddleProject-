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


@WebServlet("/TripDetailCheck.do")
@MultipartConfig(
		fileSizeThreshold = 1024 * 1024 * 10, 
		maxFileSize = 1024 * 1024 * 30,
		maxRequestSize = 1024 * 1024 * 100
	)
public class TripDetailCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String ntrip_no = request.getParameter("ntrip_no");
		String detail_addr = request.getParameter("detail_addr");
		
		Map<String, String> map = new HashMap<>();
		map.put("ntrip_no",ntrip_no);
		map.put("detail_addr",detail_addr);
		
		ITripDetailService service = TripDetailServiceImpl.getService();
		
		TripDetailVO vo = new TripDetailVO();
		vo = service.tripDetailCheck(map);
		System.out.println("vo가 있나요?? 없으면 등록가능 있으면 등록 불가능" + vo);
		
		int result = 0;
		
		if(vo == null) {
			result = 1;    // 등록 가능
		}else {
			result = 0;     // 이미 등록된 일정
		}
		
		request.setAttribute("result", result);
		
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
		
	}

}
