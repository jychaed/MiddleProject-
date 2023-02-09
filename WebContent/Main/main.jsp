<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>트리플 메인</title>
<%@ include file="headerPage.jsp" %>
<style>
.tripStart{
/*     background-image: url(/ddit_MiddleProject/images/mint.jpg); */
	border : 3px none gray;
    background-size: cover;
    background-color: white;
    margin-top: 2%;
    margin-left : 15%;
}



.banner{
    width: 1140px;
    float: none;
    margin-top: 2%;
}
div{
/* 	border : 1px solid gray; */
}
#startBtn{
	
}

/* 자동 슬라이드 ============================================== */

* {box-sizing: border-box;}
body { font-family: 'IBM Plex Sans KR', sans-serif;}
.mySlides {display: none;}


/* Slideshow container */
.slideshow-container {
    max-width: 1140px;
    position: relative;
    margin-top: 2%;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}


/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 0.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}

.company_info_wrap {
    height: 227px;
    position: relative;
}
#footera{
	margin-top : 5%;
}

#mySlides{

	transition-duration: 2s;


}

</style>

<script>
$(function() {
	
		
	$('#pictureMove').on('click', function() {
		alert("눌림");
		a = $('.dynamicpicture').find('.boxCard').first();
		$('.dynamicpicture').append(a);
	})
	
	setInterval(function() {
		a = $('.dynamicpicture').find('.boxCard').first();
		$('.dynamicpicture').append(a);
	}, 1500)
	
	
	
})


</script>

<style>

.imageBox{
	position : absolute;
	opacity : 0.2;

}


.imageBox img {
	width : 1170px;
	height: 120px;
}

.imgSlide{
	
	overflow : hidden;

}

.container {

	margin-left : 21.5%;
}

</style>
</head>


<body>

<!-- 환영메시지 ================================================================================================================= -->
<div class="container imgSlide">
	<div class="imageBox">
	<div class="slideshow-container" >
	<div class="mySlides2">
	  <img src="../images/강릉.jpg">
	</div>
	
	<div class="mySlides2">
	  <img src="../images/담양.jpg">
	</div>
	
	<div class="mySlides2">
	  <img src="../images/제주도.jpg">
	</div>
	</div>
</div>
	<div class="tripStart">
<%-- 	<img alt="<%=request.getContextPath()%>/images/여행준비사진.jpg" src="/ddit_MiddleProject/images/여행준비사진.jpg"> --%>
	  <div class="row justify-content-around">
	  
	    <div class="col-6">
<%if(session.getAttribute("SessionId") == null){
%>
	      <p><h2>트리풀님,</h2></p>
<%
}else{
%>	
	      <p><h2><%= session.getAttribute("SessionName") %>님,</h2></p>
<%
}
%>
	    </div>
	    <div class="col-6"></div>
	    <div class="col-6">
	      <p><h2>여행을 준비하세요!👉👉👉</h2></p>
	    </div>
	    <div class="col-6">
	    		<%if(session.getAttribute("SessionId") == null){%>
	    		<button type="button" class="btn btn-lg btn-warning" 
	    		onclick="location.href='/ddit_MiddleProject/member/login.jsp'" id="startBtn">여행 준비하러 가기</button>
	    	
	    		<% 
				}else{
				%>
	    		
	    		<button type="button" class="btn btn-lg btn-warning" 
	    		onclick="location.href='/ddit_MiddleProject/trip/tripcalendar.jsp'" id="startBtn">여행 준비하러 가기</button>
	    	
	    		<%
				}
				%>
	    </div>
	  </div>
	</div>
