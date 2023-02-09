/**
 * 
 */



/*숙소리뷰 작성 */

insertRoomReview = function(e){
		
		
		var formData = new FormData();
		    formData.append("r_content", $('#r_content').val());
		    formData.append("r_star", $('.r_star').val());
		    formData.append("r_pic", $('#r_pic').val());
		    formData.append("roomres_no",roomres_no);
		    formData.append("member_id", member_id);
	
	$.ajax({
        url: '/ddit_MiddleProject/RoomReviewInsert.do',
        type: 'post',
        data: formData,
		enctype: 'multipart/form-data',
        processData:false,
        contentType:false,
        success: function(res) {
			alert(res.flag)
			
			if(res.flag == "성공"){
				
				$(e).attr("disabled", true);
			}
//            alert(" 리뷰등록 : " + res.flag)
            //location.reload();
        },
        error: function(xhr) {
            alert(xhr)
        },
        dataType: 'json'
    })
}


updateMyinfo = function(vo) {
    $.ajax({
        url: '/ddit_MiddleProject/UpdateMyinfo.do',
        type: 'post',
        data: vo,
        success: function(res) {


            alert("회원정보 변경을 완료하였습니다. : " + res.flag)
            location.reload();
            myinfo(member_id)
        },
        error: function(xhr) {
            alert(xhr)
        },
        dataType: 'json'
    })
}


updatePass = function(member_id, member_password) {
    $.ajax({
        url: '/ddit_MiddleProject/UpdatePass.do',
        type: 'post',
        data: {
            "member_id": member_id,
            "member_password": member_password
        },
        success: function(res) {
            alert("비밀번호 변경 " + res.flag)
            if (res.flag == "성공") {
                alert("로그인 화면으로 돌아갑니다.")
                location.href = '/ddit_MiddleProject/member/logout.jsp'
                location.href = '/ddit_MiddleProject/member/login.jsp'
            }
        },
        error: function(xhr) {
            alert(xhr)
        },
        dataType: 'json'
    })
}


memberDelete = function(member_id) {
    $.ajax({
        url: '/ddit_MiddleProject/MemberDelete.do',
        type: 'post',
        data: {
            "member_id": member_id
        },
        success: function(res) {
            alert("회원정보삭제  " + res.flag)
            location.href = '/ddit_MiddleProject/Main/main.jsp'
            location.href = '/ddit_MiddleProject/member/logout.jsp'
        },
        error: function(xhr) {
            alert(xhr)
        },
        dataType: 'json'
    })

}

/* 날짜 포맷*/
function StringToDate(date, n) {
	let yyyy = date.substring(0, 4);
	let mm = date.substring(5, 7);
	let dd = date.substring(8, 10);
	mm = Number(mm) - 1;
    
	let stringNewDate = new Date(yyyy, mm, dd);
	stringNewDate.setDate(stringNewDate.getDate() + n);
    
	return stringNewDate.getFullYear() +
		"-" + ((stringNewDate.getMonth() + 1) > 9 ? (stringNewDate.getMonth() + 1).toString() : "0" + (stringNewDate.getMonth() + 1)) +
		"-" + (stringNewDate.getDate() > 9 ? stringNewDate.getDate().toString() : "0" + stringNewDate.getDate().toString());
}

