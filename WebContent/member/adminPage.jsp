   <%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="ddit.member.service.MemberServiceImpl"%>
<%@page import="ddit.member.service.IMemberService"%>
<%@page import="ddit.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리하기</title>
<%@ include file="../Main/headerPage.jsp" %>
</head>
<style>
.search{
   padding : 50px 0px;
}
.search form{
   flex-shrink: 0;
}
.listBox{
   display : flex;
   flex-direction: row;
   flex-basis: auto;
}
.filterList{
   flex-direction: column;
}
.filter{
   flex-wrap: nowrap;
   border-right: 1px solid black;
}
.searchForm{
   display: flex;
   justify-content: flex-end;
}
.manage{
   display : flex;
   padding-top: 30px;
}
.card{
    margin : 5px;

}
.hiddenRow {
    padding: 0 ;
}
</style>

<script>
$(function(){
   
   $("#memberManage").on("click", function(){
      //alert('이동')
      location.href = "<%=request.getContextPath() %>/AdminPage.do";
   });   

// 검색 하는 버튼 - 회원검색, 
   $(document).on('submit', '.form-inline',  function() {
      
      chooseInput = $('form input[name=searchText]');
      searchdata =  chooseInput.val();
      
//       $('form input[name=searchText]').parents('.manageDetail').find('.memberManage')
//       $('form input[name=searchText]').parents('.manage').find('.memberManage').length

      if(chooseInput.parents('.manageDetail').find('.memberManage').length){
         //alert('회원관리')
         searchMemberList();
      }else if(chooseInput.parents('.manageDetail').find('.placeManage').length){
         //alert('여행지관리')
         placeType = $('#placetype option:selected').val();
//          alert(placeType)
         searchPlaceList();
      }else if(chooseInput.parents('.manageDetail').find('.loungeManage').length){
         // 제목별, 아이디별, 내용별  // 검색할 내용
         // lounge_title, member_id lounge_content
         loungeType = $('#LoungeType option:selected').val();
         searchLoungeList();
      }else if(chooseInput.parents('.manageDetail').find('.CustomerCenterManage').length){
         ccType = $('#ccType option:selected').val();
         searchCCList();
         
      }
      
   });
   


      // 이상한 페이징 
      $(document).on('click', '.numbtn', function(){
            a = $(this).val()
            if(a == 1){
               placeManage(1);
            }else if(a == 2){
               placeManage(2);
            }else if(a == 3){
               placeManage(3);
            }

      })
      

   
   // 여행지 관리
   $('#placeManage').on('click', function() {
      placeManage(1);
      
   });

   // 여행지 등록
   $('#placeRegist').on('click', function() {
         var formData = new FormData();
         formData.append("placeType", $('#placeType option:selected').val());
         formData.append("placeId", $('input[name=placeId]').val());
         formData.append("placeTel", $('input[name=placeTel]').val());
         formData.append("placeCity", $('input[name=city]').val());
         formData.append("placeAddr", $('input[name=roadAddress]').val());
         formData.append("roomPrice", $('input[name=roomPrice]').val());
         formData.append("ypoint", $('input[name=ypoint]').val());
         formData.append("xpoint", $('input[name=xpoint]').val());
         formData.append("placePhoto", $("input[name=placePhoto]")[0].files[0]);
         
      //   placeId  placeTel  placeCity placeAddr placePhoto
      $.ajax({
         url : '/ddit_MiddleProject/AdminItemInsert.do',
         type : 'post',
           data: formData,  
            enctype: 'multipart/form-data',
              processData:false,
              contentType:false,
         success : function(res) {
            if("성공" == res.flag){
               alert("여행지가 추가되었습니다");
               placeManage();
            }else{
               alert("심각 !!");
            }
         },
         error : function(xhr) {
            alert(xhr.status);
         },
         dataType : 'json'
      });
      $('#staticBackdrop').modal('hide')
   
   });
   
   // 숙소 선택하면 가격 적는란 보여주기 
   $('#placeType').on('change',function(){
      selectOption = $('#placeType option:selected').val();
      if("room" == (selectOption)){
         $("#roomPriceDiv").css("display","block");
      }else{
         $("#roomPriceDiv").css("display","none");
      }
   });
   
   
   // 회원이 가지고 잇는 정보 출력하기 -- 
      $(document).on('click','.memberSetting', function() {
   if($(this).parents('tr').next().css('display') == "none"){
         $(this).parents('tr').next().css('display' ,"");
      }else{
         $(this).parents('tr').next().css('display' ,"none");
      }
   });
   
// $('.delete').parents('tr').find('td').eq(0).text()
   // 여행지 삭제 -- 해야함
//    $(document).on('click', '.delete', function() {
// //       alert('삭제 시작')
//       deleteData = $(this).parents('tr').find('td').eq(0).text();
//       alert(deleteData)
//       $.ajax({
//          url : '/ddit_MiddleProject/AdminItemDelete.do',
//          data : {"data" : deleteData},
//          type : 'get',
//          success : function(res) {
//             alert("삭제결과" + res.flag)
//             if("성공" == res.flag){
//                alert("여행지가 삭제되었습니다");
//             }else{
//                alert("심각 !!");
//             }
//             placeManage();      // 여행지 관리 페이지로 다시 이동
//          },
//          error : function(xhr) {
//             alert(xhr.status);
//          },
//          dataType : 'json'
//       })         
//    });
   
   // 여행지 수정 - 해야함
//    $('.modify').on('click', function() {
//       deleteData = $(this).parents('tr').find('td').eq(0).text()
//       $.ajax({
//          url : '/ddit_MiddleProject/AdminItemUpdate.do',
//          data : {"data" : modifyData},
//          type : 'get',
//          success : function(res) {
//             alert(res.flag)
//             if("성공" == res.flag){
//                alert("여행지가 삭제되었습니다");
//                placeManage();
//             }else{
//                alert("심각 !!");
//             }
//          },
//          error : function(xhr) {
//             alert(xhr.status);
//          },
//          dataType : 'json'
//       })         
//    });
   
   // 라운지 관리 -- 조회
   $('#loungeManage').on('click', function() {
      loungeManage();
   });
   
   // 1:1 문의 내역 - 조회
   $('#CustomerCenterManage').on('click', function() {
      CustomerCenterManage();
   });   


   
   
});
</script>
<!--  주소/ 지도 api -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    var geocoder = new kakao.maps.services.Geocoder();
    // 위도 경도 구하기 위해 객체 선언
    var juso = "";
    
    // 주소 창 띄우기
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_sido").value = data.sido;
                document.getElementById("sample4_detailAddress").value = data.buildingName;
               
                
                juso = data.address;
                alert("juso" + juso)
                geocoder.addressSearch(juso, function(res, status){
                   if (status === kakao.maps.services.Status.OK) {
//                         var coords = new kakao.maps.LatLng(res[0].y, res[0].x); // 위도(y) (Latitude) 경도 (longitude)
                     // alert("상태 :ok, x" + res[0].x +"/  y" +  res[0].y);
                      $("input[name=xpoint]").val(res[0].x);
                      $("input[name=ypoint]").val(res[0].y);
                   }

                });
                
                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
                
                self.close();
 
            }
        }).open();
       
    }
    
