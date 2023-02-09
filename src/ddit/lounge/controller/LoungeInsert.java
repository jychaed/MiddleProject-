package ddit.lounge.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import ddit.lounge.service.ILoungeService;
import ddit.lounge.service.LoungeServiceImpl;
import ddit.vo.LoungeVO;


@WebServlet("/LoungeInsertController.do")
@MultipartConfig(
		fileSizeThreshold = 1024 * 1024 * 10, 
		maxFileSize = 1024 * 1024 * 30,
		maxRequestSize = 1024 * 1024 * 100
	)
public class LoungeInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
//		String uploadPath = "D:\\A_TeachingMaterial\\ddit_MiddleProject\\ddit_MiddleProject\\WebContent\\images\\uploadfiles";
		HttpSession session  = request.getSession();
		String memberId = (String) session.getAttribute("SessionId");
		
		String uploadPath = "D:\\A_TeachingMaterial\\05_JQuery\\ddit_MiddleProject\\WebContent\\images\\uploadfiles";
		// 폴더 생성 없으면 	
		File fileUploadDir = new File(uploadPath);
		if (!fileUploadDir.exists()) {
			fileUploadDir.mkdirs();
		}
		System.out.println("폴더 있음");
		Part part = request.getPart("loungeImg");
		
		String savePhoto = null;
		String photo = "";
		if(part != null) {
			photo = extractFileName(part); //extractFileName 이거 아래 만들어줬음! 있어야지 됨!
			if(!"".equals(photo)) {
				try {
					savePhoto = UUID.randomUUID().toString();
					part.write(uploadPath + File.separator + savePhoto);
				}catch(IOException e) {
					savePhoto = null;
				}
			}
		}
		
		String loungeTitle = request.getParameter("loungeTitle"); // 여행기 제목
		String loungeContent = request.getParameter("loungeContent");  // 내용 
		System.out.println(loungeContent);
//		String loungeImg = request.getParameter("loungeImg");  // 이미지? 이건 어케 받지 위에서 함!
		
		ILoungeService service = LoungeServiceImpl.getInstance();
		
		LoungeVO vo = new LoungeVO();
		vo.setMember_id(memberId);
		vo.setLounge_title(loungeTitle);
		vo.setLounge_content(loungeContent);
		vo.setLounge_img(savePhoto);
		
		int result = -1;

		result = service.lounge_insert(vo);
		
		request.setAttribute("result", result);
		request.getRequestDispatcher("/Views/successCheck.jsp").forward(request, response);
		
	
	}

	private String extractFileName(Part part) {
		String fileName = ""; 
		String contentDisposition = part.getHeader("Content-Disposition");
		String[] items = contentDisposition.split(";");
		for (String item : items) {
			if (item.trim().startsWith("filename")) {
				fileName = item.substring(item.indexOf("=") + 2, item.length() - 1);
			}
		}
		return fileName;
	}
	
}
