package ddit.lounge.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.lounge.service.ILoungeService;
import ddit.lounge.service.LoungeServiceImpl;
import ddit.vo.LoungeVO;


@WebServlet("/LoungeImageView.do")
public class LoungeImageView extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int lounge_no = Integer.parseInt( request.getParameter("lounge_no") );
		System.out.println("lounge_no ::::" + lounge_no );
		
		LoungeVO vo = null;
		
		String fileName = null;
		ILoungeService service = LoungeServiceImpl.getInstance();
		
		vo = service.lounge_DetailOne(lounge_no);
		fileName = vo.getLounge_img();
		
		// 사진 없으면 대체 사진 출력하기
		if(fileName==null) {
			fileName = "noimage.jpg";   // 이거 조심해서할 것 !!!!!
			System.out.println("사진이름" + fileName);
		}	
			
//		String imagePath = "D:\\A_TeachingMaterial\\ddit_MiddleProject\\ddit_MiddleProject\\WebContent\\images\\uploadfiles";
		String imagePath = "D:\\A_TeachingMaterial\\05_JQuery\\ddit_MiddleProject\\WebContent\\images\\uploadfiles";
		String imageFilePath = imagePath + File.separator + fileName;
		System.out.println("사진경로" + imageFilePath);
		File file = new File(imageFilePath);
		
		File file2 = new File(imagePath + File.separator + "noimage.jpg");
		System.out.println("대체 사진 경로 존재 여부" + file2.exists());
		if (file.exists()) {
			// 출력용 스트림 객체 생성 ==> response객체 이용
			BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
			
			// 파일 입력용 스트림 객체 생성
			BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));
			
			byte[] buffer = new byte[1024];
			int len = -1;

			// byte배열을 이용해서 파일 내용을 읽어와 출력용 스트림 객체로 출력한다.
			while ((len = bis.read(buffer)) > 0 ) {
				bos.write(buffer, 0, len);
			}
			bos.flush();
			
		} 		
		
				
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
