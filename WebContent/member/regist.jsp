<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지 입니다.</title>
</head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@600&display=swap" rel="stylesheet">
	<script src="../js/jquery.serializejson.min.js"></script>
	<link rel="stylesheet" href="../css/basicStyle.css">
<script>
$(function() {
	
// 이메일 중복 확인 
	$('#MemIdCheck').on('click', function() {
		// 이메일 앞 부분 가져오기 
		emailId = $('#emailId').val().trim();
		
		// 이메일 @부터 가져오기 
		emailType =$('#emailtype option:selected').val()
		
		totalId = emailId + emailType;
		console.log(emailId, emailType, totalId)
		if(emailId.length < 1){
			alert('아이디를 다시 입력해주세요');
			return false;
		}
		
		$.ajax({
			url : '/ddit_MiddleProject/memIdCheck.do',
			type : 'get',
			data : { "id" : totalId }, 
			success : function(res){
				console.log(res.flag);
				$('.idCheckMsg').text(res.flag).css('color', 'green'); 		
			},
			error : function(xhr) {
				alert("상태 : " + xhr.status)
			},
			dataType :'json'
			
		})//ajax
		
	})
	
// 비밀번호 정규식 확인 
	$('#MemPwd').on('keyup', function() {
	
		//영문 소문자 대문자 숫자 특수문자 각각 반드시 한글자 이상씩 입력
		passvalue = $(this).val().trim();
		
		passreg = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*()_+-]).{8,20}$/; 
		
		//  .*?=[a-z]  =  ?=.*[a-z] // 이거 2개 같은거~
		
		if(!(passreg.test(passvalue))){
			//형식오류
			$(this).css('border', '2px solid red');	
			$(this).attr({
				    "data-container" : "body",
				    "data-toggle" : "popover",
				    "data-placement": "right",
				    'data-content' : "(문자, 숫자, 특수문자 포함 8~20글자)"
				    //data-container="body" data-toggle="popover" data-placement="right" data-content="Right popover"
			});
			$('[data-toggle="popover"]').popover('show');
		}else{
			$(this).css('border', '2px solid lightgreen');	
			$(this).attr({
				    'data-content' : "비밀번호 확인 완료"
			});
			$('[data-toggle="popover"]').popover('hide');
		}
	})
// 비밀번호 검사 이벤트
	$('#MemPwdCheck').on('keyup', function() {
		
		pwd = $('#MemPwd').val().trim();
		pwdCheck = $(this).val().trim();
		
		if(pwdCheck != pwd){
			$(this).css('border', '2px solid red');	
			$(this).attr({
				    "data-container" : "body",
				    "data-toggle" : "popover",
				    "data-placement": "right",
				    'data-content' : "비밀번호가 일치하지 않습니다"
				    //data-container="body" data-toggle="popover" data-placement="right" data-content="Right popover"
			});
			$('[data-toggle="popover"]').popover('show');
		}else{
			$(this).css('border', '2px solid lightgreen');	
			$(this).attr({
				    'data-content' : "비밀번호 확인 완료"
			});
			$('[data-toggle="popover"]').popover('hide');
		}
	})

// 등록하기 전송 이벤트 주기
	$('form').on('submit', function() {

		pwd = $('#MemPwd').val().trim();
		pwdCheck = $('#MemPwdCheck').val().trim();	
		
// 		alert(pwd + "??" + pwdCheck)
		if(pwd != pwdCheck){
			alert("비밀번호를 다시 입력해주세요 ");
			return false;
		}
		
		// 입력한 값 json으로 바꾸기
		vdata = $('form').serializeJSON();
		console.log(vdata);
		
		// 서버로 전송하기
		$.ajax({
			url :'/ddit_MiddleProject/regist.do', 
			type : 'post',
			data : vdata , 
			success : function(res) {
				if(res.flag == "성공")
// 				alert(res.flag);
				location.href= "../Main/main.jsp";
				
			},
			error : function(xhr) {
				alert(xhr.status);
			},
			dataType : 'json'
		})
	})
	
	
	
	$('#oneClick').on('click', function(){
		
		/* 이메일(id) */
		$('input[name="member_id1"]').attr('value', 'hong');
		
		/* 비밀번호 */
		$('input[name="member_password"]').attr('value', 'Aaaa123!');
		
		/* 비밀번호 확인 */
		$('input[name="member_passwordCheck"]').attr('value', 'Aaaa123!');
		
		/* 이름 */
		$('input[name="member_name"]').attr('value', '홍길동');
		
		/* 닉네임 */
		$('input[name="member_nickname"]').attr('value', '홍홍');
		
		/* 전화번호 */
		$('input[name="member_phone"]').attr('value', '010-1234-1234');
		
		/* 생일 */
		$('input[name="member_birth"]').attr('value', '1999-10-24');
		
		/* 취미 */
		$('input[name="member_hobby"]').attr('value', '독서');
		
		/* 주소 */
		$('input[name="member_addr"]').attr('value', '대전광역시 중구 오류동');
		
	})
	
	
	
	
	
})
</script>
<body>

