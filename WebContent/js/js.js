/**
 * 
 */


// 회원검색
searchMemberList = function(){
   $.ajax({
      url : '/ddit_MiddleProject/memberList.do',
      data : {"search" : searchdata},
      type : 'get',
      success : function(res) {   
         $('tbody').empty();
         code = "";
         $.each(res, function(i, v){
            code = "<tr>"
                + "<th scope='row'>"+(i+1) +"</th>"
               + "<td>"+ v.member_name+"</td>"
               + "<td>"+ v.member_id+"</td>"
              + "<td>"+ v.member_password+"</td>"
               + '<td>button type="button" class="memberSetting btn btn-primary">상세보기</button></td>'
             + "</tr>"
             + "<tr style='display : none;'>"
                + "<th scope='row'>"+(i+1) +"</th>"
               + "<td colspan='5'> 전화번호 : "+ v.member_phone 
            + "<br>생일 : " + v.member_birth
            + "<br>주소 : " + v.member_addr
            + "<br>닉네임 : " + v.member_nickname            
            + "</td>"
            + "</tr>";
            
            $('tbody').html(code);
         })
      },
      error : function(xhr) {
         alert("회원검색 상태 " + xhr.status);
      },
      dataType : 'json'
   })
}


// 여행지관리 페이지 출력
placeManage = function(e){

   var tmp = 1;
   var count = 0;
   var max = 5;
   var rownum = 0;
   var rownum2 = 0;
   if(e == 1){
      rownum = 0;
   }else if(e == 2){
      rownum = 5;
      tmp = 16;
   }else if(e == 3){
      rownum = 10;
      tmp = 31;
   }else{
      rownum = 0;      
   }
   
   
   $.ajax({
      url : '/ddit_MiddleProject/AdminPlaceManage.do',
      type : 'get',
      success : function(res) {
         $('#ManageList').remove();   
         code = "   <div class='placeManage' id='ManageList' >"
            + '<form class="form-inline" onsubmit="return false;">'
         +'<div class="col-md-3"><h3> 여행지 관리</h3></div>'
         +'<div class="col-md-4">'
         +' <button class="btn btn-outline-info" data-toggle="modal" data-target="#staticBackdrop" type="button">여행지등록하기</button>&nbsp;      '
         +'</div>'
         +'<div class="col-md-5 searchForm">'
         +'               <ul class="nav nav-tabs justify-content-space-around">      '
         +'                 <li class="nav-item dropdown">      '
         +'                    <select class="form-control" name="placetype" id="placetype">      '
         +'                       <option value="food">맛집</option>      '
         +'                       <option value="room">숙소</option>      '
         +'                         <option value="tour">관광</option>      '
         +'                    </select>      '
         +'                 </li>      '
         +'              </ul>      '
         +'      <input class="form-control mr-2" name="searchText" placeholder="여행지 이름을 입력해 주세요" aria-label="Search">'
         +'      <button class="btn btn-outline-info" type="submit">Search</button>'
         +'</div>'
         +'</form>                               '
         +'<hr>                                  '
         +'<div>                                 '
         +'<table class="table table-hover">     '
         +'  <thead>                             '
         +'    <tr>                              '
         +'      <th scope="col" class="col-1">번호</th>   '
         +'      <th scope="col">여행지코드</th>       '
         +'      <th scope="col">여행지명</th>       '
         +'      <th scope="col">전화번호</th>     '
         +'      <th scope="col" class="col-2">도시</th>   '
         +'      <th scope="col">주소</th>   '
         +'      <th scope="col">관리</th>       '
         +'    </tr>                             '
         +'  </thead>                            '
         +'  <tbody>                          ';
         
         foodlist = res["foodlist"];
         roomlist = res["roomlist"];
         tourlist = res["tourlist"];
         
         
         $.each(foodlist, function(i, v){
            rownum2 ++;
            count ++;
            code += '<tr>'                                                                        
             code += '  <th scope="row">' + (tmp+i) + '</th>';                                             
             code += '  <td>' +foodlist[rownum2].food_code + '</td>';                        
             code += '  <td>' +foodlist[rownum2].food_name + '</td>';                                          
             code += '  <td>' +foodlist[rownum2].food_tel + '</td>';                                    
             code += '  <td>' +foodlist[rownum2].food_city + '</td>'   ;                                  
             code += '  <td>' +foodlist[rownum2].food_addr + '</td>' ;                                    
//             code += '  <td><button type="button" class="modify btn btn-primary">수정</button>&nbsp;';
            code += '<td><button type="button" class="delete btn btn-danger" style="width: 66px;">삭제</button>';
            code += '</td>';
             code += '</tr>';     
            if(count > 5 ){
               tmp = tmp + i;
               rownum2 = rownum;
               return false;
            }    
            
         
                                                              
         });
            
            count = 0;
         $.each(roomlist, function(i, v){
            rownum2 ++;
            count ++;
            code += '<tr>';                                                                        
             code += '  <th scope="row">' +(tmp+i) + '</th>';                                             
             code += '  <td>' +roomlist[rownum2].room_code + '</td>';                        
             code += '  <td>' +roomlist[rownum2].room_name + '</td>';                                          
             code += '  <td>' +roomlist[rownum2].room_tel + '</td>' ;                                    
             code += '  <td>' +roomlist[rownum2].room_city + '</td>' ;                                    
             code += '  <td>' +roomlist[rownum2].room_addr + '</td>'  ;                                   
//             code += '  <td><button type="button" class="modify btn btn-primary">수정</button>&nbsp;';
            code += '<td><button type="button" class="delete btn btn-danger" style="width: 66px;">삭제</button>';
            code += '</td>';
             code += '</tr>' ;   

                  if(count > 5 ){
               tmp = tmp + i;
               rownum2 = rownum;
               return false;
            }                                                         
            
            
            
         });
         count = 0;
         
         $.each(tourlist, function(i, v){
            rownum2 ++;
            count ++;
            code += '<tr>'   ;                                                                     
             code += '  <th scope="row">' +(tmp+i) + '</th>';                                             
             code += '  <td>' +tourlist[rownum2].tour_code + '</td>'        ;                
             code += '  <td>' +tourlist[rownum2].tour_name + '</td>'         ;                                 
             code += '  <td>' +tourlist[rownum2].tour_tel + '</td>'           ;                          
             code += '  <td>' +tourlist[rownum2].tour_city + '</td>'           ;                          
             code += '  <td>' +tourlist[rownum2].tour_addr + '</td>'            ;                         
//             code += '  <button type="button" class="modify btn btn-primary">수정</button>&nbsp;';
            code += '<td><button type="button" class="delete btn btn-danger" style="width: 66px;">삭제</button>';
            code += '</td>';
             code += '</tr>' ;    
                                                                  
            if(count > 5 ){
               return false;
            }
         });
         
         code += "<div style='text-align : center; padding-bottom : 16px;'><input type='button' class='btn btn-outline-secondary'value='<'> <input type='button' value='1' class=' btn btn-outline-secondary numbtn'> <input type='button' value='2' class='btn btn-outline-secondary numbtn'>  <input type='button' value='3'  class='btn btn-outline-secondary numbtn'><input class='btn btn-outline-secondary' type='button' value='>'></div>"
         console.log(code);
         $('.manageDetail').html(code);   
         
      },
      error : function(xhr) {
         alert(xhr.status);
      },
      dataType : 'json'
   })   
   
} // 여행지 페이지 함수 끝

