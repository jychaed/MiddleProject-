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


@WebServlet("/getNoticeController.do")
public class getNotice extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int notiNum = Integer.parseInt(request.getParameter("data"));
		
		INoticeService service = NoticeServiceImpl.getService();
		
		NoticeVO noticeVo = service.getNotice(notiNum);
		
		request.setAttribute("noticedetail", noticeVo);
		request.getRequestDispatcher("/Notice/noticeDetail.jsp").forward(request, response);
		
		
	}

}
