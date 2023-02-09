<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<%@ include file="../Main/headerPage.jsp"%>
<script src="../js/member.js"></script>
<link rel="stylesheet" href="../css/starscore.css">
</head>
<style>
.listBox {
	display: flex;
	flex-direction: row;
	flex-basis: auto;
}

.filterList {
	flex-direction: column;
}

.filter {
	display: flex;
	flex-wrap: nowrap;
	border-right: 1px solid black;
}

.searchForm {
	display: flex;
	justify-content: flex-end;
}

.card {
	margin: 5px;
}

.member {
	display: flex;
	padding-top: 30px;
}
</style>

<script type="text/javascript">
<%//세션에서 회원아이디 가져오기  
String member_id = "";
if (session.getAttribute("SessionId") != null) {
	member_id = (String) session.getAttribute("SessionId");
}%>

var roomres_no = "";
$(function(){
	member_id = '<%=member_id%>';

		/*나의정보 보기 (마이페이지메인) */
		myinfo(member_id)
		/*필터 클릭시 마이페이지  */
		$('#myInfo').on('click', function() {
			$('.databox').empty();
			$('.databox2').empty();
			$('.databox3').empty();
			myinfo(member_id)
		})

		/*클릭 내여행조회  */

		$('#myTrip').on('click', function() {
			$('.databox').empty();
			$('.databox2').empty();
			$('.databox3').empty();
			mytrip_before(member_id)
			mytrip_after(member_id)
		})

		$('#myWish').on('click', function() {

			$('.databox').empty();
			$('.databox2').empty();
			$('.databox3').empty();
			mywish_room(member_id)
			mywish_tour(member_id)
			mywish_food(member_id)
		})
		
		
		
		
		/* 나의 예약조회 */
		$('#myRes').on('click', function() {
			$('.databox').empty();
			$('.databox2').empty();
			$('.databox3').empty();
			myRes(member_id)
			myResSoon(member_id)
			
			 

		})
		/* 나의 리뷰조회 */
		$('#myReview').on('click', function() {
			$('.databox').empty();
			$('.databox2').empty();
			$('.databox3').empty();
			myreview_tour(member_id)
			myreview_food(member_id)
			myreview_room(member_id)

		})
		
		/////////////////리뷰리뷰리뷰리뷸//////////////////////////////
		
		$('#staticBackdrop').on('show.bs.modal', function(e) {
		
			// 중복 검사   tour_review_check 메서드는 true와 false를 반환하는 메서드임 
			// 이미 리뷰를 작성했으면 true반환 리뷰를 작성하지 않았으면 false 반환
		if(room_review_check()){
			alert("이미 리뷰를 작성 하셨습니다.")
			$(e).modal('hide');				
		}else{

		
			
		}
	})
		
		
		
		$(document).on('click','.reviewInsertBtn', function() {
			
			check = $(this);	
			
			roomres_no = $(this).parents('.reviewBox').find('.roomres_no').text();
			
			if(room_review_check()){
				alert("이미 리뷰를 작성 하셨습니다.")
				$(e).modal('hide');	
			}else {
				
				$('#roomReviewComplete').on('click', function() {
					
					insertRoomReview(check);
					
				})			
				
			}

		})
				// 중복 검사   tour_review_check 메서드는 true와 false를 반환하는 메서드임 
				// 이미 리뷰를 작성했으면 true반환 리뷰를 작성하지 않았으면 false 반환
				
				
			
		
/////////////////////////////////////////////////////////////
		
		
		//회원탈퇴
		$('#memDelete').on('click', function() {
			memberDelete(member_id);
			//세션초기화넣어야하는디	

		})

		// 비밀번호 정규식 확인 
		$('#MemPwd')
				.on(
						'keyup',
						function() {

							//영문 소문자 대문자 숫자 특수문자 각각 반드시 한글자 이상씩 입력
							passvalue = $(this).val().trim();

							passreg = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*()_+-]).{8,20}$/;

							//  .*?=[a-z]  =  ?=.*[a-z] // 이거 2개 같은거~

							if (!(passreg.test(passvalue))) {
								//형식오류
								$(this).css('border', '2px solid red');
								$(this).attr({
									"data-container" : "body",
									"data-toggle" : "popover",
									"data-placement" : "right",
									'data-content' : "(문자, 숫자, 특수문자 포함 8~20글자)"
								//data-container="body" data-toggle="popover" data-placement="right" data-content="Right popover"
								});
								$('[data-toggle="popover"]').popover('show');
								return false;
							} else {
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

			if (pwdCheck != pwd) {
				$(this).css('border', '2px solid red');
				$(this).attr({
					"data-container" : "body",
					"data-toggle" : "popover",
					"data-placement" : "right",
					'data-content' : "비밀번호가 일치하지 않습니다"
				//data-container="body" data-toggle="popover" data-placement="right" data-content="Right popover"

				});
				$('[data-toggle="popover"]').popover('show');
				return false;
			} else {
				$(this).css('border', '2px solid lightgreen');
				$(this).attr({
					'data-content' : "비밀번호 확인 완료"
				});
				$('[data-toggle="popover"]').popover('hide');
			}
		})

		//비밀번호 변경버튼 클릭

		$('#updatePasswordStart').on('click', function() {
			member_password = $('#MemPwd').val();
			updatePass(member_id, member_password);

		})

		$(document).on('click', '#creatvo', function() {

			var vo = {
				"member_id" : member_id,
				"member_nickname" : $('#member_nickname').text().trim(),
				"member_phone" : $('#member_phone').text().trim(),
				"member_birth" : $('#member_birth').text().trim(),
				"member_hobby" : $('#member_hobby').text().trim(),
				"member_addr" : $('#member_addr').text().trim()

			}

			$('#nickname').val(vo.member_nickname)
			$('#phone').val(vo.member_phone)
			$('#birth').val(vo.member_birth)
			$('#hobby').val(vo.member_hobby)
			$('#addr').val(vo.member_addr)

		})
		$('#updateMyinfo').on('click', function() {
			var vo = {
				"member_id" : member_id,
				"member_nickname" : $('#nickname').val(),
				"member_phone" : $('#phone').val(),
				"member_birth" : $('#birth').val(),
				"member_hobby" : $('#hobby').val(),
				"member_addr" : $('#addr').val()

			}
			updateMyinfo(vo)
		})

		$(document).on('click', '#myRes', function() {
// 						alert($('#room_code').text().trim())
		
		

		
// 			$('#insertRoomReview').on('click',function(){
// 				$(this).value('등록완료')
// 			})

			roomres_no= $('#insertRoomReviewStart').parents().children('#roomres_no').text().trim()	
			var room_code = $('#room_code').text().trim()
			 $('#roomres_no').text().trim()
			roomname = $('#room_name').text().trim()
			$('#roomname').html(roomname + "  리뷰 등록 ");
		})
		
		//숙소리뷰 등록완료
// 		$('#roomReviewComplete').on('click',function(){
// 			vo = {
// 					"roomres_no"	:	$('#roomres_no').text().trim(),
// 					"r_content"		:	$('#r_content').val(),
// 					"r_star"		:	$('.r_star').val(),
// 					"r_pic"			:	$('#r_pic').val(),
// 					"member_id"		:	member_id
// 				}
// 					insertRoomReview(vo)
				
					
// 			})  
		
		

	}) //window.onload