// 여행지 검색
//번호   여행지코드   여행지명   전화번호   도시   주소   관리
searchPlaceList = function(){
   $.ajax({
      url : '/ddit_MiddleProject/AdminPlaceSearchList.do',
      data : {"searchText" : searchdata, "searchType" : placeType},
      type : 'get',
      success : function(res) {
         //alert("성공 " + res.type)
         type = res.type;   
         $('tbody').empty();
         code = "";
         switch(type){
         case "food" :
            //alert('음식')
            code = "";
            $.each(res.list, function(i, v){
               //console.log(res.list)
               code += "<tr>"
                   + "<th scope='row'>"+(i+1) +"</th>"
                  + "<td>"+ v.food_code+"</td>"
                  + "<td>"+ v.food_name+"</td>"
                 + "<td>"+ v.food_tel+"</td>"
                 + "<td>"+ v.food_city+"</td>"
                 + "<td>"+ v.food_addr+"</td>"
                + '  <td><button type="button" class="modify btn btn-primary">수정</button>&nbsp;'
               + '<button type="button" class="delete btn btn-danger">삭제</button>'
                + "</tr>";
            });
               //alert(code);
               $('tbody').html(code);
            break;
         case "tour" : 
            //alert('관광')
            code = "";
            $.each(res.list, function(i, v){
               //console.log(res.list)
               code += "<tr>"
                   + "<th scope='row'>"+(i+1) +"</th>"
                  + "<td>"+ v.tour_code+"</td>"
                  + "<td>"+ v.tour_name+"</td>"
                 + "<td>"+ v.tour_tel+"</td>"
                 + "<td>"+ v.tour_city+"</td>"
                 + "<td>"+ v.tour_addr+"</td>"
                + '  <td><button type="button" class="modify btn btn-primary">수정</button>&nbsp;'
               + '<button type="button" class="delete btn btn-danger">삭제</button>'
                + "</tr>";
            });
               //alert(code);
               $('tbody').html(code);
            break;
         case "room" : 
            //alert('숙소')
            code = "";
            $.each(res.list, function(i, v){
               //console.log(res.list)
               code += "<tr>"
                   + "<th scope='row'>"+(i+1) +"</th>"
                  + "<td>"+ v.room_code+"</td>"
                  + "<td>"+ v.room_name+"</td>"
                 + "<td>"+ v.room_tel+"</td>"
                 + "<td>"+ v.room_city+"</td>"
                 + "<td>"+ v.room_addr+"</td>"
                + '  <td><button type="button" class="modify btn btn-primary">수정</button>&nbsp;'
               + '<button type="button" class="delete btn btn-danger">삭제</button>'
                + "</tr>";
            });
               //alert(code);
               $('tbody').html(code);
            break;
         }
      },
      error : function(xhr) {
         alert("여행지검색 상태 " + xhr.status);
      },
      dataType : 'json'
   })
}


