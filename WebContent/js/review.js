/**
 * 
 */

room_review_list =function(roomcode){
			$.ajax({
			
			url : '/ddit_MiddleProject/RoomReviewList.do',
			type : 'post',
			data: {"roomcode" : roomcode},
			success : function(res) {
				code = `<div id="accordion">`;
				$.each(res, function(i, v){
					
					
					code += `  <div class="card"> 
						    <div class="card-header">
						      <a class=" collapsed card-link" data-toggle="collapse" href="#${v.r_reviewno}">
						        작성자 :  ${v.member_nickname}   별점 : ${v.r_star}  작성일 : ${v.r_date}
						      </a>
						    </div>
						    <div id="${v.r_reviewno}" class="collapse" data-parent="#accordion">
						      <div class="card-body">
						        ${v.r_content}
						      </div>
						    </div>
						  </div>	 `
					
				})
				code += ` </div>`

				$('.dataBox').html(code);
				
			},
			error : function (){
				alert("오류")
			},
			dataType: 'json'
		
		})
	
}