</script>

<body>



	<div class="container member">
		<div class="col-2 filter">
			<ul class="nav nav-tabs filterList" style="display:flex;justify-content: flex-start;">
				<li class="nav-item"><a class="nav-link" id="myInfo" href="javascript:myinfo('<%=member_id%>');">나의 정보 </a></li>
				<li class="nav-item"><a class="nav-link" id="myTrip" href="javascript:void(0);">나의 여행 조회</a></li>
				<li class="nav-item"><a class="nav-link" id="myWish" href='javascript:void(0);'>찜리스트</a></li>
				<li class="nav-item"><a class="nav-link" id="myRes" href='javascript:void(0);'>예약 정보</a></li>
				<li class="nav-item"><a class="nav-link" id="myReview" href='javascript:void(0);'>내 리뷰보기</a></li>
			</ul>
		</div>

		<div class="col-10 datacontainer">
			<div class="col-15 databox"></div>
			<div class="col-15 databox2"></div>
			<div class="col-15 databox3"></div>
		</div>
	</div>



	<!-- 회원탈퇴 모달 -->
	<div class="modal" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">회원탈퇴</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">정말 탈퇴 하시겠습니까?</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal" id="memDelete">예</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">아니오</button>
				</div>

			</div>
		</div>
	</div>
	<!-- 비밀번호변경 모달-->
	<div class="modal" id="updatePassword">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">비밀번호변경</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="col-auto form-group">
					<label for="pwd">비밀번호</label> <input type="text" class="form-control" id="MemPwd" placeholder="비밀번호를 입력하세요(문자, 숫자, 특수문자 포함 8~20글자)" name="member_password" required>
				</div>
				<div class="col-auto form-group">
					<label for="text">비밀번호 확인</label> <input type="password" class="form-control" id="MemPwdCheck" placeholder="비밀번호 재입력" name="member_passwordCheck" required>

				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal" id="updatePasswordStart">변경</button>
					<button type="button" class="btn btn-secondary " data-dismiss="modal">돌아가기</button>
				</div>

			</div>
		</div>
	</div>
	<!-- 회원정보변경 모달-->
	<div class="modal" id="updateMy">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">회원정보 변경</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div>
					<div class="col-auto form-group">
						<label for="text">닉네임</label> <input type="text" class="form-control" id="nickname" placeholder="" value="" required>
					</div>
					<div class="col-auto form-group">
						<label for="text">전화번호</label> <input type="text" class="form-control" id="phone" placeholder="" value="" required>
					</div>
					<div class="col-auto form-group">
						<label for="text">생년월일</label> <input type="text" class="form-control" id="birth" placeholder="" value="" required>
					</div>
					<div class="col-auto form-group">
						<label for="text">취미</label> <input type="text" class="form-control" id="hobby" placeholder="" value="" required>
					</div>
					<div class="col-auto form-group">
						<label for="text">주소</label> <input type="text" class="form-control" id="addr" placeholder="" value="" required>
					</div>


				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal" id="updateMyinfo">변경</button>
					<button type="button" class="btn btn-secondary" data-dismiss="modal">돌아가기</button>
				</div>

			</div>
		</div>
	</div>
	<!-- 숙소리뷰 등록 모달-->
	<!-- #roomres_no#, #r_content#, #r_star#, '없음', sysdate, #member_id# -->
	<div class="modal" id="insertRoomReview">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h3 class="modal-title" id="roomname">리뷰 등록</h3>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

					

				<!-- Modal body -->
				<div>
					<div class="col-auto form-group">
						<form name="myform" id="myform" method="post" action="./save">
							<fieldset>
						        <legend>별점</legend>
						        <input type="radio" class="r_star" name="rating" value="5" id="rate1"><label for="rate1">⭐</label>
						        <input type="radio" class="r_star" name="rating" value="4" id="rate2"><label for="rate2">⭐</label>
						        <input type="radio" class="r_star" name="rating" value="3" id="rate3"><label for="rate3">⭐</label>
						        <input type="radio" class="r_star" name="rating" value="2" id="rate4"><label for="rate4">⭐</label>
						        <input type="radio" class="r_star" name="rating" value="1" id="rate5"><label for="rate5">⭐</label>
							</fieldset>
						</form>
					</div>

					<div class="col-auto form-group">
						<label for="text">내용</label> <input type="text" class="form-control" id="r_content" placeholder="내용을 입력해 주세요" value="" required>
					</div>
					<div class="col-auto form-group">
						<label for="text">사진</label> <input type="file" class="form-control" id="r_pic" placeholder="" value="" required>
					</div>


				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal" id="roomReviewComplete">등록</button>
					<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
				</div>

			</div>
		</div>
	</div>
<%@ include file="../Main/footer.jsp" %>




</body>
</html>