</div>
<!-- 배너 ================================================================================================================= -->
<br><hr><br><br>


		<div class = "container">
		
		
			<div class = "textbox" style = "margin-left : 1%">
				<h2><p>이런 곳은 어때요?⭐</p></h2>
			</div>
			<br>

		
		
		<div class="">
		
				<div  style="width:20%; height: 100%; float:left;margin-bottom:0px;margin-top:0px;" class="boxCard">
					<div class="card" style="margin-left:10px;margin-right:10px;margin-top:0px;background:#fff;border-radius:10px;padding-bottom:0px;">
					<div style="position:relative;height : 100%;width:100%;overflow:hidden;border-radius:10px;">
					 <a href = "../recomend/jejumagazine.jsp"><img  src="../images/제주도.jpg"  class="fw" ></a>
					<div style="position:absolute;top:10px;left:0px;color:#fff;padding-left:10px;padding-right:10px;padding-top:5px;padding-left:10px;line-height:120%;font-size:13pt;font-weight:300;">
						<b>제주</b><br>떠나요. 둘이서
		     			 </div>
					</div>
					</div>
				</div>
					
					
		 		<div  style="width:20%; height: 100%; float:left;margin-bottom:0px;margin-top:0px;" class="boxCard">
					<div class="card" style="margin-left:10px;margin-right:10px;margin-top:0px;background:#fff;border-radius:10px;padding-bottom:0px;">
					<div style="position:relative;height : 80%;width:100%;overflow:hidden;border-radius:10px;">
					 <a href = "../recomend/hotel.jsp"><img  src="../images/롯데월드.gif"  class="fw"></a>
					<div style="position:absolute;top:10px;left:0px;color:#fff;padding-left:10px;padding-right:10px;padding-top:5px;padding-left:10px;line-height:120%;font-size:13pt;font-weight:300;">
						<b>호텔</b><br>각지역 호텔
		     		</div>
					</div>
					</div>
				</div>
				
				
		 		<div  style="width:20%; height: 100%; float:left;margin-bottom:0px;margin-top:0px;" class="boxCard">
					<div class="card" style="margin-left:10px;margin-right:10px;margin-top:0px;background:#fff;border-radius:10px;padding-bottom:0px;">
					<div style="position:relative;height : 100%;width:100%;overflow:hidden;border-radius:10px;">
					  <a href = "../recomend/daegu.jsp"><img  src="../images/이월드.jpg"  class="fw"></a>
					<div style="position:absolute;top:10px;left:0px;color:#fff;padding-left:10px;padding-right:10px;padding-top:5px;padding-left:10px;line-height:120%;font-size:13pt;font-weight:300;">
						<b>대구</b><br>대구는 막창과 이월드
		     			 </div>
					</div>
					</div>
				</div>
				
				
		 		<div  style="width:20%; height: 100%; float:left;margin-bottom:0px;margin-top:0px;" class="boxCard">
					<div class="card" style="margin-left:10px;margin-right:10px;margin-top:0px;background:#fff;border-radius:10px;padding-bottom:0px;">
					<div style="position:relative;height : 100%;width:100%;overflow:hidden;border-radius:10px;">
					 <img  src="../images/busan.jpg"  class="fw">
					<div style="position:absolute;top:10px;left:0px;color:#fff;padding-left:10px;padding-right:10px;padding-top:5px;padding-left:10px;line-height:120%;font-size:13pt;font-weight:300;">
						<b>부산</b><br>여름엔 해수욕
		     			 </div>
					</div>
					</div>
				</div>
				
				
		 		<div  style="width:20%; height: 100%; float:left;margin-bottom:0px;margin-top:0px;" class="boxCard">
					<div class="card" style="margin-left:10px;margin-right:10px;margin-top:0px;background:#fff;border-radius:10px;padding-bottom:0px;">
					<div style="position:relative;height : 100%;width:100%;overflow:hidden;border-radius:10px;">
					  <a href = "../recomend/daejeon.jsp"><img src="../images/성심당1.jpg"  class="fw"></a>
					<div style="position:absolute;top:10px;left:0px;color:#fff;padding-left:10px;padding-right:10px;padding-top:5px;padding-left:10px;line-height:120%;font-size:13pt;font-weight:300;">
						<b>대전</b><br>노잼,빵의 도시 대전
		     			 </div>
					</div>
					</div>
				</div>
		</div>		
	</div>
