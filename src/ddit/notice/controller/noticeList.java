package ddit.notice.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.notice.service.INoticeService;
import ddit.notice.service.NoticeServiceImpl;
import ddit.vo.NoticeVO;


@WebServlet("/noticeListController.do")
public class noticeList extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		// 1. service객체 얻어오기
		INoticeService service = NoticeServiceImpl.getService();
		
		// 2. service메소드 호출하기 - 결과값 받기
		List<NoticeVO> noticeList = service.noticeList();
		System.out.println(noticeList);
		
		// 3. request에 결과값 저장하기
		request.setAttribute("noticeList", noticeList);
		
		// 4. view페이지로 이동
		request.getRequestDispatcher("/Notice/noticeList.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
