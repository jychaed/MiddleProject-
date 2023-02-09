/**
 * 
 */
init = function(a, b) {
	
	//리뷰 출력 메서드
	tour_review_list(b);
	
	//찜 확인 메서드
	tour_wish_check(a, b);
	
	
}

tour_review_update = function() {
	
			
	let fd = new FormData();
	    fd.append("t_star2", $('#placeType2').val());
	    fd.append("t_content2", $('textarea[name=t_content2]').val());
	    fd.append("member_id2", $('input[name=member_id2]').val());
	    fd.append("tour_code2", $('input[name=tour_code2]').val());
		fd.append("t_reviewno", reviewNo);
		tour_code = $('input[name=tour_code2]').val();
	
		$.ajax({
			
			url : '/ddit_MiddleProject/TourReviewUpdate.do',
			type : 'post',
			data : fd,
			enctype: 'multipart/form-data',
           	processData:false,
           	contentType:false,
			success : function(res) {
				$('.reviewBox').empty();
				tour_review_list(tour_code);
				$('#staticBackdrop2').modal('hide');
			},
			error : function(xhr){
				alert(xhr.status)
			},
			dataType : 'json'	
		})
	
}


tour_review_delete = function() {
	
	$.ajax({
		
		url : '/ddit_MiddleProject/TourReviewDelete.do',
		type : 'post',
		data : {'reviewNo' : reviewNo},
		success : function(res) {
			
			if(res.flag == "성공"){
				$('.reviewBox').empty();
				tour_review_list(tour_code);
			}else {
				alert('삭제실패');
			}
		
		},
		error : function(xhr) {
			alert(xhr.status)
		},
		dataType : 'json'
		
	})
}



tour_review_insert = function() {
	
				
				
	var formData = new FormData();
	    formData.append("t_star", $('#placeType option:selected').val());
	    formData.append("t_content", $('textarea[name=t_content]').val());
	    formData.append("member_id", $('input[name=member_id]').val());
	    formData.append("tour_code", $('input[name=tour_code]').val());
		tour_code = $('input[name=tour_code]').val();
		
		$.ajax({
				
			url : '/ddit_MiddleProject/TourReviewInsert.do',
			type : 'post',
			data : formData,
			enctype: 'multipart/form-data',
           	processData:false,
           	contentType:false,
			success : function(res) {
				
				$('.reviewBox').empty();
				tour_review_list(tour_code);
				$('#staticBackdrop').modal('hide');
				
			},
			error : function(xhr) {
				alert(xhr.status)
			},
			dataType : 'json'		
		})
		
		
		
}


