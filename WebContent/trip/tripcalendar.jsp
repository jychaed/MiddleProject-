<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <style>
  	.tripCircle{
  		display : flex;
  		flex-direction: row;
  	}

  </style>
<%@ include file="../Main/headerPage.jsp"%>
  <script src="../js/jquery.serializejson.min.js"></script>
  <script>
  $(function() {
  $('form').on('submit', function() {
		
		// 입력한 값 json으로 바꾸기
		vdata = $('form').serializeJSON();
		console.log(vdata);
		
		// 서버로 전송하기
		$.ajax({
			url :'/ddit_MiddleProject/Tripinsert.do', 
			type : 'Get',
			data : vdata , 
			success : function(res) {
				if(res.flag == "성공")
				//alert(res.flag);
				location.href= "../Main/main.jsp";
				
			},
			error : function(xhr) {
				alert(xhr.status);
			},
			dataType : 'json'
		})
	})
  })
  </script>
</head>
<title>Insert title here</title>
</head>
<body>

<!-- 	<div class="container tripCircle">
	<figure>
  <img src="../images/jeju.png" class="rounded-circle" alt="Cinque Terre" width="304" height="236"> 
  <p>지주도</p>
  </figure>       
  <figure>
  <img src="../images/Gangwondo.png" class="rounded-circle" alt="Cinque Terre" width="304" height="236"> 
  <p>강원도</p> 
  </figure>     
  <figure>
  <img src="../images/domestic.png" class="rounded-circle" alt="Cinque Terre" width="304" height="236"> 
  <p>국내여행</p>            
  </figure>
</div>
 -->

<br>
<br>
<br>
<div class="container" style="width:500px;">
	<h2>여행 일정을 등록해주세요 </h2><br>
    <p class="display-5" >
      
       <br>
    </p>
    
	<form onSubmit="return false;" >
	  <div class="form-column align-items-center">
		<%if(session.getAttribute("SessionId") != null){
			request.setAttribute("mem_id", session.getAttribute("SessionId"));
		}	
		%>
	 
	    <div class="col-auto form-group">
	    	<label for="title">여행제목</label>
	    	<input type="text" class="form-control" id="trip_title"  name="trip_title"  placeholder="이번여행의 이름을 지어주세요 (예:중프끝나고 떠나조)" required>
	    </div>
	
	  	<div class="col-auto form-group">
	    	<label for="ubir">여행시작</label>
	    	<input type="date" class="form-control" id="trip_start" name="trip_start" required>
	  	</div>
	  	
	  	<div class="col-auto form-group">
	    	<label for="ubir">여행종료</label>
	    	<input type="date" class="form-control" id="trip_end" name="trip_end" required>
	  	</div>
	  	
	     <div class="col-auto">
		      <div class="input-group mb-2">
		          <div class="input-group-text">여행지역</div>
			      <ul class="nav nav-tabs justify-content-space-around">
				  	<li class="nav-item dropdown">
			 	 		<select class="form-control" name="trip_city" id="trip_city">
			     			<option value="seoul">서울</option>
			     			<option value="gangwon">강원도</option>
			   	 			<option value="dajeon">대전</option>
					     	<option value="mokpo">목포</option>
					     	<option value="busan">부산</option>
					     	<option value="jeju">제주</option>
			  			</select>
				  	</li>
				  </ul>
		      </div>
		    </div>
	    
<!-- 	    닉네임 -->
	    <div class="col-auto form-group">
	    	<label for="uname">여행인원</label>
	    	<input type="text" class="form-control" id="trip_people" placeholder="여행인원을 입력해주세요" name="trip_people" required>
	    </div>
		<div style="display:flex;align-items: center;flex-direction: column;">
	  	<button type="submit" class="btn btn-primary" id="insert_Trip">등록하기</button>
	  	</div>	  	
	  </div>
	</form>
</div>

<%@ include file="../Main/footer.jsp" %>





</body>
</html>