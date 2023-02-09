/**
 * 
 */

updateServer = function(indata){
	$.ajax({
		url  :'/ddit_MiddleProject/updateNoticeController.do',
		type : 'post',
		data : {"vid" : vid , "vtitle" : vtitle , "vbody" : vbody }, 
		success : function(res){
			//alert(res.flag);
			
			// 성공시 화면 수정! 모달도 닫아야함...?
			
		},
		error : function(xhr){
			 alert("상태 : " + xhr.status);
     	},
      	dataType : 'json'
	})
	
}



deleteServer = function(indata){
	$.ajax({
		url  :'/ddit_MiddleProject/deleteNoticeController.do',
		type : 'post',
		data : {"data" : indata},
		success : function(res){
			//alert(res.flag);
			noticeListShow(1);
		},
		error : function(xhr){
			 alert("상태 : " + xhr.status);
     	},
      	dataType : 'json'
	})
	
}




/* 현재 사용 안해도 괜찮아서 삭제한 상태 ㅠㅠㅠ!!
getNoticeShow = function(indata, ele){
	$.ajax({
		url : '/ddit_MiddleProject/getNoticeController.do',
		type : 'post',
		data : {"data" :indata},
		success : function(res){
			//목록을 보여주니 여기서 내용을 찍어서 보여줘야할듯?
			
			// 이걸 여기서 어떻게 찍어줘야하지... 흠.... 
			// 20221018 우선 서블릿수정하고! 내용 담아서 우선 데려오고
			// 클릭했을때 그 해당하는 아이디값의 내용을 찍어줘야할듯 
			// 흠... 데이터를 어디서 담아다가 해줄지 다시 확인 
			// 아래 hello에는 해당 번호의 글내용을 나오도록 해야함
			//vdiv = "<div class='noticecontent'>hello</div>"
			
			
			
			$(ele).parents('.noticeAll').find('.noticecontent').remove();
		
	 		vdiv = "<div class='noticecontent'>"+ res.notice_body +"</div>";
		
			vdiv += " <button id='wupdate' type='button'> 수정 </button> ";
			vdiv += " <button id='wdelete' type='button'> 삭제 </button> ";

		
	 		noticeleft = $(ele).parent('.noticeleft')
			
			noticeleft.append(vdiv)

			
		},
		error : function(xhr){
			 alert("상태 : " + xhr.status);
     	},
      	dataType : 'json'
		
	})
}
*/ // 리스트에서 모든 값을 뿌리고 숨기는 것으로 변경...! 헐 이런 방법이 있다니
// 이렇게 하면 ajax를 한번더 돌지 않아도 됨!!!!!! 오마이갓... 20221018


writerServer = function(){
	$.ajax({
		url : '/ddit_MiddleProject/noticeWriterController.do',
		type : 'post',
		data : indata,
		success : function(res){
			//alert(res.flag);
			noticeListShow(1);
			
		},
		error : function(xhr){
			 alert("상태 : " + xhr.status);
     	},
      	dataType : 'json'
		
	})	
}



