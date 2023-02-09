
searchMemberList = function(){
   $.ajax({
      url : '/ddit_MiddleProject/TripList.do',
      data : {"search" : searchdata},
      type : 'get',
      success : function(res) {   
         $('tbody').empty();
         code = "";
         $.each(res, function(i, v){
            code = "<tr>"
                + "<th scope='row'>"+(i+1) +"</th>"
               + "<td>"+ v.trip_no+"</td>"
               + "<td>"+ v.trip_title+"</td>"
              + "<td>"+ v.trip_start+"</td>"
              + "<td>"+ v.trip_end+"</td>"
              + "<td>"+ v.trip_city+"</td>"
              + "<td>"+ v.trip_people+"</td>"
             + "</tr>"            
            $('tbody').html(code);
         })
      },
      error : function(xhr) {
         alert(xhr.status);
      },
      dataType : 'json'
   })
}

member_trip_list = function(a, b) {
   
      trip_no =a;
      member_id =b;
   
          $.ajax({
            
            url : '/ddit_MiddleProject/TripList.do',
            type : 'get',
            data : {'trip_no' : trip_no, "member_id" : member_id},
            success : function(res){
                  
                  code = "";
                  $.each(res, function(i,v) {
                     code += "   <h4>"+v.trip_day+"</h4> " ;
                     code += "<div class='container p-3 my-3 border'>"
                     code += " <p>어디로 떠나실까요</p>  " ;
                     code += "   </div>" ;
                     code += "   <div class='jumbotro'>  " ;
                     code += "  </div> " ;
                  })
               $('.border').html(code);
            },
            error : function(xhr){
               alert(xhr.status)
            },
            dataType:'json' 
         })
}

