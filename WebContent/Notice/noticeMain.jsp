<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src = "../js/notice.js"></script>


<style>

div{
/*  	border : 1px solid gray;  */
}
/* 공지사항 배경 */
/* #NoticeHead{
	background-color: lightblue;
	height : auto;
} */
#NoticeHead p{
	padding-top : 20px;
	padding-bottom: 5px;

}

/*  공지사항 밑에 내용 출력 부분 */
.noticeleft{
	display : inline-block;
}
.noticeSign{
	font-size : 2.0em;
	vertical-align: super;
	
}

.noticecontent{
	font-size : 1.0em;
	padding : 10px;
}


</style>





</head>

<body>
<%@ include file="../Main/headerPage.jsp" %>

<!-- 공지사항탭 누르면 맨 위 선택할 수 있는 부분 -->
<div class="container">
	<div class="col-md-12" id="NoticeHead">
		<p class="display-4">공지사항 </p>
	</div>

		<hr>
    <div class="col-md-11 row" style = "font-size : 20px;">
    		
	   <div class="col-sm-4"><a id="noticebtn" > 공지사항 </a></div>
	   <div class="col-sm-4"><a href="#">자주 묻는 질문</a></div>
	   <div class="col-sm-4"><a href="../Customercenter/customerCenterMain.jsp"> 1 : 1 문의하기 </a></div>
   </div>
   <hr>
</div>

<!-- 상세 정보 출력하는 container -->
<div class="container">
	 <ul class="notices">
	
	
		<li>
			<div class="col-md-10">
 				<div class="noticeAll"> </div> 
				<!-- <div class="noticeDate display-6">2022.10.15</div> -->
			 </div>
			 <!-- 
			<span class="noticeSign">></span>
			<hr> -->
		</li>
		
		<!-- 
		<li>
			<div class="col-md-10 noticeleft">
				<div class="noticeTitle">관광지 추가되었습니다. 2.0v </div>
				<div class="noticeDate display-6">2022.10.15</div>
			</div>
			<span class="noticeSign">></span>
			<hr>
		</li>
		
		
		<li>
			<div class="col-md-10 noticeleft">
				<div class="noticeTitle">관광지 추가되었습니다. 3.0v </div>
				<div class="noticeDate display-6">2022.10.15</div>
			</div>
			<span class="noticeSign">></span>
			<hr>
		</li>  -->
	
		
		
	</ul> 
	
<%if("admin".equals((String)session.getAttribute("SessionId"))){
%> 
<!-- 글쓰기 버튼 별도의 이벤트 없이 modal창 띄우기-->
<button class="btn btn-success" id="writebtn" type="button" data-toggle="modal" data-target="#wModal">글쓰기</button>
<br><br><br>
<%
} 
 %>	
	</div>
	
<!-- 공지사항 글쓰기 모달창 -->	
<!-- The Modal -->
<div class="modal" id="wModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">공지사항 작성</h4>
        <button type="button " class="close btn btn-primary" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <form id="wform">
                            
               <label>제목 </label>
               <input type="text" class="txt" name="notice_title"><br>
                           
               <label>내용 </label><br>
               <textarea rows="10"  class="txt" cols="50" name="notice_body"></textarea>
               <br>
               <input type="button" value="작성" id="wsend" class="btn btn-primary">
          </form>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>

	
<!-- 공지사항 글수정 모달창 -->	
<!-- The Modal -->
<div class="modal" id="uModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">공지사항 수정</h4>
        <button type="button" class="close btn btn-primary" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <form id="uform">
                            
               <label>제목 </label>
               <input id="unotice_title" type="text" class="txt" name="notice_title"><br>
                           
               <label>내용 </label><br>
               <textarea id="unotice_body" rows="10"  class="txt" cols="50" name="notice_body"></textarea>
               <br>
               <input type="button" value="수정" id="usend" class="btn btn-primary">
          </form>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>

	
<script>
	$(function(){
	vdiv = null;
	
	noticeListShow();
	})
	
	// 공지사항 누르면 공지사항 전체리스트 출력
	$('#noticebtn').on('click', function(){
		noticeListShow();
//		location.href="/ddit_MiddleProject/noticeListController.do"
	})
	
	
	
	// 공지사항 리스트에서 게시글 클릭시 해당 게시글 내용 출력
