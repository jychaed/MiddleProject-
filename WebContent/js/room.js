/**
 * 
 */

initRoom = function() {
	
	xpoint = $('.xpoint').attr('id')
	ypoint = $('.ypoint').attr('id')
		
//	alert("xpoint좌표 : " +xpoint + "ypoint좌표 : " + ypoint)
	showMap(ypoint, xpoint);
}

// 숫자 콤마 찍는 함수
function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}

room_avgstar_update = function(){
	
	$.ajax({
        url: '/ddit_MiddleProject/RoomAvgstarUpdate.do',
        type: 'post',
        data: vo,
        success: function(res) {

            alert(" 숙소 평점 업데이트 : " + res.flag)
            location.reload();
        },
        error: function(xhr) {
            alert(xhr)
        },
        dataType: 'json'
    })
}


rooom_wish_button = function(member_id, roomcode) {
    $.ajax({

        url: '/ddit_MiddleProject/RoomCheckWish.do',
        type: 'post',
        data: {
            "member_id": member_id,
            "roomcode": roomcode
        },
        success: function(res) {
            //alert("버튼체크 성공이면 찜해있는거 :"+ res.flag )

            result = res.flag;
            if (result == "성공") {
                $('.wish').val("")
                $('.wish').val("찜하기취소")
                $('.wish').attr("class","btn btn-danger")
            } else {
                $('.wish').val("")
                $('.wish').val("찜하기")
                $('.wish').attr("class","btn btn-outline-danger")
	
            }
        },
        error: function(xhr) {
            alert(xhr.status)
        },
        dataType: 'json'
    })
}

// 찜하기
roomcheckWish = function(member_id, roomcode) {

    $.ajax({
        url: '/ddit_MiddleProject/RoomCheckWish.do',
        type: 'post',
        data: {
            "member_id": member_id,
            "roomcode": roomcode
        },
        success: function(res) {
            if (res.flag == "실패") {
                $.ajax({
                    url: '/ddit_MiddleProject/RoomWish.do',
                    type: 'post',
                    data: {
                        "roomcode": roomcode,
                        "member_id": member_id
                    },
                    success: function(res) {
                        $('.wish').val("")
                        $('.wish').val("찜하기취소")
                    },
                    error: function(xhr) {
                        alert(xhr.status)
                    },
                    dataType: 'json'
                })

            } else {
                $.ajax({
                    url: '/ddit_MiddleProject/room_wish_delete.do',
                    type: 'post',
                    data: {
                        "roomcode": roomcode,
                        "member_id": member_id
                    },
                    success: function(res) {
                        $('.wish').val("")
                        $('.wish').val("찜하기")
                    },
                    error: function(xhr) {
                        alert(xhr.status)
                    },
                    dataType: 'json'
                })
            }
        },
        error: function(xhr) {
            alert(xhr.status)
        },
        dataType: 'json'
    })
}


// 상세내용
room_selectOne = function(roomcode) {
    $.ajax({
        url: '/ddit_MiddleProject/RoomSelectOne.do',
        data: {
            "roomcode": roomcode
        },
        type: 'post',
        success: function(res) {
            detail = ` <div class = "roomTitle " style="display : flex ; flex-direction : row; justify-content: space-between; align-items: center;">
					<h1><p  class="name" id="${res.room_name}">${res.room_name}</p></h1> 
					
					</div><hr>
					<div class="roomInfo">
					<h4>숙소 정보</h4> 
					<br>
				<p class="avgstar" id="${res.room_avgstar}"> 숙소평점 : ${res.room_avgstar} 점</p>	
				<p class="city" id="${res.room_city}" style="display: none">지역 : ${res.room_city} </p>
				<p class="addr" id="${res.room_addr}">주소 : ${res.room_addr} </p>
				<p class="tel" id="${res.room_tel}">전화번호 : ${res.room_tel}</p>
				<p class="price" id="${res.room_price}">가격 : ${numberWithCommas(res.room_price)}원</p>
				</div>
				<hr>
				<img src="/ddit_MiddleProject/ImageView.do?placeCode=${roomcode}" style = "width : 300px; height : 300px; margin-bottom: 50px" class="card-img-top" alt="...">
				<br> <hr>  <br>
				           <span style="display:none;"> <p class="ypoint" id="${res.room_ypoint}" style="">위도 : ${res.room_ypoint}</p>
            <p class="xpoint" id="${res.room_xpoint}" style="">경도 : ${res.room_xpoint}</p>  </span>
				<div id="map" style="width:100%;height:350px;"></div>
				<hr>
				`;
            $('.detail').html(detail);
			
			initRoom();

        },
        error: function(xhr) {
            alert(xhr.status)
        },
        dataType: 'json'


    })
}