tour_review_check = function() {

	var result = false;
		$.ajax({
			
			url : '/ddit_MiddleProject/TourReviewCheck.do',
			type : 'post',
			async: false,
			data : {"member_id" : member_id, "tour_code" : tour_code},
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


tour_wish_check = function(a, b) {

	member_id = a;	
	tour_code = b;
	$.ajax({
		
		url : '/ddit_MiddleProject/TourWishCheck.do',
		type : 'get',
		data : {"member_id" : member_id, "tour_code" : tour_code},
		success : function(res) {

			if("성공" == res.flag){
				$('.wish').css({'background' :  'red', 'color' : 'white'});
				$('.wish').attr('value', '찜취소');
			}else{
				$('.wish').css({'background' :  'white', 'color' : 'red'});

				$('.wish').attr('value', '찜하기');
			}
			
		},
		error : function(xhr) {
			alert(xhr.status)
		},
		dataType : 'json'
	})

}


// 관공 리뷰 리스트
tour_review_list = function(a) {
	
		var tour_code = a;
		$.ajax({
			
			url : '/ddit_MiddleProject/TourReviewList.do',
			type : 'post',
			data : {"tour_code" : tour_code},
			success : function(res) {
				$('.reviewBox').empty();
				code = " ";
				code +="<table border = '1' class= 'table table-hover'>";
				code += "<tr> <thead>"
						+"<th>작성자</th>"
						+"<th>내용</th>"
						+"<th>작성날짜</th>"
						+"<th>리뷰사진</th>"
						+"<th>리뷰별점</th>"
						+"<th hidden>리뷰번호</th>"
						+"<th hidden>숙소코드</th>"
						+"</tr> </thead>";
						
				if(res == null){
					code += "<td colspan='7'>리뷰가 없습니다. 리뷰를 작성해주세요</td>"					
				}else{
					$.each(res, function(i ,v){
						
						code += " <tbody> <tr class='replyDiv'>                     ";
						code += " 	<td><a class='replyId '>"+v.member_id+"</a>";
						code += "<div class='delUpbtn divOnOff'><input type='button' value='수정'  class='updateReply btn btn-primary' data-toggle='modal' data-target='#staticBackdrop2'><input type='button' value='삭제' class='deleteReply btn btn-danger'></div></td>"
						code += " 	<td>"+v.t_content+"</td>   ";
						code += " 	<td>"+v.t_date+"</td>      ";
						code += " 	<td>"+v.t_pic+"</td>       ";
						code += " 	<td hidden class='reviewNo'>"+v.t_reviewno+"</td>  ";
						code += " 	<td>"+v.t_star+"</td>      ";
						code += " 	<td hidden>"+v.tour_code+"</td>   ";
						code += " </tr>     </tbody>               ";					
					})
					
				}
				code += "</table>";	
				
				
				$('.reviewBox').html(code);
			},
			error : function(xhr) {
				alert(xhr.status)
			},
			dataType : 'json'
		})
	
}


tour_Check_Wish = function(memberId, tourCode) {
	
		$.ajax({		
			url : '/ddit_MiddleProject/TourCheckWish.do',
			type : 'post',
			data : {"memberId" : memberId,  "tourCode" : tourCode},
			success : function(res) {
					
				if(res.flag == "실패"){
					$.ajax({
			 			url : '/ddit_MiddleProject/TourWishInsert.do',
			 			type : 'post',
			 			data : {"tour_code" : tourCode, "member_id" : memberId},
			 			success : function(res) {
							tour_wish_check(memberId, tourCode);
			 			},
			 			error : function(xhr) {
			 				alert(xhr.status)
			 			},
			 			dataType : 'json'
			 		})		
							

				}else{ // 성공 했다는 말은 이미 있다는 말 그러므로 취소를 하겠 다는 말	
				
					$.ajax({
			 			url : '/ddit_MiddleProject/TourWishDelete.do',
			 			type : 'post',
			 			data : {"tour_code" : tourCode, "member_id" : memberId},
			 			success : function(res) {
							tour_wish_check(memberId, tourCode);
			 			},
			 			error : function(xhr) {
			 				alert(xhr.status)
			 			},
			 			dataType : 'json'
			 		})	
				
					
				}
			},
			error : function(xhr){
				alert(xhr.status)
			},
			dataType : 'json'
		})	
}

// 보여지는 데이터 정렬 dataList와 a태그 
sortDataList = function(sortType) {
	
		console.log(dataList);
		console.log(sortType);
		var stringType = JSON.stringify(dataList);
		console.log(stringType);
	
	$.ajax({
		url : '/ddit_MiddleProject/TourSort.do',
		type : 'post',
		data : {"dataList" : stringType, "sortType" : sortType},
		success : function(res) {
			
			
		},
		error : function(xhr) {
			alert(xhr.status)
		},
		dataType : 'json'	
	})
}

// 관광 검색 결과
searchTour = function(a) {

 		$.ajax({
			url : '/ddit_MiddleProject/TourSearch.do',
			data: { "search" : a } ,
			type : 'get',
			success : function(res) {
				$('.dataBox').empty();
				code = "";
				code += ' <div class="row row-cols-1 row-cols-md-3 col-11">';
				$.each(res, function(i, v){
					code += '  <div class="col-md-4">'
					code += '	<div class="card h-100">'
					code += '	<img src="/ddit_MiddleProject/ImageView.do?placeCode=' + v.tour_code + '" width="200" height="140" class="card-img-top" alt="...">'
					code += '   <h3>'+v.tour_name+'</h3> ';
					code += '     <div class="card-body"> ';
					code += '       <h4 class="card-title">'+v.tour_name+'<p> 별점 : '+v.tour_avgstar+'</p></h4> ';
					code += '       <p class="card-text">'+ v.tour_addr + '<br>'+  v.tour_tel+'</p> ';
					code += '       <a  class="btn btn-primary stretched-link" onclick="detailTour(this)">상세보기<span hidden id = "tourCode">'+v.tour_code+'</span></a> ';
					code += '     </div> ';
					code += '   </div> ';
					code += ' </div>';
							 
				})
				code +='</div>';
				$('.dataBox').html(code);	
			},
			dataType : 'json'
			})
}

selectOne = function(tourCode){
	

	$.ajax({
		url : '/ddit_MiddleProject/TourSelectOne.do',
		type : 'post',
		data : {'tourCode' : tourCode},
		success : function(res) {
			
			$('.dataBox').empty();
			
			code = "";
			code += res.tour_code;
			code += "<input id='rtbtn' type='button' value='돌아가기'>"
			
			$('.dataBox').html(code);
			
		},
		dataType : 'json'		
	})
}

// 여행 리스트
tourList = function() {

	
	$.ajax({
		
		url : '/ddit_MiddleProject/TourList.do',
		type : 'get',
		async: false, 
		success : function(res) {		
		
			$('.dataBox').empty();
			code = "";
			code += ' <div class="row row-cols-1 row-cols-md-3 col-11">';
			$.each(res, function(i, v){
///ddit_MiddleProject/images/여행준비사진.jpg  => 바로 사진 경로
				code += '  <div class="col-md-4" style ="margin-bottom : 18px">'
				code += '	<div class="card h-100">'
				code += '	<img src="/ddit_MiddleProject/ImageView.do?placeCode=' + v.tour_code + '" width="200" height="140" class="card-img-top" alt="...">'
				code += '   <h3>'+v.tour_name+'</h3> ';
				code += '     <div class="card-body" style = "display : flex;flex-direction: column;justify-content: space-between;"> ';
				code += '       <h4 class="card-title">'+v.tour_name+'<p> 별점 : '+v.tour_avgstar+'</p></h4> ';
				code += '       <p class="card-text">'+ v.tour_addr + '<br>'+  v.tour_tel+'</p> ';
				code += '       <a  class="btn btn-primary stretched-link" onclick="detailTour(this)">상세보기<span hidden id = "tourCode">'+v.tour_code+'</span></a> ';
				code += '     </div> ';
				code += '   </div> ';
				code += ' </div>';
							 
			})
			code +='</div>';
			$('.dataBox').html(code);	
		},
		dataType : 'json'	
	})
	
}