// 	$('.noticeTitle').on('click', function() {
// 		alert("안녕");
// 	})
	$(document).on('click', '.noticeleft', function() {
// 		indata = $(this).attr('id') //this == .noticeTitle
// 		getNoticeShow(indata, this); // (키,값) 넘겨주는?
				
// 		$('#wupdate').hide();		
// 		$('#wdelete').hide();

		$(".noticeBody").hide(); // 우선 모두 뿌린 리스트에서  내용을 숨김
		$(this).find(".noticeBody").show(); // 누르것만 내용이 나오게...!!!
		

	})
	
	// 공지사항에서 해당 게시글 수정
	$(document).on('click', '#wupdate', function() {
		
		// 그 제목과 내용을 끌어와서 담아줘야해 띄워주기전에
		$('#uModal').modal('show');

		// 수정할 모달창 틀을 띄워주고 - 모달창에 원래값을 띄워주고 
		vid = $(this).parent().siblings('.noticeTitle').attr('id');
		vtitle = $(this).parent().siblings('.noticeTitle').html();
		vbody = $(this).parent().find('.noticecontent').html();
		
		console.log(vid);
		console.log(vtitle);
		console.log(vbody);
		
		
		
		//가져온 값을 모달창에 먼저 뿌리기 
		$('#unotice_title').val(vtitle);
		$('#unotice_body').val(vbody)
				
		
	})
	
	
	//모달창에서 수정사항 적고! 수정 버튼 클릭하면 
	$('#usend').on('click', function(){
		
		//새로입력한 값을 가져온다 
		vtitle = $('#unotice_title').val();
		vbody = $('#unotice_body').val()
		
		updateServer();//  이걸 어떻게 넘기지 질문하기
		
		$('#uModal').modal('hide');
		noticeListShow();
		
	})
	
	// 공지사항에서 해당 게시글 삭제
	$(document).on('click', '#wdelete', function() {
		indata = $(this).parent().siblings('.noticeTitle').attr('id')
		console.log(indata)
		
		deleteServer(indata, this);
	})
	
	
	// 공지사항 리스트에 게시글 추가
	$('#wsend').on('click', function() {
		
		indata = $('#wform').serializeJSON();
		
		// 서버로 전송!
		writerServer();
		
		$('#wModal').modal('hide'); // 모달 나온거 전송하고 창 없애기
		
		// 다시 또열면 정보가 그대로 보여지니 모달 wform에 있는 text를 지워줘야함
		$('#wModal .txt').val("");
		
	})
	
	
	// 세션유지때문에 js안에 못넣음...
	noticeListShow = function(){
	$.ajax({
		url :'/ddit_MiddleProject/noticeListController.do',
		type :'post',
		success : function(res){
			//alert(res.notice_title);
			
			// 여기서 세션을 받아와???
			var SessionId = '<%=session.getAttribute("SessionId")%>';
			console.log(SessionId);
			
			code="";
//			code += "<ul class='notices'>";
			$.each(res, function(i,v){
//				alert(v.notice_title)
//				 code += '<li>'

				 code += '	<div class="col-md-10 noticeleft">';
				 code += '		<div class="noticeTitle" id ="'+v.notice_number+'" >' + v.notice_title + '</div>';
				 code += '		<div class="noticeDate display-6">' + v.notice_date + '</div>';
				 code += '      <div class="noticeBody" style="display:none;">'
				 code += '      <div class="noticecontent">'+ v.notice_body +'</div>';

				 if(SessionId =="admin") {
				 code += '      <button id="wupdate" type="button" class = "btn btn-primary"> 수정 </button>';
				 code += '      <button id="wdelete" type="button" class = "btn btn-danger"> 삭제 </button>';
			    	 
			     }
		
				 code += '      </div>';
				 code += '	</div>';
				 code += '	<span class="noticeSign"></span>';
				 code += '	<hr>';
//				 code += '</li>';

			})
//			code += '</ul>';
			
			$('.noticeAll').html(code); 
			
	
		},	
		error : function(xhr){
			alert("상태:"+ xhr.status);
		},
      	dataType : 'json'
	})// ajax
		
	
} //noticeListShow = function()


	
</script>	
	<%@ include file="../Main/footer.jsp" %>
	
	
</body>


</html>		
		
		
		