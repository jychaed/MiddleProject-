<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의사항</title>

<script src = "../js/cc.js"></script>

<style>
div{
/*  	border : 1px solid gray;  */
}
/* 문의사항 배경 */
#CCHead p{
	padding-top : 20px;
	padding-bottom: 5px;
}

/*  문의사항 밑에 내용 출력 부분 */
.ccleft{
	display : inline-block;
}
.ccSign{
	font-size : 2.0em;
	vertical-align: super;
	
}

.cc_content{
	font-size : 1.0em;
	padding : 10px;
}

.customercenterbtn{

}
</style>





</head>

<body>
<%@ include file="../Main/headerPage.jsp" %>

<!-- 공지사항탭 누르면 맨 위 선택할 수 있는 부분 -->
<div class="container">
	<div class="col-md-12" id="CCHead">
		<p class="display-4">1 : 1 문의하기</p>
	</div>
	<hr>
    <div class="col-md-11 row " style = " font-size : 20px;">
	   <div class="col-sm-4"><a href="../Notice/noticeMain.jsp"> 공지사항 </a></div>
	   <div class="col-sm-4"><a href="#">자주 묻는 질문</a></div>
	   <div class="col-sm-4"><a id="customercenterbtn" > 1 : 1 문의하기 </a></div>
   </div>
   <hr>
</div>

<!-- 상세 정보 출력하는 container -->
<div class="container">
	 <ul class="customercenters">
	
	
		<li>
			<div class="col-md-10">
 				<div class="ccAll"> </div> 
				
			 </div>
			
		</li>
		
		
		
	</ul> 

	
<%if(((String)session.getAttribute("SessionId")) != null){
%> 
<!-- 글쓰기 버튼 별도의 이벤트 없이 modal창 띄우기-->
<button class="btn btn-success" id="writebtn" type="button" data-toggle="modal" data-target="#wModal">글쓰기</button>
<br><br><br>
<%
} 
 %>	
	</div>
	
<!-- 문의사항 글쓰기 모달창 -->	
<!-- The Modal -->
<div class="modal" id="wModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">문의사항 작성</h4>
        <button type="button" class="close btn btn-primary" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <form id="wform">
        
               <select class="pick" name="cc_type" id="">
	     			<option value="숙소" >숙소</option>
	     			<option value="관광" >관광</option>
	     			<option value="맛집" >맛집</option>
	     			<option value="기타" >기타</option>
	  		   </select>
	  		   <br><hr>            
               <label>제목 </label>
               <input type="text" class="txt" name="cc_title"><br>
                           
               <label>내용 </label><br>
               <textarea rows="10"  class="txt" cols="50" name="cc_content"></textarea>
               <br>
               <input type="button" class = "btn btn-primary" value="작성" id="wsend">
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
	ccListShow();
	})
	
// 일대일 문의로 화면 변경하기
	// 1:1문의 누르면 1:1 문의 내역 리스트 출력 
	$('#customercenterbtn').on('click', function() {
		ccListShow();
	})
	
	// 문의사항 리스트에서 게시글 클릭시 해당 게시글 내용 출력
	$(document).on('click', '.ccleft', function() {
		$(".cc_content").hide(); // 우선 모두 뿌린 리스트에서  내용을 숨김
		$(this).find(".cc_content").show(); // 누르것만 내용이 나오게...!!!
	})
	
	// 문의사항 리스트에 게시글 추가
	$('#wsend').on('click', function() {
		
		indata = $('#wform').serializeJSON();
		console.log(indata) // 찍히면 value값 찍히는데 텍스트 찍히게 해야함..
		// 그리고 아 왜 업데이트안되냐...ㅠㅠ

		// 서버로 전송!
		writerServer();
		
		$('#wModal').modal('hide'); // 모달 나온거 전송하고 창 없애기
		
		// 다시 또열면 정보가 그대로 보여지니 모달 wform에 있는 text를 지워줘야함
		$('#wModal .txt').val("");
		
	})
	
	// 문의사항 게시글 클릭시 삭제
	$(document).on('click', '#wdelete', function() {
		indata = $(this).parent().siblings('.cc_title').attr('id')
		console.log(indata)
		
		deleteServer(indata, this);
	})
	
		// 세션유지때문에 js안에 못넣음...
	ccListShow = function(){
	$.ajax({
		url :'/ddit_MiddleProject/ccListController.do',
		type :'post',
		success : function(res){
			//alert(res);
			
//			// 여기서 세션을 받아와야함... 나중에
			var SessionId = '<%=session.getAttribute("SessionId")%>';
			console.log(SessionId);
			
			code="";

			$.each(res, function(i,v){


				 code += '	<div class="col-md-10 ccleft">';
				 code += '      <div class="cc_type">'+ v.cc_type +'</div>';
				 code += '		<div class="cc_title" id ="'+v.cc_no+'" >' + v.cc_title + '</div>';
				 code += '		<div class="cc_date display-6">' + v.cc_date + '</div>';
				 code += '      <div class="cc_content" style="display:none;">'
				 code += '      <div class="cc_content">'+ v.cc_content +'</div>';
		
				 if(SessionId != null) {
					 code += '      <button id="wupdate" type="button" class = "btn btn-primary"> 수정 </button>';
					 code += '      <button id="wdelete" type="button" class = "btn btn-danger"> 삭제 </button>';	 
				 }
				 
				 code += '      </div>';
				 code += '	</div>';
				 code += '	<span class="ccSign"></span>';
				 code += '	<hr>';


			})

			
			$('.ccAll').html(code); 
			
	
		},	
		error : function(xhr){
			alert("상태:"+ xhr.status);
		},
      	dataType : 'json'
	})// ajax
		
	
} //ccListShow = function()
	
	
</script>	
	
	
</body>
<%@ include file="../Main/footer.jsp" %>

</html>		
		
		
		