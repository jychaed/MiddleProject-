/**
 * 
 */
// 디테일 
tourListTest = function() {

	
	$.ajax({
		
		url : '/ddit_MiddleProject/TourList.do',
		type : 'get',
		async: false, 
		success : function(res) {		
		
			$('.dataBox').empty();
			code = "";
			code += "<div>";
			code += "<div class='tagvar'>";
			code += "<a class='tourname' name='tour_name'>이름순</a><a class='tourstar' name='tour_avgstar'>별점순</a>";
			code += "</div>";
			code += "</div>";
			
			code += ' <div class="row row-cols-1 row-cols-md-3 col-8">';
			$.each(res, function(i, v){
///ddit_MiddleProject/images/여행준비사진.jpg  => 바로 사진 경로
				code += '  <div class="col- mb-4">'
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