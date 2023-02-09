<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script type="text/javascript" src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=aded6ad6571a46e330f8407c432ddeb4&libraries=services"></script>
<script>

sqlMap = function(xPoint, yPoint){
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new kakao.maps.LatLng(xPoint, yPoint), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	// 지도를 클릭했을때 클릭한 위치에 마커를 추가하도록 지도에 클릭이벤트를 등록합니다
	kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
	    // 클릭한 위치에 마커를 표시합니다 
	    addMarker(mouseEvent.latLng);             
	});
	
	// 지도에 표시된 마커 객체를 가지고 있을 배열입니다
	var markers = [];
	
	// 마커 하나를 지도위에 표시합니다 
	addMarker(new kakao.maps.LatLng(xPoint, yPoint));
	
	//마커를 생성하고 지도위에 표시하는 함수입니다
	function addMarker(position) {
	    
	    // 마커를 생성합니다
	    var marker = new kakao.maps.Marker({
	        position: position
	    });

	    // 마커가 지도 위에 표시되도록 설정합니다
	    marker.setMap(map);
	    
	    // 생성된 마커를 배열에 추가합니다
	    markers.push(marker);
	}
	
	//배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
	function setMarkers(map) {
	    for (var i = 0; i < markers.length; i++) {
	        markers[i].setMap(map);
	    }            
	}

	// "마커 보이기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에 표시하는 함수입니다
	function showMarkers() {
	    setMarkers(map)    
	}

	// "마커 감추기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에서 삭제하는 함수입니다
	function hideMarkers() {
	    setMarkers(null);    
	}
	
}

function addMarker(position) {
    
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        position: position
    });

    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);
    
    // 생성된 마커를 배열에 추가합니다
    markers.push(marker);
}


	$(function() {
		
		var markers = [];
		sqlMap(33.450701, 126.570667);
		
		$('.addbtn').on('click', function() {
			
			xpoint = $(this).parents('.dataBox').find('.firstPoint').val();
			ypoint = $(this).parents('.dataBox').find('.secondPoint').val();
			markers.push(marker);
				
			alert(xpoint + "         " + ypoint)
			sqlMap(ypoint, xpoint);
			
		})
		
		
		
		
	
		
		
	})


</script>
<style>
	
#map{

	width : 500px;
	height : 500px;
}	
</style>

</head>
<body>
	
	
	<div id="map">

	</div>
	<div>
		
		<h2>대전광역시청</h2>
		<div class="dataBox">
			<input type="hidden" class="firstPoint" value="127.384633005948">  x : 127.384633005948
			<input type="hidden" class="secondPoint" value="36.3503849976553">  y : 36.3503849976553
			<input type="button" value="좌표추가" class="addbtn">  
		</div>
		
		<h2>서대전역</h2>
		<div class="dataBox">
			<input type="hidden" class="firstPoint" value="127.403953529161">  x : 127.403953529161
			<input type="hidden" class="secondPoint" value="36.3231906152383">  y : 36.3231906152383	
			<input type="button" value="좌표추가" class="addbtn">  
		</div>
		
	</div>
		
	

</body>
</html>