// 라운지 관리 페이지 출력
loungeManage = function(){
   $.ajax({
      url : '/ddit_MiddleProject/AdminLoungeManage.do',
      type : 'get',
      success : function(res) {
         $('#ManageList').remove();
         code = "   <div class='loungeManage' id='ManageList' >"
            + '<form class="form-inline" onsubmit="return false;">'
         +'<div class="col-md-3"><h3> 라운지 관리</h3></div>'
         +'<div class="col-md-4">'
         +'</div>'
         +'<div class="col-md-5 searchForm">'
         +'               <ul class="nav nav-tabs justify-content-space-around">      '
         +'                 <li class="nav-item dropdown">      '
         +'                    <select class="form-control" name="LoungeType" id="LoungeType">      '
         +'                       <option value="lounge_title">제목</option>      '
         +'                       <option value="member_Id">회원아이디</option>      '
         +'                         <option value="lounge_content">내용</option>      '
         +'                    </select>      '
         +'                 </li>      '
         +'              </ul>      '
         +'      <input class="form-control mr-2" name="searchText" placeholder="검색할 내용을 입력해주세요" aria-label="Search">'
         +'      <button class="btn btn-outline-info" type="submit">Search</button>'
         +'</div>'
         +'</form>                               '
         +'<hr>                                  '
         +'<div>                                 '
         +'<table class="table table-hover">     '
         +'  <thead>                             '
         +'    <tr>                              '
         +'      <th scope="col">번호</th>   '
         +'      <th scope="col">게시글 번호</th>   '
         +'      <th scope="col">회원 아이디</th>       '
         +'      <th scope="col">제목</th>       '
         +'      <th scope="col">작성날짜</th>     '
         +'      <th scope="col">조회수</th>   '
         +'      <th scope="col">관리</th>   '
         +'    </tr>                             '
         +'  </thead>                            '
         +'  <tbody>                          ';
         
         $.each(res, function(i, v){
            code += '<tr>'
                + '<th scope="row">'+(i+1) +'</th>'
               + '<td>'+ v.lounge_no+'</td>'
               + '<td>'+ v.member_id+'</td>'
               + '<td>'+ v.lounge_title+'</td>'
              + '<td>'+ v.lounge_date+'</td>'
              + '<td>'+ v.lounge_viewcount+'</td>'
               + '<td><button type="button" class="memberSetting btn btn-danger">삭제</button></td>'
             + '</tr>';

         })   
         
         $('.manageDetail').html(code);
      },
      error : function(xhr) {
         alert(xhr.status);
      },
      dataType : 'json'
   })   
}

