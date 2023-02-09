<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>라운지메인</title>


<meta charset="UTF-8">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="../js/lounge.js"></script>
<link rel="stylesheet" href="../css/loungeMain.css"/>

<style type="text/css">
/* 이미지 높이고정 */
img {
  max-width: 100%;
  height: 250px;
}
</style>

<%@ include file="../Main/headerPage.jsp" %>
</head>

<body>
<script>
	
	
$(function() {
	
	str = "라운지";
	
	// 라운지 목록 출력
	loungeList(); 
	
	// 검색 버튼 눌렀을때 그에 맞는 결과 가져오기
	$('#searchbtn').on('click', function(){
		var search = $('#searchVal').val();
		searchLounge(search);
		// 실행 안됨 현재 20221021 14:01
	})

	// 라운지 글쓰기 버튼 클릭
		// 이부분은  여행기 글쓰기 버튼에! 효과를 줬음
		// <button class="btn btn-success" id="writebtn" type="button"  data-toggle="modal" data-target="#staticBackdrop"> 여행기 글쓰기 </button>
 		// data-toggle="modal" data-target="#staticBackdrop" 이거 target만 그 해당 모달과 연결해주면 됨!
 		// <!-- 글쓰기 모달 --> 이쪽의 id를  data-target 으로 걸어주면됨!
  		
 		
	// 라운지 글쓰기 작성 폼 전송 등록 // 아마 아이디 바꿔야할듯
	$('#loungeRegist').on('click', function() {
		// form데이터 객체 생성해서 map처럼 하나씩 추가해서 담기
	      var formData = new FormData();
	      formData.append("loungeTitle", $('input[name=loungeTitle]').val());
	      formData.append("loungeContent", $('textarea[name=loungeContent]').val());
	      formData.append("loungeImg", $("input[name=loungeImg]")[0].files[0]);
			
		//   loungeTitle  loungeContent  loungeImg  // 위의 3가지를 폼에서 적었으니 이걸 우선 폼에 담고 전송할 예정!!!!!
		$.ajax({
			url : '/ddit_MiddleProject/LoungeInsertController.do', // 자 만든 서블릿으로 가! 위의 폼 가지고!
			type : 'post',
	        data: formData,  // 내가 파일 보내는 형식타입!
 	        enctype: 'multipart/form-data', // 글쓰기 폼에서 적은거
           	processData:false,
           	contentType:false,
			success : function(res) {
				if("성공" == res.flag){
					//alert("여행기가 등록되었습니다!");
					//loungeList(); 아마 다시 라운지 화면 뿌린곳으로 보내줘야하나?
				}else{
					alert("심각 !! 등록이 불가!");
				}
				$('#staticBackdrop').modal('hide'); // 모달 나온거 전송하고 창 없애기
				$(".modal-backdrop").remove(); // 한페이지에 모달이 2개씩 실행되어서 2개씩 생겨서 레이어를 하나더 지워줘야함
// 				$('#staticBackdrop').modal('hide');
				loungeList(1); 
				
			},
			error : function(xhr) {
				alert(xhr.status);
			},
			dataType : 'json'
		});
		
// 		$(".modal-backdrop fade show").remove(); 
		
	});
	
})	


</script>
<!-- 검색부분 -->
<div class = "container fluid">
<div class="container search  " style=" padding-bottom: 15px;   padding-top: 15px; ">
    <form class="form-inline">
		<div class="col-md-2"><h3>&nbsp;&nbsp;&nbsp;&nbsp;라운지</h3></div>
		<div class="col-md-8 col-auto">
		   	<input class="form-control mr-2" type="search" placeholder="Search" aria-label="Search" id="searchVal">
		   	<input type="button" class="btn btn-outline-info" id="searchbtn" value="Search">
		</div>
		<div class="col-md-2">
	     <button class="btn btn-success" id="writebtn" type="button" data-toggle="modal" data-target="#staticBackdrop"> 여행기 글쓰기 </button>
			<br>
		</div>
	</form>
	<hr>
</div>

<!-- 상세정보 보기 모달 -->
<!-- The Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">상세보기</h4>
        <button type="button" class="close btn btn-primary" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        여기에 이제 내용을 출력해볼까
	<div class="다른거"> 여기도 ㄴ젛업졸까</div>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>
<!-- 상세정보 보기 모달 끝 -->


<!-- 글쓰기 모달 -->
<!-- 라운지 글쓰기 버튼 누를 때 드는 모달 form 등록 모달 -->
<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="staticBackdropLabel">여행기 등록</h3>
        <button type="button" class="close btn btn-primary" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
<!-- 모달 바디 내용 시작 -->      
      <div class="modal-body">
      
<!-- 폼 태그 시작 -->
      <form  enctype="multipart/form-data">
<!--  여행기 관련 내용 ㄱㄱ     -->
  <div class="form-group" >
    <label for="exampleFormControlInput1">제목</label>
    <input type="text" class="form-control" name = "loungeTitle" placeholder="제목을 작성하여 주세요">
  </div>
  
  <div class="form-group">
    <label for="exampleFormControlInput1">내용</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" name = "loungeContent" placeholder="자유롭게 여행기를 작성해보세요!"></textarea>
  </div>

   <div class="form-group">
    <label for="exampleFormControlFile1">사진 등록</label>
    <input type="file" class="form-control-file" id="exampleFormControlFile1" name = "loungeImg" >
  </div>
</form>
<!-- 폼태그 끝 -->
      </div>	
<!-- 모달 바디 내용 끝 -->  
     
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="loungeRegist">작성</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
      </div>
    </div>
  </div>
</div>
<!--  모달 끝  -->
<!-- 글쓰기 모달 끝 -->

<!-- 리스트 영역 뿌려주는 공간 -->
<div class="contentArea "></div>

</div>                                                                                                                                         
                                                                                                                                                            
</body>
<%@ include file="../Main/footer.jsp" %>
</html>