<br><br><Br><br><br><br>
				
				
				
				
	 <div class = "container" >
			<div class = "textbox" style = "margin-left : 1%">
			<br><br><br>
				<h2><p>TRIPFULL이 선정한 트슐랭 맛집🍽️ </p></h2>
			</div>
			<br>
			<div  style="width:20%; height: 100%; float:left;margin-bottom:0px;margin-top:0px;">
				<div class="card" style="margin-left:10px;margin-right:10px;margin-top:0px;background:#fff;border-radius:10px;padding-bottom:0px;">
				<div style="position:relative;height : 100%;width:100%;overflow:hidden;border-radius:10px;">
				 <a href = "../Food/foodMain.jsp"><img  src="../images/연돈.jpg"  class="fw" ></a>
				<div style="position:absolute;top:10px;left:0px;color:#fff;padding-left:10px;padding-right:10px;padding-top:5px;padding-left:10px;line-height:120%;font-size:13pt;font-weight:300;">
					<b>제주도 하면 무엇?</b><br>돈가스 맛집 연돈
	     			 </div>
				</div>
				</div>
				</div>
				
				
	 			<div  style="width:20%; height: 100%; float:left;margin-bottom:0px;margin-top:0px;">
				<div class="card" style="margin-left:10px;margin-right:10px;margin-top:0px;background:#fff;border-radius:10px;padding-bottom:0px;">
				<div style="position:relative;height : 80%;width:100%;overflow:hidden;border-radius:10px;">
				 <a href = "../Food/foodMain.jsp"><img  src="../images/라운지 홍대 바다회사랑.jpg"  class="fw"></a>
				<div style="position:absolute;top:10px;left:0px;color:#fff;padding-left:10px;padding-right:10px;padding-top:5px;padding-left:10px;line-height:120%;font-size:13pt;font-weight:300;">
					<b>서울회는 맛없다? NONO</b><br>홍대 바다회사랑
	     			 </div>
				</div>
				</div>
				</div>
	 			<div  style="width:20%; height: 100%; float:left;margin-bottom:0px;margin-top:0px;">
				<div class="card" style="margin-left:10px;margin-right:10px;margin-top:0px;background:#fff;border-radius:10px;padding-bottom:0px;">
				<div style="position:relative;height : 100%;width:100%;overflow:hidden;border-radius:10px;">
				  <a href = "../Food/foodMain.jsp"><img  src="../images/막창.jpg"  class="fw"></a>
				<div style="position:absolute;top:10px;left:0px;color:#fff;padding-left:10px;padding-right:10px;padding-top:5px;padding-left:10px;line-height:120%;font-size:13pt;font-weight:300;">
					<b>대구</b><br>대구는 막창과 이월드
	     			 </div>
				</div>
				</div>
				</div>
	 			<div  style="width:20%; height: 100%; float:left;margin-bottom:0px;margin-top:0px;">
				<div class="card" style="margin-left:10px;margin-right:10px;margin-top:0px;background:#fff;border-radius:10px;padding-bottom:0px;">
				<div style="position:relative;height : 100%;width:100%;overflow:hidden;border-radius:10px;">
				 <a href = "../Food/foodMain.jsp"><img  src="../images/라운지 해운대암소갈비.png"  class="fw"></a>
				<div style="position:absolute;top:10px;left:0px;color:#fff;padding-left:10px;padding-right:10px;padding-top:5px;padding-left:10px;line-height:120%;font-size:13pt;font-weight:300;">
					<b>부산</b><br>부산은회? NONO 지리는소갈비
	     			 </div>
				</div>
				</div>
				</div>
	 			<div  style="width:20%; height: 100%; float:left;margin-bottom:0px;margin-top:0px;">
				<div class="card" style="margin-left:10px;margin-right:10px;margin-top:0px;background:#fff;border-radius:10px;padding-bottom:0px;">
				<div style="position:relative;height : 100%;width:100%;overflow:hidden;border-radius:10px;">
				  <a href = "../Food/foodMain.jsp"><img src="../images/라운지 성심당 튀소.jpg"  class="fh"></a>
				<div style="position:absolute;top:10px;left:0px;color:#fff;padding-left:10px;padding-right:10px;padding-top:5px;padding-left:10px;line-height:120%;font-size:13pt;font-weight:300;">
					<b>대전</b><br>대전오면 한번은 꼭가봐야하는곳. 성심당
	     			 </div>
				</div>
				</div>
				</div>
				<br><br><br>
	</div>
<br><br><br>


<div class = "container" >
<div class="banner" >
<br><br>
	<img alt="" src="../images/꼬닥꼬닥 제주.jpg">
</div>
<br><br><br><br>
</div>
	<!-- 자동 슬라이드 ================================================================================================================= -->