trip_session_add = function() {
         
   $.ajax({   
            url : '/ddit_MiddleProject/TripSessionAdd.do',
            type : 'post',
            data : {'tNo_session' : tNo_session},
            success : function(res){      
               alert("선택하신 일정을 등록합니다.")
            },
            error : function(xhr){
               alert(xhr.status)
            },
            dataType:'json'
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

member_trip = function() {
         



          $.ajax({
            
            url : '/ddit_MiddleProject/TripDayList.do',
            type : 'get',
            data : {'member_id' : member_id},
            success : function(res){
               code = "";
                $.each(res, function(i,v){
                   code +=
                      `<tr class='idbox'>
                        <td class="trip_no" value="${v.trip_no}">${v.trip_no}</td>
                         <td id = 't_t'>${v.trip_title}</td>
                         <td>${StringToDate(v.trip_start, 0 )}</td>
                         <td>${StringToDate(v.trip_end, 0 )}</td>
                         <td>${v.trip_city}</td>
                        <td><input type='button' id="selectTrip" value="일정선택" class = "btn btn-primary	"> </td>                     
                      </tr>`;             
                })
               $('tbody').html(code);
            },
            error : function(xhr){
               alert(xhr.status)
            },
            dataType:'json'
         }) 
}
///////////////// 상세일정 등록 메서드 모음

checkArea = function() {
   
   // ntrip_no
   // detail_addr
      var result = false;
   
      var formData = new FormData();
       formData.append("ntrip_no", ntrip_no);
       formData.append("detail_addr", detail_addr);   
         
       $.ajax({      
            url : '/ddit_MiddleProject/TripDetailCheck.do',
            type : 'post',
            data : formData,
            async: false,
            enctype: 'multipart/form-data',
                 processData:false,
                 contentType:false,
            success : function(res){
            //성공이면 등록 가능         
               if(res.flag == "성공"){
                  result = true;            
               }else {      
                  alert("이미 등록 하신 장소 입니다.");
                  result = false;
               }
            },
            error : function(xhr){
               alert(xhr.status)
            },
            dataType:'json'
         }) 
         return result;
}

insertDetailDay =function(data) {
   
   var nextFormData = new FormData();   
      nextFormData.append("ntrip_no", ntrip_no);
      nextFormData.append("detail_addr", detail_addr);
      nextFormData.append("detail_name", detail_name);
      nextFormData.append("ypoint", ypoint);
      nextFormData.append("xpoint", xpoint);


   
      $.ajax({      
            url : '/ddit_MiddleProject/TripDetailAdd.do',
            type : 'post',
            data : nextFormData,
            enctype: 'multipart/form-data',
            processData:false,
            contentType:false,
            success : function(res){
	
				var hideMapArr = hideMapOnOff();
				var mapValueArr = mapValueCheck();
				console.log()
               $('.modalDataBox').empty();
  
               code =""
               code += '<li class="detailDataBox">';
//               code +=  res.detail_name;
               code += '<input id="detail_addr" value="'+res.detail_addr+'" type="hidden"> ';
               code += '<input id="detail_xpoint" value="'+res.detail_xpoint+'" type="hidden"> ';
               code += '<input id="detail_ypoint" value="'+res.detail_ypoint+'" type="hidden"> ';
               code += '<input id="ntrip_no" value="'+res.ntrip_no+'" type="hidden"> ';
               code += '<input id="detailday_code" value="'+res.detailday_code+'" type="hidden"> ';
               code += '<input type="button" class="deleteDetail" value="-">';
               code += '</li>';
                        
               $(data).before(code);
               
               var arr = modal_trip_list(hideMapArr, mapValueArr);
//               alert(arr);
					
				mapArr = showRouteMap(arr);
			   	
                     
            },
            error : function(xhr){
               alert(xhr.status)
            },
            dataType:'json'
         })    
}

hideMapOnOff = function() {
	var hideOn = [];	
	var mapData = ' ';
		 	var countMax = searchMaxCount(trip_no);	
			var str = ' ';
			for(let i = 0 ; i < countMax; i ++){
				str = "#map"+(i+1);
				if($(str).hasClass('hideMap')){
					mapData = "hideMap";
				}else {
					mapData = " ";
				}	
				hideOn.push(mapData);
				str = ' ';
			}
	
	return hideOn;
	
}




modal_trip_list = function(e,f){
   
   var arr2 = [];
		

          $.ajax({
            
            url : '/ddit_MiddleProject/TripList.do',
            type : 'get',
            data : {'trip_no' : trip_no, "member_id" : member_id},
            async: false,
            success : function(res){
               
				

                $('.modalDataBox').empty();
                  code = "";   
                  $.each(res, function(i,v) {

                     //code += '<div class="form-group">';
                     code += '<div class="dayBox">';
                     code += '<label>'+(i+1)+'day</label> <input type="button" value="'+f[i]+'" class="hideOffbtn btn btn-info">';
                     code += '<div id ="map'+(i+1)+'" style="width : 466px; height : 200px;" class="hideOnOff '+e[i]+'  "></div>'
                     code += '<ol class="detailBox" name="'+(i+1)+'day" >';
                     code += '<input class="addDaydetail btn btn-outline-secondary" id="'+v.ntrip_no+'" type="button" value="+" >';
                     code += '</ol>';
					 code += '</div>';
                  })
               $('.modalDataBox').html(code);
               
               arr2 = modal_trip_detail_list();

                     
            },
            error : function(xhr){
               alert(xhr.status)
            },
            dataType:'json' 
         })
         return arr2;
}

modal_trip_detail_list = function() {
   
   var countMax = searchMaxCount(trip_no);
   var startNum = $('.modalDataBox ol').first().find('.addDaydetail').attr('id');
   numCheck = parseInt(startNum);
   i = parseInt(startNum);
   j = parseInt(countMax);
   max = i + j - 1;
   
   var arr = [];
	var arrResult = [];

   for(i; i <= max; i++){
      
      $.ajax({      
            url : '/ddit_MiddleProject/TripDetailSelect.do',
            type : 'post',
            async: false,
            data : {'ntrip_no' : i},
            success : function(res){
               arr = [];
               var abc = ("#" + i);
               $.each(res, function(j, v){
               code ="";
               code += '<li class="detailDataBox">';
               code +=  v.detail_name;
               code += '<input id="detail_addr" value="'+v.detail_addr+'" type="hidden"> ';
               code += '<input id="detail_xpoint" value="'+v.detail_xpoint+'" type="hidden"> ';
               code += '<input id="detail_ypoint" value="'+v.detail_ypoint+'" type="hidden"> ';
               code += '<input id="ntrip_no" value="'+v.ntrip_no+'" type="hidden"> ';
               code += '<input id="detailday_code" value="'+v.detailday_code+'" type="hidden"> ';
               code += '<input type="button" class="deleteDetail btn btn-outline-secondary" value="-">';
               code += '</li>';   
               
               arr.push([v.detail_ypoint, v.detail_xpoint, v.detail_name]);
				
               $(abc).before(code);               
               })       
				
            },
            dataType:'json'
         }) 
			arrResult.push(arr);
   }
   return arrResult;
}



searchMaxCount = function(num) {
   
   var result = 0;
   
   $.ajax({      
            url : '/ddit_MiddleProject/TripMaxCount.do',
            type : 'post',
            data : {"trip_no" : num},
            async: false,
            success : function(res){
               result = res.flag;
            },
            error : function(xhr){
               alert(xhr.status)
            },
            dataType:'json'
         })          
   return result;
}

detailDayaDelite = function(data){

   $.ajax({      
            url : '/ddit_MiddleProject/DetailDayaDelite.do',
            type : 'post',
            data : {"detailday_code" : detailday_code},
            success : function(res){
				var hideMapArr = hideMapOnOff();
				var mapValueArr = mapValueCheck();
				
               if(res.flag == "성공"){
                  $(data).parent('.detailDataBox').remove();
               }else{
                  alert("삭제실패")
               }
               $('.modalDataBox').empty();
               
               var arr = modal_trip_list(hideMapArr, mapValueArr);
               
               mapArr = showRouteMap(arr);
            },
            error : function(xhr){
               alert(xhr.status)
            },
            dataType:'json'
         })    
}

///////////////////카카오 지도  메서드//////////////////////


showRouteMap = function(latlng2){ // [ [x, y ] , [x, y]  ]  arr[0][0] arr  
//   alert("x : " + latlng[0][0] + "y : " + latlng[0][1] )

var mapArr = [];

   //  arr [   [  [],[]  ],    [ [],[] ]      ]

	for(var k = 0 ;k < latlng2.length; k ++){
	

		if(latlng2[k] != ""){

			var latlng = latlng2[k];
		
			
			var str = "map" + (k+1);	
			
		
		   mapContainer = document.getElementById(str), // 지도를 표시할 div  map1 map2 map3
			mapContainerArr.push(mapContainer);
		    mapOption = { 
		        center: new kakao.maps.LatLng(latlng[latlng.length-1][0], latlng[latlng.length-1][1]), // 지도의 중심좌표
		        level: 10 // 지도의 확대 레벨
		    };  
		//   alert(mapContainer)
		
		   map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
		   // 선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
		   var linePath = [];
		   for(var i = 0 ; i< latlng.length ; i++){
		         
		      linePath.push(new kakao.maps.LatLng(latlng[i][0], latlng[i][1]));
		   }
		   
		   // 마커와 글씨
		   
		      
		      var positions = [];
		      var positionsOvers = []
		      // 커스텀 오버레이가 표시될 위치입니다 
		      for(var i = 0; i < latlng.length; i++){
		      var content = '<div class="customoverlay">' +
		          '  <a href="https://map.kakao.com/link/map/11394059" target="_blank">' +
		          '    <span class="title">'+ latlng[i][2] +'</span>' +
		          '  </a>' +
		          '</div>';
		      var position = {content :  content , latlng: new kakao.maps.LatLng(latlng[i][0], latlng[i][1])};
		      var positionsOver = {latlng : new kakao.maps.LatLng(latlng[i][0]-0.01, latlng[i][1])};
		         positionsOvers.push(positionsOver);
		         positions.push(position);   
		      }
		      // 커스텀 오버레이를 생성합니다
		      
		      var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		
		      for (var i = 0; i < positions.length; i ++) {
		         
		          // 마커 이미지의 이미지 크기 입니다
		          var imageSize = new kakao.maps.Size(24, 35); 
		          
		          // 마커 이미지를 생성합니다    
		          var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		          
		          // 마커를 생성합니다
		          var marker = new kakao.maps.Marker({
		              map: map, // 마커를 표시할 지도
		              position: positions[i].latlng, // 마커를 표시할 위치
		//              title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		              image : markerImage // 마커 이미지 
		          });
		      }
		      
		      
		      for (var i = 0; i < positions.length; i ++) {   
		         // 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다.         
		         // 커스텀 오버레이를 생성합니다
		         var customOverlay = new kakao.maps.CustomOverlay({
		             map: map,
		             position: positionsOvers[i].latlng,
		             content: positions[i].content,
		             yAnchor: 1 
		         });      
		      }
		
		   
		   // 지도에 표시할 선을 생성합니다
		   var polyline = new kakao.maps.Polyline({
		       path: linePath, // 선을 구성하는 좌표배열 입니다
		       strokeWeight: 5, // 선의 두께 입니다
		       strokeColor: '#FFAE00', // 선의 색깔입니다
		       strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
		       strokeStyle: 'solid' // 선의 스타일입니다
		   });
		   
		   // 지도에 선을 표시합니다 
		   polyline.setMap(map);  
		   
			mapArr.push(map);
			
			}else {
				mapArr.push(null);
				mapContainerArr.push(null);
			}  

	}

	 return mapArr;
}


//지도 열고 닫는 메서드
hideOffbtnMap = function(e) {
		

	if($(e).val() == "지도보기"){
		
			if(checkMapdata(e)){
				
				$(e).parent('.dayBox').find('.hideOnOff').removeClass('hideMap');
				$(e).attr("value", "지도닫기");
				
				for(let i = 0; i < mapArr.length; i++){
					
					if(mapArr[i] != null){
						mapContainerArr[i].style.width = "466px";
						mapContainerArr[i].style.height = "200px";
						mapArr[i].relayout();							
					}else {
						continue;
					}
				}
				
			}else{
				alert("맵 데이터가 없습니다.")
			}
					
	}else if($(e).val() == "지도닫기"){
			$(e).parent('.dayBox').find('.hideOnOff').addClass('hideMap');
			$(e).attr("value", "지도보기");
			}
		
		
	
	
}

// 지도 열기전에 맵에 대한 정보가 있는지 확인하는 메서드
checkMapdata = function(e) {
	
		var str = $(e).parent('.dayBox').find('.hideOnOff').attr('id');
			
//			alert(str);
			
		str = str.substring(3).trim();
		
		console.log(str);

		if(mapArr[str-1] == null){
			return false;
		}else{
			return true;		
		}
}



hideMapCheck = function() {
	
	
	var hideOn = [];	
		 	var countMax = searchMaxCount(trip_no);	
			var str = ' ';
			for(let i = 0 ; i < countMax; i ++){
				str = "#map"+(i+1);
				if($(str).hasClass('hideMap')){
					mapData = "hideMap";
				}else {
					mapData = " ";
				}	
				hideOn.push(mapData);
			}
	return hideOn;
}

mapValueCheck = function() {
	
	
	var hideOn = [];	
	var mapData = " ";
		 	var countMax = searchMaxCount(trip_no);	
			var str = ' ';
			for(let i = 0 ; i < countMax; i ++){
				str = "#map"+(i+1);
				
				if($(str).parent('.dayBox').find('.hideOffbtn').attr('value') == '지도보기'){
					mapData = "지도보기";
				}else if($(str).parent('.dayBox').find('.hideOffbtn').attr('value') == '지도닫기'){
					mapData = "지도닫기";
				}	
				hideOn.push(mapData);
				str = ' ';
			}
	return hideOn;
}

