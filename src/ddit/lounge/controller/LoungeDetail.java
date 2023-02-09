package ddit.lounge.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.lounge.service.ILoungeService;
import ddit.lounge.service.LoungeServiceImpl;
import ddit.vo.LoungeVO;


@WebServlet("/LoungeDetailController.do")
public class LoungeDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int loungeNo = Integer.parseInt( request.getParameter("loungeCode") );
		System.out.println("loungeNo :::::" + loungeNo);
		
		ILoungeService service = LoungeServiceImpl.getInstance();
		
		LoungeVO vo = service.lounge_DetailOne(loungeNo);
		
		System.out.println("LoungeVO vo:::::"+ vo);
		
		request.setAttribute("vo", vo);
		
		request.getRequestDispatcher("/Lounge/loungedetail.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