/* 숙소 리뷰 */
myreview_room = function(member_id) {

    $.ajax({
        url: '/ddit_MiddleProject/MyReviewRoom.do',
        type: 'post',
        data: {
            "member_id": member_id
        },
        success: function(res) {
            code = `
					<div>
						<h3>숙소 리뷰</h3>
						<h5 style ="text-align: right;"> </h5>
						<div>
							<table class="table table-hover">
								<thead>
									<tr>
										<th scope="col">번호</th>
										<th scope="col">지역명 </th>
										<th scope="col">숙소이름</th>
										<th scope="col">별점</th>
										<th scope="col">작성일</th>
									</tr>
								</thead>
								</table>
							</div>
						</div>`

            code += `<div id="accordion">`;
            $.each(res, function(i, v) {

                code += `  <div class="card"> 
						    <div class="card-header">
						      <a class=" collapsed card-link" data-toggle="collapse" href="#rreview${i}">
						        <span style="margin-right: 127px;">  ${i}</span> 
							   <span style="margin-right: 155px;">  ${v.room_city}</span>
								<span style="margin-right: 190px;"> ${v.room_name} </span>
								<span style="margin-right: 100px;"style="margin-right: 127px;"> ${v.r_star}  </span>
								<span >  ${StringToDate(v.r_date, 5)} </span>
						      </a>
						    </div>
						    <div id="rreview${i}" class="collapse" data-parent="#accordion">
						      <div class="card-body">
						        ${v.r_content}
						      </div>
						    </div>
						  </div>	 `

            })
            code += ` </div>`
            $('.databox3').html(code);

        },
        dataType: 'json'

    })
}
/* 맛집리뷰 */
myreview_food = function(member_id) {

    $.ajax({
        url: '/ddit_MiddleProject/MyReviewFood.do',
        type: 'post',
        data: {
            "member_id": member_id
        },
        success: function(res) {
            code = `
					<div>
						<h3>맛집 리뷰</h3>
						<h5 style ="text-align: right;"> </h5>
						<div>
							<table class="table table-hover">
								<thead>
									<tr>
										<th scope="col">번호</th>
										<th scope="col">지역명 </th>
										<th scope="col">맛집이름</th>
										<th scope="col">별점</th>
										<th scope="col">작성일</th>
									</tr>
								</thead>
								</table>
							</div>
						</div>`

            code += `<div id="accordion">`;
            $.each(res, function(i, v) {

                code += ` <div class="card"> 
						    <div class="card-header">
						      <a class=" collapsed card-link" data-toggle="collapse" href="#rreview${i}">
						        <span style="margin-right: 127px;">  ${i}</span> 
							   <span style="margin-right: 155px;">  ${v.food_city}</span>
								<span style="margin-right: 190px;"> ${v.food_name} </span>
								<span style="margin-right: 100px;"style="margin-right: 127px;"> ${v.f_star}  </span>
								<span >  ${StringToDate(v.r_date, 5)} </span>
						      </a>
						    </div>
						    <div id="rreview${i}" class="collapse" data-parent="#accordion">
						      <div class="card-body">
						        ${v.f_content}
						      </div>
						    </div>
						  </div>	 `

            })
            code += ` </div>`
            $('.databox2').html(code);

        },
        dataType: 'json'

    })
}
/* 관광리뷰 */
myreview_tour = function(member_id) {

    $.ajax({
        url: '/ddit_MiddleProject/MyReviewTour.do',
        type: 'post',
        data: {
            "member_id": member_id
        },
        success: function(res) {
            code = `
					<div>
						<h3>관광지 리뷰</h3>
						<h5 style ="text-align: right;"> </h5>
						<div>
							<table class="table table-hover">
								<thead>
									<tr>
										<th scope="col">번호</th>
										<th scope="col">지역명 </th>
										<th scope="col">관광지명</th>
										<th scope="col">별점</th>
										<th scope="col">작성일</th>
									</tr>
								</thead>
								</table>
							</div>
						</div>`

            code += `<div id="accordion">`;
            $.each(res, function(i, v) {

                code += ` <div class="card"> 
						    <div class="card-header">
						      <a class=" collapsed card-link" data-toggle="collapse" href="#rreview${i}">
						        <span style="margin-right: 127px;">  ${i}</span> 
							   <span style="margin-right: 155px;">  ${v.tour_city}</span>
								<span style="margin-right: 190px;"> ${v.tour_name} </span>
								<span style="margin-right: 100px;"style="margin-right: 127px;"> ${v.t_star}  </span>
								<span >  ${StringToDate(v.t_date, 5)} </span>
						      </a>
						    </div>
						    <div id="rreview${i}" class="collapse" data-parent="#accordion">
						      <div class="card-body">
						        ${v.t_content}
						      </div>
						    </div>
						  </div>	 `

            })
            code += ` </div>`
            $('.databox').html(code);

        },
        dataType: 'json'

    })
}




