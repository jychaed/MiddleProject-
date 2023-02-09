/**
 * 
 */

loungedetail = function(loungeCode) {
	
	$.ajax({
		url  : '/ddit_MiddleProject/LoungeDetailController.do',
		type : 'post', 
		data : {"loungeCode" : loungeCode},
		success : function(res) {	
			//alert(res.title);
			
			$('#myModal .modal-body').empty();
			
			code = "";
			
			code += '<div class="container">'
 // 			code += '<h2>Basic Table</h2>'
 // 			code += '<p>The .table class adds basic styling (light padding and horizontal dividers) to a table:</p>'
			
			code += '<table class="table">                         '
			code += '	<tr>                                      '
			code += '		<th>제목</th>                          '
			code += '		<td>' +res.lounge_title + '</td>    '
			code += '	</tr>                                     '
			code += '	                                          '
			code += '	<tr>                                      '
			code += '		<th>조회수</th>                         '
			code += '		<td>' +res.lounge_viewcount + ' </td>'
			code += '	</tr>                                     '
			code += '	                                          '
			code += '	<tr>                                      '
			code += '		<th>날짜</th>                          '
			code += '		<td>' +res.lounge_date + ' </td>      '
			code += '	</tr>                                     '
			code += '	                                          '
			code += '	<tr>                                      '
			code += '		<th rowspan ="2">내용</th>             '
//			code += '		<td>' +res.lounge_img + ' </td>       '

			    code += '		<td>'
				code += '       <div class="card-title">';
				code += '         <img src="/ddit_MiddleProject/LoungeImageView.do?lounge_no='+ res.lounge_no +'" width="300" height="300" class="card-img-top" alt="..."> ';
				code += '			<div id="lounge_no" style="width:100%;height:100%;"></div> '
				code += '        </div> ';
				code += '       </td>'   
				
			code += '	</tr>                                     '
			code += '	                                          '
			code += '	<tr>                                      '
			code += '		<td>' +res.lounge_content + ' </td>   '
			code += '	</tr>                                     '
			code += '</table >	                                  '
			code += '</div>	                                  '
		
			


			$('#myModal .modal-body').html(code);
			
		},
		error : function(xhr) {
			alert(xhr.status);
		},
		dataType : 'json'	
	})
	
}

searchLounge = function(){
	$.ajax({
		
		
	})
	
}

loungeList = function() {

	$.ajax({
		url : '/ddit_MiddleProject/LoungeListController.do',
		type : 'get', 
		success : function(res) {		
		
			$('.contentArea').empty();
			
			code = "";
			
			code += "<div class='container'>";
			code += "<div class='row'>"
			$.each(res, function(i, v){
				code += '<div class="col-md-4">'
				code += ' <div class="card" style="display : flex;flex-direction: column;justify-content: space-between;">';
				code += '     	<img src="/ddit_MiddleProject/LoungeImageView.do?lounge_no='+ v.lounge_no +'" width="300" height="300" class="card-img-top" alt="..."> ';
				code += '    	<div class="card-body" style="display:flex;flex-direction: column;justify-content: space-between;"> ';
				code += '       	<div class="card-title" >';
				code += '  				<h3>'+v.lounge_title+'</h3> ';
				code += '   			<p> 날짜 : '+v.lounge_date+'</p> ';
				code += '        	</div> ';
				code += '       	<div class="card-text"style ="height:60px;">'+v.lounge_content+'</div> ';
				code += '       	<br><a  class="btn btn-primary stretched-link" data-toggle="modal" data-target="#myModal" onclick="loungedetail(\''+v.lounge_no+'\')">상세보기';
				code += '			<span hidden id = "loungeNo">'+v.lounge_no+'</span></a> ';
				code += '     	</div> ';
				code += '   </div> ';
				code += '</div> ';
							 
			})
				code += ' </div>';
				code += ' </div>';
			
			$('.contentArea').html(code);	
		},
		error : function(xhr) {
			alert(xhr.status);
		},
		dataType : 'json'	
	})
	
}