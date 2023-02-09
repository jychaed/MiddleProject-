<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/vendor.min.css">
    <!-- Main Template Styles-->
    <link id="mainStyles" rel="stylesheet" href="../css/styles.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    
    
<script>

$(function(){
	
	
	
	$("#idcheck").click(function(){
		
		a = $('#member_name').val()
		b = $('#member_phone').val()
		$.ajax({
			url : "/ddit_MiddleProject/FindId.do",
			type : "post",
			data : {"member_name" : a,  "member_phone" : b},
			success : function(res) {
				
				if(res.flag == "실패"){
					alert("입력하신 정보가 잘못됨");
				}else{
					
					alert(res.flag);
				}
				
				
			},
			dataType : 'json'
		})
	});
	
	
})


</script>
</head>
<body>
 <div class="offcanvas-wrapper">
      <!-- Page Title-->
      <div class="page-title">
        <div class="container">
          <div class="column">
            <h1>아이디찾기</h1>
          </div>
          <div class="column">
            <ul class="breadcrumbs">
              <li><a href="../Main/main.jsp">Home</a>
              </li>
             
            </ul>
          </div>
        </div>
      </div>
      <!-- Page Content-->
      <div class="container padding-bottom-3x mb-2">
        <div class="row justify-content-center">
          <div class="col-lg-8 col-md-10">
            <h2>아이디를 잃어버리셨다구요?</h2>
            <p>이름과 전화번호만 입력하면 찾을수 있다구요~?</p>
            <form class="card mt-4">
              <div class="card-body">
                <div class="form-group">
                  <label for="email-for-pass">이름</label>
                  <input class="form-control" type="text" id="member_name" required><small class="form-text text-muted">이름을 입력해주세요</small>
                  <label for="email-for-pass">전화번호</label>
                  <input class="form-control" type="text" id="member_phone" required><small class="form-text text-muted">전화번호를 입력해주세요</small>
                </div>
              </div>
              <div class="card-footer">
                <button class="btn btn-primary" id = "idcheck" type="button">확인</button>
              </div>
            </form>
          </div>
        </div>
        </div>
      </div>
</body>
</html>