/* 나의 예약정보 */
myResSoon = function(member_id) {
    $.ajax({
        url: '/ddit_MiddleProject/MyResrvationSoon.do',
        type: 'post',
        data: {
            "member_id": member_id
        },
        success: function(res) {

            code = `
					<div>
						<h3> 숙소 예약 정보</h3>
						<h5 style ="text-align: right;"> </h5>
						<div>
							<table class="table table-hover">
								<thead>
									<tr>
										<th scope="col">예약번호</th>
										<th scope="col">체크인날짜</th>
										<th scope="col">체크아웃날짜</th>
										<th scope="col">숙소이름</th>
										<th scope="col">지역</th>
										<th scope="col">주소</th>
										<th scope="col">전화번호</th>
									</tr>
								</thead>
								<tbody>
								`
            $.each(res, function(i, v) {
                code += `<tr>
									<th scope="row">${v.roomres_no}</th>
									<th scope="row">${StringToDate(v.roomres_start,5)}</th>
									<th scope="row">${StringToDate(v.roomres_end,5)}</th>
									<th scope="row">${v.room_name}</th>
									<th scope="row">${v.room_city}</th>
									<th scope="row">${v.room_addr}</th>
									<th scope="row">${v.room_tel}</th>
									</tr>`

            })

            code += `</tbody>					
								</table>
						<hr>
							</div>
						</div>
				`
            $('.databox').html(code);


        },
        dataType: 'json'

    })

}

room_review_check = function() {

	var result = false;
		$.ajax({
			
			url : '/ddit_MiddleProject/RoomReviewCheck.do',
			type : 'post',
			async: false,
			data : {"member_id" : member_id, "roomres_no" : roomres_no},
			success : function(res) {
				
				if(res.flag == "성공"){					
					result = false;
				}else{	
					result = true;
				}	
			},
			dataType : 'json'
			
		})
	return result;
}




/* 다녀온 숙소 정보 */
myRes = function(member_id) {
    $.ajax({
        url: '/ddit_MiddleProject/MyResrvation.do',
        type: 'post',
        data: {
            "member_id": member_id
        },
        success: function(res) {

            code = `
					<div>
						<h3>다녀온 숙소정보</h3>
						<h5 style ="text-align: right;"> </h5>
						<div>
							<table class="table table-hover">
								<thead>
									<tr>
										<th scope="col">예약번호</th>
										<th scope="col">체크인날짜</th>
										<th scope="col">체크아웃날짜</th>
										<th scope="col">숙소이름</th>
										<th scope="col">지역</th>
										<th scope="col">주소</th>
										<th scope="col">전화번호</th>
										<th scope="col">리뷰등록</th>
									</tr>
								</thead>
								<tbody>
								`
            $.each(res, function(i, v) {
					roomres_no = v.roomres_no;
					

                code += `<tr class="reviewBox">
									<th scope="row" class = "roomres_no">${v.roomres_no}</th>
									<th scope="row">${StringToDate(v.roomres_start,5)}</th>
									<th scope="row">${StringToDate(v.roomres_end,5)}</th>
									<th scope="row" id="room_name">${v.room_name}</th>
									<th scope="row">${v.room_city}</th>
									<th scope="row">${v.room_addr}</th>
									<th scope="row">${v.room_tel}</th>
									
									<th scope="row" style = "display:none;" id="room_code">${v.room_code}</th>`

										code+=	`<th scope="row"><input type="button" value="리뷰등록" class="btn btn-primary reviewInsertBtn" data-toggle="modal" data-target="#insertRoomReview"  ></th>
											</tr>`


            })

            code += `</tbody>					
								</table>
						<hr>
							</div>
						</div>
				`
            $('.databox2').html(code);


        },
        dataType: 'json'

    })

}