</script>
<body>

<div class="detailMemberModal"></div>



<!-- 여행지 등록 모달 -->
<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="staticBackdropLabel">여행지 등록</h3>
        <button type="button" class="close btn btn-second" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
<!-- 폼 태그 시작 -->
      <form  enctype="multipart/form-data">
<!--    여행 종류선택하기     -->
  <div class="form-group">
    <label for="exampleFormControlSelect2">카테고리</label>
    <select class="form-control" name="placeType" id="placeType">
      <option value = "tour">관광</option>
      <option value = "room">숙소</option>
      <option value = "food">맛집</option>
    </select>
  </div>   
  <div class="form-group" >
    <label for="exampleFormControlInput1">여행지 이름</label>
    <input type="text" class="form-control" name = "placeId" placeholder="등록하실 여행지 이름을 입력해 주세요">
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">전화번호</label>
    <input type="text" class="form-control" name = "placeTel" placeholder="여행지 전화번호 입력(000-0000-0000)">
  </div>
  <!-- style="display : none;" -->
  <div class="form-group" id="roomPriceDiv" style="display : none;">
    <label for="exampleFormControlInput1">숙소가격</label>
    <input type="text" class="form-control" name = "roomPrice" placeholder="가격을 입력해주세요">
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">주소</label>&nbsp;&nbsp;
   <input type="button" class="btn btn-outline-success btn-sm" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
     <input type="text" id="sample4_postcode" class="form-control" placeholder="우편번호">
   <input type="text" class="form-control"id="sample4_roadAddress" name="roadAddress" placeholder="도로명주소">
   <input type="hidden" id="sample4_sido" name="city" placeholder="시/도">
   <span id="guide" style="color:#999;display:none"></span>
   <input type="text" class="form-control"id="sample4_detailAddress" name="placeAddr" placeholder="상세주소">
   <input type="text" class="form-control"id="xpoint" name="xpoint" placeholder="경도">
   <input type="text" class="form-control"id="ypoint" name="ypoint" placeholder="위도">
   
