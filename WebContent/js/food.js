/**
 * 
 */



// 초기화
init = function(a, b) {
	
	// 맛집 리뷰 리스트 출력
	foodReviewList(b);
	
	// 찜 확인
	food_wishCheck(a, b);

}




// 맛집 리스트 출력
foodList = function() {
	
	$.ajax({
		url : '/ddit_MiddleProject/FoodList.do',
		type : 'get',
		async: false, 
		success : function(res) {
			
			$('.contentArea').empty();
			
			code = "";
	
			code += ' <div class="row row-cols-1 row-cols-md-3 col-11">';

			$.each(res, function(i, v){

				code += '  <div class="col-md-4 " style ="margin-bottom : 18px">'
				code += '	<div class="card h-100">'
				code += '	<img src="/ddit_MiddleProject/ImageView.do?placeCode=' + v.food_code + '" width="200" height="140" class="card-img-top" alt="...">'
				code += '   <h3>'+v.food_name+'</h3> ';
				code += '     <div class="card-body " style="display : flex;flex-direction: column;justify-content: space-between;"> ';
				code += '       <h4 class="card-title">'+v.food_name+'<p> 별점 : '+v.food_avgstar+'</p></h4> ';
				code += '       <p class="card-text">'+ v.food_addr + '<br>'+  v.food_tel+'</p> ';
				code += '       <a  class="btn btn-primary stretched-link" onclick="detailFood(this)">상세보기<span hidden id = "food_code">'+v.food_code+'</span></a> ';
				code += '     </div> ';
				code += '   </div> ';
				code += ' </div>';
			
			})
			code +='</div>';
			$('.contentArea').html(code);

		},
		error : function(xhr) {
			alert(xhr.status);
		},
		dataType : 'json'
	})

	
}





// 맛집 이름 검색
searchFood = function(foodKeyword) {
//$(function(){	
	$('#searchBtn').on('click', function() {
		
		foodKeyword = $('#searchWord').val().trim();
		
		if(foodKeyword.length < 1) {
			alert("검색어를 입력하세요.");
			return false;
		}
				
			$.ajax({
					url : '/ddit_MiddleProject/FoodSearch.do',
					data : { "foodKeyword" : foodKeyword },
					type : 'get',
					success : function(res) {
						
						// empty or remove 선택해서 꼭 넣기
						$('.contentArea').empty();
						
						// 검색결과가 없을 때 안내 메시지 띄우기
//						if(res < 1) {
//							
//							$('.noResult').text("검색 결과가 없습니다.");
//							
//						}

							code = "";
							
							code += "<table><tr class='trbox'>";
							$.each(res, function(i, v){
								
								code += ' <td class=""><div> ';
								code += '   <h2>'+v.food_name+'</h2> ';
								code += '   <p> 별점 : '+v.food_avgstar+'</p> ';
								code += '   <div class="card" style="width:250px"> ';
								code += '    ';
								code += '     <div class="card-body"> ';
								code += '       <h4 class="card-title">'+v.food_addr+'</h4> ';
								code += '       <p class="card-text">'+v.food_tel+'</p> ';
								code += '       <a  class="btn btn-primary stretched-link" onclick="detailFood(this)">상세보기<span hidden id = "food_code">'+v.food_code+'</span></a> ';
								code += '     </div> ';
								code += '   </div> ';
								code += ' </div></td> ';
											 
								if(i % 3 == 2){
									if(i == 8){
										code +='</tr></table>';
									}					
									code += "</tr><tr class='trbox'>";
								}				
							})
				
							$('.contentArea').html(code);
					
					},
					error : function(xhr) {
						alert(xhr.status);
					},
					dataType : 'json'
					
				})  // ajax

		})  // onclick
}		
//});



// 맛집 리뷰 리스트 출력
foodReviewList = function(a) {
		
	var food_code = a;	
		
	$.ajax({
		url : '/ddit_MiddleProject/FoodReviewList.do',
		data : { "food_code" : food_code },
		type : 'post',
		success : function(res) {
//			console.log(res);
			
			code = "<hr> ";
			code +="<table border = '1'class ='table table-hover'>";
			code += "<tr><th hidden>f_reviewno</th>"
			code += "<th>작성자</th>"
			code += "<th>내용</th>"
			code += "<th>작성일</th>"
			code += "<th>첨부파일</th>"
			code += "<th>별점</th>"
			code += "<th>맛집 번호</th></tr>";
			
			$.each(res, function(i, v) {
				
					code += " <tr class='reviewDiv'>                     ";
					code += " 	<td><a class='reviewId '>"+v.member_id+"</a>";
					code += "		<div class='delUpbtn divOnOff'>"
					code += "			<input type='button' value='수정' class='updateReview btn btn-primary' data-toggle='modal' data-target='#staticBackdrop2'>"
					code += "			<input type='button' value='삭제' class='deleteReview btn btn-danger'>"
					code += "		</div>"
					code += "	</td>"
					code += " 	<td>"+v.f_content+"</td>   ";
					code += " 	<td>"+v.f_date+"</td>      ";
					code += " 	<td>"+v.f_pic+"</td>       ";
					code += " 	<td hidden class='reviewNo'>"+v.f_reviewno+"</td>  ";
					code += " 	<td>"+v.f_star+"</td>      ";
					code += " 	<td>"+v.food_code+"</td>   ";
					code += " </tr>                    ";	
							
			})
			code += "</table>";	
			
			$('.reviewBox').html(code);
			
		},
		error : function(xhr) {
			alert(xhr.status);
		},
		dataType : 'json'
	})  // ajax
	
	
}