<div class = "container" >
			<div class = "textbox" style = "margin-left : 1%">
				<h2><p>TRIPFULL 사용자들의 생생 후기📝</p></h2>
			</div>
			<br>
			<div  style="width:33%; height: 100%; float:left;margin-bottom:0px;margin-top:0px;">
				<div class="card" style="margin-left:10px;margin-right:10px;margin-top:0px;background:#fff;border-radius:10px;padding-bottom:0px;">
				<div style="position:relative;height : 100%;width:100%;overflow:hidden;border-radius:10px;">
				 <a href = "../Lounge/loungeMain.jsp"><img  src="../images/메인용 회.jpg"  class="fw" ></a>
				<div style="position:absolute;top:10px;left:0px;color:#fff;padding-left:10px;padding-right:10px;padding-top:5px;padding-left:10px;line-height:120%;font-size:13pt;font-weight:300;">
	     			 </div>
				</div>
					<br><p>회가 너무맛있어요</p><br>서울에는 맛있는횟집이없는거같았는데...
				</div>
			</div>
				
	 		<div  style="width:33%; height: 100%; float:left;margin-bottom:0px;margin-top:0px;">
				<div class="card" style="margin-left:10px;margin-right:10px;margin-top:0px;background:#fff;border-radius:10px;padding-bottom:0px;">
				<div style="position:relative;height : 80%;width:100%;overflow:hidden;border-radius:10px;">
				 <a href = "../Lounge/loungeMain.jsp"><img  src="../images/메인용 감귤.jpg"  class="fw"></a>
				<div style="position:absolute;top:10px;left:0px;color:#fff;padding-left:10px;padding-right:10px;padding-top:5px;padding-left:10px;line-height:120%;font-size:13pt;font-weight:300;">
	     		</div>
				</div>
					<br><p>감귤따기체험...</p><br>너무힘들었다. 한번은 체험해볼만하지만...
				</div>
			</div>
	 		<div  style="width:33%; height: 100%; float:left;margin-bottom:0px;margin-top:0px;">
				<div class="card" style="margin-left:10px;margin-right:10px;margin-top:0px;background:#fff;border-radius:10px;padding-bottom:0px;">
				<div style="position:relative;height : 100%;width:100%;overflow:hidden;border-radius:10px;">
				  <a href = "../Lounge/loungeMain.jsp"><img  src="../images/메인용 호텔.jpg"  class="fw"></a>
				<div style="position:absolute;top:10px;left:0px;color:#fff;padding-left:10px;padding-right:10px;padding-top:5px;padding-left:10px;line-height:120%;font-size:13pt;font-weight:300;">
	     			 </div>
				</div>
					<br><p>조선호텔후기</p><br>호텔이 정말 이뻐요 다음에 또 이용하고싶어요
				</div>
			</div>
	</div>	

<div class = "space"> <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br></div>

<br><br><br><br>

<!-- <div class="imageBox"> -->
<!-- 	<div class="slideshow-container" style="max-width : 100% ; margin-left:20%	"> -->
<!-- 	<div class="mySlides"> -->
<!-- 	  <img src="../images/강릉.jpg" style = "width : 1200px; height : 600px;" > -->
<!-- 	</div> -->
	
<!-- 	<div class="mySlides"> -->
<!-- 	  <img src="../images/담양.jpg" style = "width : 1200px; height : 600px;"> -->
<!-- 	</div> -->
	
<!-- 	<div class="mySlides"> -->
<!-- 	  <img src="../images/제주도.jpg" style = "width : 1200px; height : 600px;" > -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- </div> -->
<!-- <br> -->

<!-- <div style="text-align:center"> -->
<!--   <span class="dot" style = "margin-left : 4%;"></span>  -->
<!--   <span class="dot"></span>  -->
<!--   <span class="dot"></span>  -->
<!-- <br><br><br> -->
<!-- </div> -->



<script>

	var slideIndex2 = 0;
	showSlides2();
	
	function showSlides2() {
	   var i;
	   var slides2 = document
	         .getElementsByClassName("mySlides2");
	   for (i = 0; i < slides2.length; i++) {
	      slides2[i].style.display = "none";
	      
	   }
	   slideIndex2++;
	   if (slideIndex2 > slides2.length) {
	      slideIndex2 = 1
	   }
	
	   slides2[slideIndex2 - 1].style.display = "block";
	   
	   setTimeout(showSlides2, 2000); // Change image every 2 seconds
	}











   var slideIndex = 0;
   showSlides();

   function showSlides() {
      var i;
      var slides = document
            .getElementsByClassName("mySlides");
      var dots = document.getElementsByClassName("dot");
      for (i = 0; i < slides.length; i++) {
         slides[i].style.display = "none";
         
      }
      slideIndex++;
      if (slideIndex > slides.length) {
         slideIndex = 1
      }
      for (i = 0; i < dots.length; i++) {
         dots[i].className = dots[i].className.replace(
               " active", "");
      }
      slides[slideIndex - 1].style.display = "block";
      dots[slideIndex - 1].className += " active";
      setTimeout(showSlides, 2000); // Change image every 2 seconds
   }
</script>


</body>
<%@ include file="footer.jsp" %>
</html>



		