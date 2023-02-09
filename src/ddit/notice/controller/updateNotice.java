package ddit.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.notice.service.INoticeService;
import ddit.notice.service.NoticeServiceImpl;
import ddit.vo.NoticeVO;

@WebServlet("/updateNoticeController.do")
public class updateNotice extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		// 0. 클라이언트 전송시 값을 받는다
		// vo 에 있는 것!
		int notiNum = Integer.parseInt(request.getParameter("vid"));
		String title = request.getParameter("vtitle");
		String body = request.getParameter("vbody");
		
		
		NoticeVO vo = new NoticeVO();
		vo.setNotice_number(notiNum);
		vo.setNotice_title(title);
		vo.setNotice_body(body);
		// 1. service 객체를 얻는다.
		INoticeService service = NoticeServiceImpl.getService();
	
		// 2. service메소드 호출 - 결과값 얻기
		int res = service.updateNotice(vo);
		System.out.println("res : "+ res);
		// 3. request에 결과값을 저장
		request.setAttribute("result", res);
		
		// 4. 결과값 출력 - view페이지로 이동
		request.getRequestDispatcher("Notice/result.jsp").forward(request, response);
		
	}

}
