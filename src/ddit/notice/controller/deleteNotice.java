package ddit.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.notice.service.INoticeService;
import ddit.notice.service.NoticeServiceImpl;

/**
 * Servlet implementation class deleteNotice
 */
@WebServlet("/deleteNoticeController.do")
public class deleteNotice extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int notiNum = Integer.parseInt(request.getParameter("data"));
		
		INoticeService service = NoticeServiceImpl.getService();
		
		int res = service.deleteNotice(notiNum);
		
		request.setAttribute("result", res);
		
		request.getRequestDispatcher("Notice/result.jsp").forward(request, response);
		
	}

}