/*관광 찜리스트 */
mywish_food = function(member_id) {
    $.ajax({
        url: '/ddit_MiddleProject/MyWishFood.do',
        type: 'post',
        data: {
            "member_id": member_id
        },
        success: function(res) {
            code = `
					<div>
						<h3>맛집 찜리스트</h3>
						<h5 style ="text-align: right;"> </h5>
						<div>
							<table class="table table-hover">
								<thead>
									<tr>
										<th scope="col">번호</th>
										<th scope="col">식당명</th>
										<th scope="col">지역</th>
										<th scope="col">주소</th>
										<th scope="col">전화번호</th>
									</tr>
								</thead>
								</tbody>`

            $.each(res, function(i, v) {
                code += `<tr>
									<th scope="row">${i}</th>
									<th scope="row">${v.food_name}</th>
									<th scope="row">${v.food_city}</th>
									<th scope="row">${v.food_addr}</th>
									<th scope="row">${v.food_tel}</th>
								</tr>`
            })


            code += `					
								</table>
						<hr>
							</div>
						</div>
				`
            $('.databox3').html(code);

        },
        dataType: 'json'

    })

}
/*관광 찜리스트 */
mywish_tour = function(member_id) {
    $.ajax({
        url: '/ddit_MiddleProject/MyWishTour.do',
        type: 'post',
        data: {
            "member_id": member_id
        },
        success: function(res) {
            code = `
					<div>
						<h3>관광지 찜리스트</h3>
						<h5 style ="text-align: right;"> </h5>
						<div>
							<table class="table table-hover">
								<thead>
									<tr>
										<th scope="col">번호</th>
										<th scope="col">관광지명</th>
										<th scope="col">지역</th>
										<th scope="col">주소</th>
										<th scope="col">전화번호</th>
									</tr>
								</thead>
								</tbody>`

            $.each(res, function(i, v) {
                code += `<tr>
									<th scope="row">${i}</th>
									<th scope="row">${v.tour_name}</th>
									<th scope="row">${v.tour_city}</th>
									<th scope="row">${v.tour_addr}</th>
									<th scope="row">${v.tour_tel}</th>
								</tr>`
            })


            code += `					
								</table>
						<hr>
							</div>
						</div>
				`
            $('.databox2').html(code);

        },
        dataType: 'json'

    })

}
/*숙소 찜리스트 */
mywish_room = function(member_id) {
    $.ajax({
        url: '/ddit_MiddleProject/MyWishRoom.do',
        type: 'post',
        data: {
            "member_id": member_id
        },
        success: function(res) {
            code = `
					<div>
						<h3>숙소찜리스트</h3>
						<h5 style ="text-align: right;"> </h5>
						<div>
							<table class="table table-hover">
								<thead>
									<tr>
										<th scope="col">번호</th>
										<th scope="col">숙소이름</th>
										<th scope="col">지역</th>
										<th scope="col">주소</th>
										<th scope="col">전화번호</th>
									</tr>
								</thead>
								</tbody>`

            $.each(res, function(i, v) {
                code += `<tr>
									<th scope="row">${i}</th>
									<th scope="row">${v.room_name}</th>
									<th scope="row">${v.room_city}</th>
									<th scope="row">${v.room_addr}</th>
									<th scope="row">${v.room_tel}</th>
								</tr>`
            })


            code += `					
								</table>
						<hr>
							</div>
						</div>
				`
            $('.databox').html(code);

        },
        dataType: 'json'

    })

}