<!--     <input type="text" class="form-control" name = "placeCity" placeholder="여행지 도시명을 입력해주세요"> -->
  </div>
   <div class="form-group">
    <label for="exampleFormControlFile1">사진 등록</label>
    <input type="file" class="form-control-file" id="exampleFormControlFile1" name = "placePhoto" >
  </div>
</form>
<!-- 폼태그 끝 -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="placeRegist">등록하기</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
      </div>
    </div>
  </div>
</div>
<!--  모달 끝  -->


<div class="container manage">

<!--  필터 -->
   <div class="col-2 filter">
      <ul class="nav nav-tabs justify-content-space-around filterList">
        <li class="nav-item">
          <a class="nav-link" id="memberManage" href='javascript:void(0);'>회원 관리</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="placeManage" href='javascript:placeManage();'>여행지 관리</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="loungeManage"href='javascript:void(0);'>라운지 관리</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="CustomerCenterManage"href='javascript:void(0);'>1 : 1 문의 관리</a>
        </li>
      </ul>      
   </div>


<!-- 회원관리 -->
   <div class="col-10 manageDetail" >
      <div class="memberManage" id='ManageList'>
   
          <form class="form-inline" onsubmit="return false;">
            <div class="col-md-4"><h3> 회원 관리</h3></div>
            <div class="col-md-8 searchForm">
                  <input class="form-control mr-2" name="searchText" placeholder="회원 이름을 입력해 주세요" aria-label="Search">
                  <button class="btn btn-outline-info" type="submit">Search</button>
            </div>
         </form>
         <hr>
         <div>
            <table class="table table-hover">
              <thead>
                <tr>
                  <th scope="col">번호</th>
                  <th scope="col">이름</th>
                  <th scope="col">아이디</th>
                  <th scope="col">비밀번호</th>
                  <th scope="col">관리</th>
                </tr>
              </thead>
              <tbody>
<%
   IMemberService service = MemberServiceImpl.getService();
   Map<String, String> map = new HashMap<String, String>();
   map.put("searchType", "");
   map.put("searchText", "");
   List<MemberVO> memberlist = service.memberList(map);
   
   int i = 0;
   for(MemberVO vo : memberlist){
      i++;
%>      
            <tr>
               <th scope="row"><%= i %></th>
               <td><%= vo.getMember_name() %></td>
               <td><%= vo.getMember_id() %></td>
               <td><%= vo.getMember_password() %></td>
               <td><button type="button" class='memberSetting btn btn-primary'>회원정보보기</button></td>
             </tr>
             <tr id="detail<%=i%>"style='display : none;'>
                   <th scope='row'><%=(i) %></th>
                  <td colspan='5'> 전화번호 : <%= vo.getMember_phone()%> 
               <br>생일 : <%= vo.getMember_birth() %> 
               <br>주소 : <%= vo.getMember_addr() %> 
               <br>닉네임 :<%= vo.getMember_nickname()    %>          
               </td>
            </tr>   
<% 
   }
%>           
                 </tbody>
            </table>
         </div>
      </div>      
   </div>
</div>
<%@ include file="../Main/footer.jsp" %>
</body>
</html>