// 숙소 리스트뿌리기
listRoom =function(){
	$.ajax({
		
		url : '/ddit_MiddleProject/RoomList.do',
		type : 'get',
		success : function(res) {
			
			$('.dataBox').empty();
			code = "";
			code += ' <div class="row row-cols-1 row-cols-md-3 col-11">';
			$.each(res, function(i, v){
///ddit_MiddleProject/images/여행준비사진.jpg  => 바로 사진 경로
				code += '  <div class="col-md-4" style ="margin-bottom : 18px">'
				code += '	<div class="card h-100" id="'+v.id+'">'
				code += '	<img src="/ddit_MiddleProject/ImageView.do?placeCode=' + v.id+ '" width="200" height="140" class="card-img-top" alt="...">'
				code += '   <h3>'+v.name+'</h3> ';
				code += '     <div class="card-body" style="display : flex;flex-direction: column;justify-content: space-between;"> ';
				code += '      <div style = "height: 70px; margin-bottom:15%;"> <h4 class="card-title"><p> 별점 : '+v.avgstar+'</p></h4> ';
				code += '       <p class="card-text">'+ v.addr + '<br>'+  v.tel+'</p>  </div>';
                code += ' <form action="../Room/roomdetail.jsp" method="get" id = "">	'
                code += ' 	<input type="text"   name= "id" style ="display : none;"   value = "' + v.id + '">'
                code += ' 	<input type="submit"  style="width: 217.988636px;" value = "상세보기" class="btn btn-primary stretched-link " id="roomddetail"> '
                code += ' 		</form>'
				code += '     </div> ';
				code += '   </div> ';
				code += ' </div>';
							 
			})
			code +='</div>';
			$('.dataBox').html(code);	
			
		},
		error : function(xhr) {
			alert(xhr.status)
		},
		dataType : 'json'
    })
}


// 검색하면 나오는 결과
searchRoom = function(){
	
 		$.ajax({
			url : '/ddit_MiddleProject/RoomSearchCity.do',
			data: { "city" : search } ,
			type : 'get',
			success : function(res) {
				
			$('.dataBox').empty();
			code = "";
			code += ' <div class="row row-cols-1 row-cols-md-3 col-11">';
			$.each(res, function(i, v){
///ddit_MiddleProject/images/여행준비사진.jpg  => 바로 사진 경로
				code += '  <div class="col-md-4">'
				code += '	<div class="card h-100" id="'+v.room_code+'">'
				code += '	<img src="/ddit_MiddleProject/ImageView.do?placeCode=' + v.room_code+ '" width="200" height="140" class="card-img-top" alt="...">'
				code += '   <h3>'+v.room_name+'</h3> ';
				code += '     <div class="card-body"> ';
				code += '       <h4 class="card-title"><p> 별점 : '+v.room_avgstar+'</p></h4> ';
				code += '       <p class="card-text">'+ v.room_addr + '<br>'+  v.room_tel+'</p> ';
                code += ' <form action="../Room/roomdetail.jsp" method="get" id = "">	'
                code += ' 	<input type="text"   name= "id" style ="display : none;"   value = "' + v.room_code + '">'
                code += ' 	<input type="submit" value = "상세보기" class="btn btn-primary stretched-link ">'
                code += ' 		</form>'
				code += '		<span hidden id = "roomCode">'+v.room_code+'</span></a> ';
				code += '     </div> ';
				code += '   </div> ';
				code += ' </div>';
							 
			})
			code +='</div>';
			$('.dataBox').html(code);	
			},
			error : function(xhr) {
				alert("상태: " + xhr.status)
			},
			dataType : 'json'
			})
 		

}

// 숙소 정렬
sortRoom = function(colname){
	
 		$.ajax({
			url : '/ddit_MiddleProject/RoomSort.do',
			data: { "colname" : colname} ,
			type : 'get',
			success : function(res) {
				
						$('.dataBox').empty();
			code = "";
			code += ' <div class="row row-cols-1 row-cols-md-3 col-11">';
			$.each(res, function(i, v){
///ddit_MiddleProject/images/여행준비사진.jpg  => 바로 사진 경로
		code += '  <div class="col-md-4" style ="margin-bottom : 18px">'
				code += '	<div class="card h-100" id="'+v.id+'">'
				code += '	<img src="/ddit_MiddleProject/ImageView.do?placeCode=' + v.room_code+ '" width="200" height="140" class="card-img-top" alt="...">'
				code += '   <h3>'+v.room_name+'</h3> ';
				code += '     <div class="card-body" style="display : flex;flex-direction: column;justify-content: space-between;"> ';
				code += '      <div style = "height: 70px; margin-bottom:15%;"> <h4 class="card-title"><p> 별점 : '+v.room_avgstar+'</p></h4> ';
				code += '       <p class="card-text">'+ v.room_addr + '<br>'+  v.room_tel+'</p>  </div>';
                code += ' <form action="../Room/roomdetail.jsp" method="get" id = "">	'
                code += ' 	<input type="text"   name= "id" style ="display : none;"   value = "' + v.room_code + '">'
                code += ' 	<input type="submit"  style="width: 217.988636px;" value = "상세보기" class="btn btn-primary stretched-link " id="roomddetail"> '
                code += ' 		</form>'
				code += '     </div> ';
				code += '   </div> ';
				code += ' </div>';
							 
			})
			code +='</div>';
			$('.dataBox').html(code);	
				
			},
			error : function(xhr) {
				alert("상태: " + xhr.status)
			},
			dataType : 'json'
			})
 		

}