searchLoungeList = function(){
      $.ajax({
      url : '/ddit_MiddleProject/AdminLoungeSearchList.do',
      data : {"searchText" : searchdata, "searchType" : loungeType},
      type : 'get',
      success : function(res) {
         $('tbody').empty();
         code = "";
         $.each(res, function(i, v){
            code += '<tr>'
                + '<th scope="row">'+(i+1) +'</th>'
               + '<td>'+ v.lounge_no+'</td>'
               + '<td>'+ v.member_id+'</td>'
               + '<td>'+ v.lounge_title+'</td>'
              + '<td>'+ v.lounge_date+'</td>'
              + '<td>'+ v.lounge_viewcount+'</td>'
               + '<td><button type="button" class="memberSetting btn btn-danger">삭제</button></td>'
             + '</tr>';
            
         })
         $('tbody').html(code);
      },
      error : function(xhr) {
         alert(xhr.status);
      },
      dataType : 'json'
   })   
}

searchCCList = function(){
      $.ajax({
      url : '/ddit_MiddleProject/AdminCcSearchList.do',
      data : {"searchText" : searchdata, "searchType" : ccType},
      type : 'get',
      success : function(res) {
         $('tbody').empty();
         code = "";
         $.each(res, function(i, v){
            code += '<tr>'
                + '<th scope="row">'+(i+1) +'</th>'
               + '<td>'+ v.cc_no+'</td>'
               + '<td>'+ v.member_id+'</td>'
               + '<td>'+ v.cc_title+'</td>'
              + '<td>'+ v.cc_date+'</td>'
              + '<td>'+ v.cc_type+'</td>'
              + '<td>'+ v.cc_status+'</td>'
               + '<td><button type="button" class="memberSetting btn btn-danger">삭제</button></td>'
             + '</tr>';
            
         })
         $('tbody').html(code);
      },
      error : function(xhr) {
         alert(xhr.status);
      },
      dataType : 'json'
   })      
}
CustomerCenterManage = function(){
   $.ajax({
      url : '/ddit_MiddleProject/ccListController.do',
      type : 'post',
      success : function(res) {
         $('#ManageList').remove();
         code = "   <div class='CustomerCenterManage' id='ManageList' >"
            + '<form class="form-inline" onsubmit="return false;">'
         +'<div class="col-md-3"><h3> 1:1 문의 관리</h3></div>'
         +'<div class="col-md-4">'
         +'</div>'
         +'<div class="col-md-5 searchForm">'
         +'               <ul class="nav nav-tabs justify-content-space-around">      '
         +'                 <li class="nav-item dropdown">      '
         +'                    <select class="form-control" name="ccType" id="ccType">      '
         +'                       <option value="숙소">숙소</option>      '
         +'                       <option value="맛집">맛집</option>      '
         +'                         <option value="관광">관광</option>      '
         +'                         <option value="기타">기타</option>      '
         +'                    </select>      '
         +'                 </li>      '
         +'              </ul>      '
         +'      <input class="form-control mr-2" name="searchText" placeholder="검색할 내용을 입력해주세요" aria-label="Search">'
         +'      <button class="btn btn-outline-info" type="submit">Search</button>'
         +'</div>'
         +'</form>                               '
         +'<hr>                                  '
         +'<div>                                 '
         +'<table class="table table-hover">     '
         +'  <thead>                             '
         +'    <tr>                              '
         +'      <th scope="col">번호</th>   '
         +'      <th scope="col">문의 번호</th>   '
         +'      <th scope="col">회원 아이디</th>       '
         +'      <th scope="col">문의 제목</th>       '
         +'      <th scope="col">문의 날짜</th>     '
         +'      <th scope="col">문의 종류</th>   '
         +'      <th scope="col">문의 상태</th>   '
         +'      <th scope="col">관리&nbsp;&nbsp;&nbsp;&nbsp;</th>   '
         +'    </tr>                             '
         +'  </thead>                            '
         +'  <tbody>                          ';
         
         
         $.each(res, function(i, v){
            code += '<tr>'
                + '<th scope="row">'+(i+1) +'</th>'
               + '<td>'+ v.cc_no+'</td>'
               + '<td>'+ v.member_id+'</td>'
               + '<td>'+ v.cc_title+'</td>'
              + '<td>'+ v.cc_date+'</td>'
              + '<td>'+ v.cc_type+'</td>'
              + '<td>'+ v.cc_status+'</td>'
               + '<td><button type="button" class="memberSetting btn btn-danger">삭제</button></td>'
             + '</tr>';
            
         })   
         
         $('.manageDetail').html(code);
      },
      error : function(xhr) {
         alert(xhr.status);
      },
      dataType : 'json'
   })      
}