/* 지나간 내여행 조회*/
mytrip_after = function(member_id) {
    $.ajax({
        url: '/ddit_MiddleProject/MyTripAfter.do',
        type: 'post',
        data: {
            "member_id": member_id
        },
        success: function(res) {


            code = `
					<div>
						<h3>지나간 여행</h3>
						<hr>
						<h5 style ="text-align: right;">최근 순서대로 조회합니다 </h5>
						<div>
							<table class="table table-hover">
								<thead>
									<tr>
										<th scope="col">여행 번호</th>
										<th scope="col">출발 날짜</th>
										<th scope="col">종료 날짜</th>
										<th scope="col">지역</th>
										<th scope="col">인원</th>
									</tr>
								</thead>
								</tbody>`

            $.each(res, function(i, v) {
                code += `<tr>
									<th scope="row">${v.trip_no}</th>
									<th scope="row">${StringToDate(v.trip_start,5)}</th>
									<th scope="row">${StringToDate(v.trip_end,5)}</th>
									<th scope="row">${v.trip_city}</th>
									<th scope="row">${v.trip_people}</th>
								</tr>`
            })


            code += `					
								</table>
							</div>
						</div>
				`
            $('.databox2').html(code);

        },
        dataType: 'json'

    })

}




/* 다가오는 내여행 조회*/
mytrip_before = function(member_id) {

    $.ajax({
        url: '/ddit_MiddleProject/MyTripBefore.do',
        type: 'post',
        data: {
            "member_id": member_id
        },
        success: function(res) {

            code = `
					<div>
						<h3>다가오는 여행</h3>
						<hr>
						<h5 style ="text-align: right;">가까운 날짜 순으로 조회합니다 </h5>
						<div>
							<table class="table table-hover">
								<thead>
									<tr>
										<th scope="col">여행 번호</th>
										<th scope="col">출발 날짜</th>
										<th scope="col">종료 날짜</th>
										<th scope="col">지역</th>
										<th scope="col">인원</th>
									</tr>
								</thead>
								</tbody>`

            $.each(res, function(i, v) {
                code += `<tr>
									<th scope="row">${v.trip_no}</th>
									<th scope="row">${StringToDate(v.trip_start,5)}</th>
									<th scope="row">${StringToDate(v.trip_end,5)}</th>
									<th scope="row">${v.trip_city}</th>
									<th scope="row">${v.trip_people}</th>
								</tr>`
            })


            code += `					
								</table>
							</div>
						</div>
				`
            $('.databox').html(code);
        },
        dataType: 'json'

    })
}

myinfo = function(member_id) {
    $.ajax({
        url: '/ddit_MiddleProject/MyInfo.do',
        type: 'post',
        data: {
            "member_id": member_id
        },
        success: function(res) {


            code = `
			<div >
					<div class="col-md-4">
						<h3>마이페이지</h3>
						<h5> ${res[0].member_name} 님 (${res[0].member_id})</h5>
					</div>
				<hr>
				
				<div>
					<table class="table table-hover">
						<thead>
						</thead>
						<tbody>
							<tr>
								<th scope="col">이름</th>
								<th scope="row" id = "member_name">  ${res[0].member_name} </th>
							</tr>
							<tr>
								<th scope="col">닉네임</th>
								<th scope="col" id = "member_nickname">${res[0].member_nickname}</th>
							</tr>
							<tr>
								<th scope="col">비밀번호변경</th>
								<th scope="col">
								<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#updatePassword" id="">비밀번호변경</button>
								</th>
								
							</tr>
							<tr>
								<th scope="col">전화번호</th>
								<th scope="col" id = "member_phone">${res[0].member_phone}</th>
							</tr>
							<tr>
								<th scope="col">생년월일</th>
								<th scope="col" id = "member_birth">${res[0].member_birth}</th>
							</tr>
							<tr>
								<th scope="col">취미</th>
								<th scope="col" id = "member_hobby">${res[0].member_hobby}</th>
							</tr>
							<tr>
								<th scope="col">주소</th>
								<th scope="col" id = "member_addr">${res[0].member_addr}</th>
							</tr>
							
								
							<tr>
								<th scope= "col"></th>
								<th scope= "col"> 
									<button type="button" class="btn btn-primary" data-toggle="modal" id = "creatvo" data-target="#updateMy">회원정보변경</button>
									<button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#myModal">회원탈퇴</button>
									 
									
								</th>
							
							</tr>


						</tbody>
					</table>
				</div>
			</div>`




            $('.databox').html(code);

        },
        error: function(xhr) {
            alert(xhr.status)
        },
        dataType: 'json'

    })
}