// 맛집 찜하기
foodWish = function(member_id, food_code) {
	
	$.ajax({
		url : '/ddit_MiddleProject/FoodWish.do',
		data : { "member_id" : member_id, "food_code" : food_code},
		type : 'post',
		success : function(res) {
					
//			alert("성패여부 확인 = " + res.flag);
			
		if(res.flag == "실패"){
					
//				alert('찜')
				
			$.ajax({
	 			url : '/ddit_MiddleProject/FoodWishInsert.do',
	 			type : 'post',
	 			data : {"food_code" : food_code, "member_id" : member_id},
	 			success : function(res) {
		
//					alert("찜 완료")
					
					// 찜 버튼 상태 변경 
					foodWishCheck(member_id, food_code);
					
	 			},
	 			error : function(xhr) {
	 				alert(xhr.status)
	 			},
	 			dataType : 'json'
	 		})		
					
	
		} else { 
			
//			alert('찜 취소')		
		
			$.ajax({
	 			url : '/ddit_MiddleProject/FoodWishDelete.do',
	 			type : 'post',
	 			data : {"food_code" : food_code, "member_id" : member_id},
	 			success : function(res) {
		
//					alert("찜 취소 완료")
					
					// 찜 버튼 상태 변경 
					foodWishCheck(member_id, food_code);
					
	 			},
	 			error : function(xhr) {
	 				alert(xhr.status)
	 			},
	 			dataType : 'json'
	 		})	
		
		}  // else
		
		},
		error : function(xhr) {
			alert(xhr.status)
		},
		dataType : 'json'
	})  // ajax
	
	
}  // function




// 맛집 찜 확인
foodWishCheck = function(a, b) {
	
	member_id = a;
	food_code = b;
	
	$.ajax({
		url : '/ddit_MiddleProject/FoodWishCheck.do',
		type : 'get',
		data : {"member_id" : member_id, "food_code" : food_code},
		success : function(res) {
			
			if(res.flag == "성공") {
				
//				$('#wish').css('background', 'red');
				$('#wish').attr('value', '찜하기 취소');

			} else {
				
//				$('#wish').css('background', 'green');
				$('#wish').attr('value', '찜하기');
	
			}		
			
		},
		error : function(xhr) {
			alert(xhr.status);	
		},
		dataType : 'json'
	})  // ajax

}  // function






// 맛집 리뷰 쓰기
foodReviewInsert = function() {
	
	var formData = new FormData();
	    formData.append("f_star", $('#placeType option:selected').val());
	    formData.append("f_content", $('textarea[name=f_content]').val());
	    formData.append("member_id", $('input[name=member_id]').val());
	    formData.append("food_code", $('input[name=food_code]').val());
	    
		food_code = $('input[name=food_code]').val();
	
	$.ajax({
		url : '/ddit_MiddleProject/FoodReviewInsert.do',
		type : 'post',
		data : formData,
		enctype: 'multipart/form-data',
        processData: false,
        contentType: false,
		success : function(res) {
			
			$('.reviewBox').empty();
			
			foodReviewList(food_code);
			$('#staticBackdrop').modal('hide');
			
		},
		error : function(xhr) {
			alert(xhr.status);
		},
		dataType : 'json'
	})  // ajax
	
}  // function





// 맛집 리뷰 작성 자격 확인
foodReviewCheck = function() {
	
//	alert("지나갑니다")
	var result = false;
	
	$.ajax({
		url : '/ddit_MiddleProject/FoodReviewCheck.do',
		type : 'post',
		data : { "member_id" : member_id, "food_code" : food_code },
		async : false,
		success : function(res) {
			
//			alert(res.flag);
			
			if(res.flag == "성공") {
				result = false;
			} else {
				result = true;
			}
	
		},
		error : function(xhr) { 
			alert(xhr.status);
		},
		dataType : 'json'
	})  // ajax
	
	return result;
	
}  // function





// 맛집 리뷰 수정
food_reviewUpdate = function() {  // 파라미터로 reviewNo를 안 넣어도 되남?... ==>폼데이터로 가져와서 안 넣어도 되나 봄!
	
	var fd = new FormData();
		fd.append("f_star2", $('#placeType2').val());
		fd.append("f_content2", $('textarea[name=f_content2]').val());
		fd.append("member_id2", $('input[name=member_id2]').val());
		fd.append("food_code2", $('input[name=food_code2]').val());
		fd.append("f_reviewno", reviewNo);
		
		food_code = $('input[name=food_code2]').val();
		
		$.ajax({
			url : '/ddit_MiddleProject/FoodReviewUpdate.do',
			data : fd,
			type : 'post',
			enctype: 'multipart/form-data',
           	processData:false,
           	contentType:false,
			success : function(res) {
				
				$('.reviewBox').empty();
				
				foodReviewList(food_code);
				$('#staticBackdrop2').modal('hide');
				
				alert("리뷰 수정 완료!")
			},
			error : function(xhr) {
				alert(xhr.status);
			},
			dataType : 'json'
		})  // ajax

}  // function





//// 맛집 리뷰 삭제
food_reviewDelete = function(reviewNo) {  // 이거 reviewNo 빼 말어; ==>data에 입력해 주면 괄호 안엔 써도, 안 써도 ㅇㅋ인 듯!
	
	$.ajax({
		url : '/ddit_MiddleProject/FoodReviewDelete.do',
		type : 'post',
		data : { "reviewNo" : reviewNo },
		success : function(res) {
			
			if(res.flag == "성공") {  
				$('.reviewBox').empty();
				foodReviewList(food_code);
				
			} else {  
				alert('삭제 실패');
			}
			
		},
		error : function(xhr) {
			alert(xhr.status);
		},
		dataType : 'json'

	 }) // ajax	
	
}  // function