<div class="container">
	<h2>회원 가입&nbsp;&nbsp;<input type="button" id="oneClick" class="btn btn-warning mb-2" value="push me!"></h2>
	<br>
    <p class="display-5">
       가입을 통해 더 많은 서비스를 만나보세요 !
       <br>
    </p>
	<form onSubmit="return false;">
	  <div class="form-column align-items-center">
<!-- 	  	이메일 아이디 입력란 -->
	  <div class="form-row form-group align-items-center">
		    <div class="col-auto">
		      <input type="text" class="form-control mb-2" id="emailId" name="member_id1" placeholder="이메일을 입력하세요" value="">
		    </div>
	<!-- 	    이메일 종류 선택란 -->
		    <div class="col-auto">
		      <div class="input-group mb-2">
	<!-- 	        <div class="input-group-prepend"> -->
		          <div class="input-group-text">@</div>
	<!-- 	        </div> -->
			      <ul class="nav nav-tabs justify-content-space-around">
				  	<li class="nav-item dropdown">
			 	 		<select class="form-control" name="member_id2" id="emailtype">
			     			<option value="@naver.com">naver.com</option>
			     			<option value="@gmail.com">gmail.com</option>
			   	 			<option value="@daum.net">daum.net</option>
					     	<option value="@kakao.com">kakao.com</option>
			  			</select>
				  	</li>
				  </ul>
		      </div>
		    </div>
		    <div class="col-auto">
		      <button type="button" id="MemIdCheck" class="btn btn-primary mb-2">중복확인</button>
		      
		    </div>
	    </div>
	    <span class="idCheckMsg"></span>

<!-- 	    비밀번호 -->
	    <div class="col-auto form-group">
	    	<label for="pwd">비밀번호</label>
	    	<input type="password" class="form-control" id="MemPwd" 
	    		placeholder="비밀번호를 입력하세요(문자, 숫자, 특수문자 포함 8~20글자)" name="member_password" value="" required>
	    </div>
	    <div class="col-auto form-group">
	    	<label for="password">비밀번호 확인</label>
	    	<input type="text" class="form-control" id="MemPwdCheck" placeholder="비밀번호 재입력" name="member_passwordCheck" value="" required>
			
	    </div>
	
<!-- 	    이름 -->
	    <div class="col-auto form-group">
	    	<label for="uname">이름</label>
	    	<input type="text" class="form-control" id="MemName" placeholder="이름" name="member_name" value="" required>
	    </div>
	    
<!-- 	    닉네임 -->
	    <div class="col-auto form-group">
	    	<label for="uname">닉네임</label>
	    	<input type="text" class="form-control" id="MemNickName" placeholder="닉네임" name="member_nickname" value="" required>
	    </div>
	    
<!-- 	    전화번호 -->
	    <div class="col-auto form-group">
	    	<label for="uhp">전화번호</label>
	    	<input type="text" class="form-control" id="MemHp" name="member_phone" placeholder="010-0000-0000" value="" required>
	    </div>
	    
<!-- 	    생일 -->
	  	<div class="col-auto form-group">
	    	<label for="ubir">생일</label>
	    	<input type="date" class="form-control" id="MemBir" name="member_birth" value="" required>
	  	</div>
	  	
<!-- 	    취미 -->
	  	<div class="col-auto form-group">
	    	<label for="uhp">취미</label>
	    	<input type="text" class="form-control" id="MemHobby" name="member_hobby" placeholder="" value="" required>
	  	</div>
	  	
<!-- 	    주소 -->
	  	<div class="col-auto form-group">
	    	<label for="uadd1">주소</label>
	    	<input type="text" class="form-control" id="MemAddr" name="member_addr" value="" required>
	  	</div>
	  	
 	
	  	
	  	<button type="submit" class="btn btn-primary" id="regist">가입하기</button>
	  </div>
	</form>
</div>
	
	
	
	
</body>
</html>