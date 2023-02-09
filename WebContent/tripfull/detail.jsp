<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<html>
<head>

    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta name="description" content="스투비플래너를 이용해 상상속 여행을 현실로 만들어 보세요">
    <meta name="author" content="">

    <title>[스투비 독점할인]무경험/초보자 체험 비치다이빙 - 스투비플래너</title>
  
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=no">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimun-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
<link href="https://fonts.googleapis.com/css?family=Amatic+SC|Sunflower:300" rel="stylesheet">

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
	<link rel="stylesheet" href="../css2/line-icons.css">
	<link rel="stylesheet" href="../css2/font-awesome.min.css">
	<!-- CSS Customization -->
	<link rel="stylesheet" href="../css2/style.css">

<link href="https://api.mapbox.com/mapbox-gl-js/v1.8.1/mapbox-gl.css" rel="stylesheet" />
    <!-- CSS/JavaScript -->
    <link rel="stylesheet" type="text/css" href="../css2/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="../css2/common.css">

    <link rel="stylesheet" type="text/css" href="../css2/tourDetail4.css">

    <link rel="stylesheet" type="text/css" href="../css2/header_footer.css">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- lazysizes.min.js : 레이지로딩 -->
    <script src="../js2/lazysizes.min.js" type="text/javascript" async=""></script>
    <!-- swiper.min.js : 이미지슬라이더 -->
    <script src="../js2/swiper.min.js" type="text/javascript"></script>
    <!-- fixedScroll.js : 원페이지 헤더 고정 -->
    <script src="../js2/fixedScroll.js" type="text/javascript"></script>

<style>

.stubby_icon
{
  background-image: url('//www.stubbyplanner.com/img_v13/favicon.png');
  background-size: cover;
  width: 15px;
  height: 15px;
  border-radius: 50%;
  cursor: pointer;

}
.marker0 {
  background-image: url('//www.stubbyplanner.com/img_v13/marker/mycity_night0.png');
  background-size: cover;
  width: 12px;
  height: 12px;
  border-radius: 50%;
  cursor: pointer;
}

.marker1 {
  background-image: url('//www.stubbyplanner.com/img_v13/marker/mycity_night1.png');
  background-size: cover;
  width: 17px;
  height: 17px;
  border-radius: 50%;
  cursor: pointer;
}

.marker2 {
  background-image: url('//www.stubbyplanner.com/img_v13/marker/mycity_night2.png');
  background-size: cover;
  width: 20px;
  height: 20px;
  border-radius: 50%;
  cursor: pointer;
}

.marker3 {
  background-image: url('//www.stubbyplanner.com/img_v13/marker/mycity_night3.png');
  background-size: cover;
  width: 22px;
  height: 22px;
  border-radius: 50%;
  cursor: pointer;
}

.marker4 {
  background-image: url('//www.stubbyplanner.com/img_v13/marker/mycity_night4.png');
  background-size: cover;
  width: 25px;
  height: 25px;
  border-radius: 50%;
  cursor: pointer;
}

.marker5 {
  background-image: url('//www.stubbyplanner.com/img_v13/marker/mycity_night5.png');
  background-size: cover;
  width: 25px;
  height: 25px;
  border-radius: 50%;
  cursor: pointer;
}

.marker6 {
  background-image: url('//www.stubbyplanner.com/img_v13/marker/mycity_night6.png');
  background-size: cover;
  width: 25px;
  height: 25px;
  border-radius: 50%;
  cursor: pointer;
}
.marker7 {
  background-image: url('//www.stubbyplanner.com/img_v13/marker/mycity_night7.png');
  background-size: cover;
  width: 25px;
  height: 25px;
  border-radius: 50%;
  cursor: pointer;
}
.marker8 {
  background-image: url('//www.stubbyplanner.com/img_v13/marker/mycity_night8.png');
  background-size: cover;
  width: 25px;
  height: 25px;
  border-radius: 50%;
  cursor: pointer;
}
.marker9 {
  background-image: url('//www.stubbyplanner.com/img_v13/marker/mycity_night9.png');
  background-size: cover;
  width: 25px;
  height: 25px;
  border-radius: 50%;
  cursor: pointer;
}

.mapboxgl-popup {
  max-width: 200px;
}
.stu_top_banner .linkArea {
    display: inline-block;
    position: absolute;
    right: 10px;
    top: 10px;
    z-index: 9;
}
.stu_more img
{width:100%}
.calendar_header_title
{
	text-align:center;
	font-size:11pt;
	color:#fff;
}
.calendar_day_nothing
{
	text-align:center;
	font-size:11pt;
	float:left;
	width:14%;
	color:#fff;
	padding-top:5px;
	padding-bottom:5px;
}
.calendar_header
{
	text-align:center;
	float:left;
	width:14%;
	color:#fff;
}
.calendar_day
{
	margin-top:5px;
	margin-left:5px;
	margin-right:5px;
	margin-bottom:5px;
	text-align:center;
	font-size:11pt;
	color:#696969;
	background:#000;
	border:1px solid #696969;
	border-radius:20px;
	padding-top:5px;
	padding-bottom:5px;
	cursor:pointer;
}
.calendar_day_active
{
	margin-top:5px;
	margin-left:5px;
	margin-right:5px;
	margin-bottom:5px;
	text-align:center;
	font-size:11pt;
	color:#fff;
	border:1px solid #fff;
	border-radius:20px;
	padding-top:5px;
	padding-bottom:5px;
	cursor:pointer;
}
.calendar_day a{color:#fff}
.calendar_day_selected
{
	margin-top:5px;
	margin-left:5px;
	margin-right:5px;
	margin-bottom:5px;
	text-align:center;
	font-size:11pt;
	color:#000;
	background:#fff;
	border-radius:20px;
	padding-top:5px;
	padding-bottom:5px;
	cursor:pointer;
}
.calendar_day_selected a{color:#000}
.round_num {
    display:inline-block;

    margin-top: 5px;
    margin-bottom: 5px;
    text-align: center;
    font-size: 11pt;
    color: #fff;
    border: 1px solid #fff;
    background:#c0c0c0;
    border-radius: 20px;
    padding-top: 5px;
    padding-bottom: 5px;
    cursor: pointer;
}
.round_num_selected {
    display:inline-block;
    margin-top: 5px;

    margin-bottom: 5px;
    text-align: center;
    font-size: 11pt;
    color: #fff;
    border: 1px solid #fff;
    background:#696969;
    border-radius: 20px;
    padding-top: 5px;
    padding-bottom: 5px;
    cursor: pointer;
}
.round_num_empty {
    display:inline-block;
    margin-top: 5px;
    margin-bottom: 5px;
    text-align: center;
    font-size: 11pt;
    color: #fff;
    border: 1px dotted #696969;
    color:#696969;
    border-radius: 20px;
    padding-top: 5px;
    padding-bottom: 5px;
    cursor: pointer;
}

.btn_ctype
{
	cursor:pointer;
	border:1px solid #fff;
	width:30px;
	height:30px;
	border-radius:25px;
	display:inline-block;
	color:#696969;
	padding-top:5px;
}
.calendar_day_selected
{
	background:#fff;
}

.stu_eventBanner .stu_badge
{
    display: block;
    position: absolute;
    top: 14px;

    left: 69%;
    width: 44px;
    height: 44px;
    font-size: 13px;
    line-height: 44px;

    -webkit-border-radius: 50%;
    border-radius: 50%;
    box-shadow: 0 2px 3px 0 rgba(0,0,0,.3);
    border: 1px solid #0077d9;
    background: #1f8ce6;
    font-weight: bolder;
    text-align: center;
    color: #fff;
    z-index: 1;
}
</style>
<script>


function hideCourseDetail()
{
	$('.desc').addClass('d-n');

	$('#push-up').removeClass('on');
	$('#fold').addClass('on');

}
function showCourseDetail()
{
            $('.desc').removeClass('d-n');

	$('#push-up').addClass('on');
	$('#fold').removeClass('on');
}

function togglePriceDetail()
{
            $('#price_title').toggleClass('on');
           $('#divPriceDetail').toggleClass('d-n');
}

    // 스크롤 이동(포함사항)
    function fnMove(seq) {
        var posPrice = $('.stu_s' + seq).offset();
        $('html, body').animate({scrollTop : posPrice.top - menuHeight}, 400);
    }
function toggleIntroDetail()
{
	$("#introDetail").toggleClass('compression');
	$('.stu_cont-btn').toggleClass('on');
}
</script>
<!-- Facebook Pixel Code -->
<script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/en_US/fbevents.js');
  fbq('init', '597062987120795');
  fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
  src="https://www.facebook.com/tr?id=597062987120795&ev=PageView&noscript=1"
/></noscript>
<!-- End Facebook Pixel Code -->
</head>


<body>

<script>
 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
 ga('create', 'UA-913663-1', 'auto');
 ga('send', 'pageview');
</script>


<div class="stu_wrap">



    <header id="header" >


        <div class="stu_header">
            <div class="stu_inner_wrap">
                <nav class="gnb_container">
                    <div class="aside_button on-mobile">
                        <a href="#" class="gnb_menu">
                            <i class="ico_menu"></i>
                        </a>
                    </div>

                    <h1 class="stu_logo" style="margin-top:0px;margin-bottom:0px;">
                        <a href="/index.asp?lang=">
                            <img class="fh" src="/images2/stu_logo_mobile.png" alt="logo"/>
                        </a>
                    </h1>
                    <div class="gnb_banner on-pc">
                        <div class="swiper-container swiper-gnb_banner">
                            <ul class="swiper-wrapper">
                            <li class="swiper-slide">
                                   <a href="/planner/premium.asp">
                                       
                                        <div class="txtWrap">

                                            <p style="color:#ee685a">셀프 유럽여행, 시간/비용 줄여주는  </p>
                                            <b>스투비 셀프팩<span> </span></b>


                                        </div>

                                    </a>
                                </li>
                            


    

                            </ul>
                            <div class="swiper-pagination gnb_banner-pagination"></div>
                            <div class="swiper-button-prev gnb_banner-button-prev"></div>
                            <div class="swiper-button-next gnb_banner-button-next"></div>
                        </div>
                    </div>

                    <ul class="gnb_wrap on-pc">


	
                        <li class="gnb_item">
                            <a href="/guide/reservation.asp">예약내역</a>
                        </li>
	

                        <li class="gnb_item sign_out">
                            <a href="https://www.stubbyplanner.com/common/login.asp">로그인</a>
                        </li>
	
<script>
function showLangSelector()
{
	if($("#divLangSelector").hasClass('active'))
		$("#divLangSelector").removeClass('active');
	else
		$("#divLangSelector").addClass('active');
}
</script>
  <li class="gnb_item gnb_profile" style="margin-top:0px;margin-left:10px;color: #c0c0c0;">
	<a href="javascript:showLangSelectors()"><font style="font-size:10pt;color:#efefef">

			<img src="/img_v9/ico_flag_ko.png">	

		<i class="fa fa-chevron-down"></i></font></a>
                            <div class="prfPopup" id="divLangSelector" style="right:120px;width:120px">
                                <ul class="prfPopup_section">
                                    <li class="prfPopup_item"><a href="/index.asp"><img src="/img_v9/ico_flag_ko.png"> 한국어</a></li>

                                    <li class="prfPopup_item"><a href="/index.asp?lang=en"><img src="/img_v9/ico_flag_en.png"> ENG</a></li>
                                    <li class="prfPopup_item"><a href="/index.asp?lang=ch"><img src="/img_v9/ico_flag_zh-CN.png"> 中国语</a></li>
                                    <li class="prfPopup_item"><a href="/index.asp?lang=jp"><img src="/img_v9/ico_flag_jp.png"> 日本語</a></li>
		   </ul>
		</div>

  </li>
	
                            <li class="gnb_item sign_out">
                            <a href="https://www.stubbyplanner.com/common/register.asp" class="signup">회원가입</a>
                        </li>
	

                    </ul>
                </nav>
                <nav class="lnb_container">


                    <ul class="lnb_wrap">
                        <li class="lnb_item ">
                            <a href="/">홈</a>
                        </li>

                        <li class="lnb_item ">
                            <a href="/planner/index.asp">플래너</a>
                        </li>
                        <li class="lnb_item ">
                            <a href="/exp/list.asp">탐색</a>
                        </li>

                        <li class="lnb_item  active">
                            <a href="/market/index.asp">유럽투어</a>
                        </li>
                        <li class="lnb_item  ">
                            <a href="/mb/index.asp">숙소</a>
                        </li>
<!--
                        <li class="lnb_item  ">
                            <a href="/template/index.asp">템플릿</a>
                        </li>
-->
                    </ul>

                    <div class="gnb_search_wrap">
                        <a href="#" class="gnb_search">
                            <i class="ico_search"></i>
                        </a>
                    </div>
                </nav>
                <div class="side_background"></div>
                <aside class="side_container on-mobile">
                    <ul class="side_section">
                        <li class="side_item side_logo sign_out">
                            <a href="http://stubbyplanner.com/">

                                <img class="fh" src="/images2/stu_logo_mobile.png" alt="logo"/>
                            </a>
                        </li>




                        <li class="side_item side_btn sign_out">
                            <a href="https://www.stubbyplanner.com/common/login.asp" class="btn_login">로그인</a>
                        </li>
                        <li class="side_item side_btn sign_out">
                            <a href="https://www.stubbyplanner.com/common/register.asp" class="btn_signup">회원가입</a>
                        </li>

                    </ul>
                    <ul class="side_section">

                        <li class="side_item side_resv">
                            <a href="/guide/reservation.asp">
                                <i></i><span class="sign_out">비회원&nbsp;</span>예약내역
                            </a>
                        </li>



                        <li class="side_item side_square">
                           <a href="/help/index.asp"><i></i>고객센터</a>
                        </li>

                        <li class="side_item side_premium">
                            <a href="/selfguide/index.asp"><i></i>프리미엄</a>
                        </li>
                    </ul>



                </aside>
            </div>
        </div>
        <a href="#" class="stu_scroll_top"><span>맨 위로 가기</span><i></i></a>
    </header>













    <!--메인영역_Str-->
    <main class="stu_clearfix">

        <section class="stu_top_banner" >
            <div class="stu_inner_wrap">
                <div class="caution">
                    <p>본 상품은 <span>UnderPressureDivers</span>의 책임하에 판매되고 있습니다.</p>




                </div>
                <!--Swiper Banner-->

                <div class="swiper-container mainVisual">

                    <ul class="linkArea">
                        <li style="background:#fff;border-radius:4px">
                            <button id="btn_like" class="ico_like1" type="button" onclick="location.href='javascript:toggleLike()'"></button>
                        </li>
                    </ul>

                    <!--Image Slider-->
                    <div class="swiper-wrapper">

<script>
function toggleLike()
{
		

	window.location="/common/login.asp";

}
</script>

<div class="swiper-slide">                        <img  class="lazyload" data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/b3145ba07457b6427fdebbb253d17384_l.jpg" width="100%" alt=""></div><div class="swiper-slide">                        <img  class="lazyload" data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/5a2199f703a6cb0e1cd84a3d29852a9d_l.jpg" width="100%" alt=""></div><div class="swiper-slide">                        <img  class="lazyload" data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/f9bd6b6dd3d18b225363d641015d465e_l.jpg" width="100%" alt=""></div><div class="swiper-slide">                        <img  class="lazyload" data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/450586fb919e333e5f0273022ecd7b88_l.jpg" width="100%" alt=""></div>

                    </div>
                    <!--Swiper Pagination-->
                    <div class="swiper-pagination swiper-pagination-fraction mainVisual-pagination">
                    </div>
                    <!--Swiper Navigaion-->
                    <div class="swiper-button-next mainVisual-button-next"></div>
                    <div class="swiper-button-prev mainVisual-button-prev"></div>
                </div>
                <!--Main Info-->
                <div class="mainInfo-container">
                    <div class="mainInfo">
                        <ul class="loc">
                            <li><a href="/market/index_ctry.asp?region=12101">스페인</a></li>
                            <li><a style="display:inline-block" href="/market/index_city.asp?region=121011002">바르셀로나</a>

&nbsp;,&nbsp;<a  style="display:inline-block" href="/market/group.asp?serial=79&needlogin=&access_key=&trip_id=">코스타브라바 다이빙/스노클링</a>

		</li>
                        </ul>

		<h2 class="stu_h2_title">[스투비 독점할인]무경험/초보자 체험 비치다이빙</h2>



                        <ul class="tag">
                            <li>

                               #바르셀로나 근교&nbsp; # 지중해 바다를 누비다!
                           </li>
                        </ul>



                        <div class="price_wrap stu_clearfix" style="height:70px">





                            <div class="score">
                                <div class="ico_star_bg">

                                    <div class="ico_star" style="width:100%;"></div>


                                </div>
                                <p class="score_average">
                                    <span>5</span>(68명 예약)
                                </p>
                            </div>



                            <div class="priceArea" style="line-height:100%">


                                <strong class="price">￦ 140,620~


			</strong>



                             
                            </div>
                        </div>




<div class="couponArea" >
<div class="couponWrap">
	<div class="titArea"><i></i><p class="typeA">쿠폰 혜택</p></div>
	<div class="couponBox" onclick="getCoupon('12101_22')">
		<p>스노클링 1인 x 5천원 쿠폰</p><i></i>
	</div>
</div>
</div>



<script>
function getCoupon(cid)
{

	window.location="https://www.stubbyplanner.com/common/login.asp"

}
</script>


        

<script>
 $(document).ready(function() {

	$(".discount_price").css("display","none");

});
</script>
                        <ul class="prdIcon">
                            <li id="typeA" style="overflow-x:hidden">
                                <div class="t-v-mid">
                                    <div class="d-ib">
                                        <div class="t-v-mid-box">
                                            <div class="t-v-mid ico-wrap">
                                                <i class="ico_prd prd_A"></i>
                                            </div>
                                            <div class="t-v-mid txt-wrap">
                                                <p class="typeA">액티비티</p>
                                                <p class="typeB">1명 이상</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                             <li id="typeB">
                                <div class="t-v-mid">
                                    <div class="d-ib">
                                        <div class="t-v-mid-box">
                                            <div class="t-v-mid ico-wrap">
                                                <i class="ico_prd prd_B"></i>
                                            </div>
                                            <div class="t-v-mid txt-wrap">
                                                <p class="typeA">4시간</p>
                                                <p class="typeB">09:00</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li id="typeC">
                                <div class="t-v-mid">
                                    <div class="d-ib">
                                        <div class="t-v-mid-box">
                                            <div class="t-v-mid ico-wrap">
                                                <i class="ico_prd prd_C"></i>
                                            </div>
                                            <div class="t-v-mid txt-wrap">
                                                <p class="typeA">한국어</p>
                                                <p class="typeB">언어</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!--Contact button-->
                    <div class="btnBox">
                       


		 <a  class="btn_left"   href="http://pf.kakao.com/_QwGUM/chat" target="_blank">카톡문의</a>

	

                        <a  class="btn_right"  href="javascript:openMyModal()">간편예약</a>



                    </div>
                </div>
            </div>
        </section>
        <section class="stu_nav_container" >
            <div class="stu_inner_wrap">
                <div class="stu_nav_left">
                    <a href="#s1">상품 소개</a>
                    <a href="#s2">투어 코스</a>
                    <a href="#s3">유의사항</a>
                    <a href="#s4">후기</a>
                    <a href="#s5">문의</a>
                    <a href="#s6" class="extLink end"></a>
                </div>
                <div class="stu_nav_right">
                    <div class="stu_btnBox">




		 <a class="stu_btn_left"  href="javascript:plusFriendChat()">카톡문의</a>
	
                        <a  class="stu_btn_right" href="javascript:openMyModal()">간편예약</a>

                    </div>
                </div>
            </div>
        </section>
        <section class="stu_s1">
            <div class="stu_inner_wrap">
                <div class="stu_right_wrap">
                    <div class="stu_division">
                        <!-- Company Info -->
                        <div class="company_info">
                            <dl>
                                <dt>
                                    <a href="#" target="_blank">
                                        <img class="fh lazyload" src="http://www.stubbyplanner.com/crowd/comlogo/UPD.jpg" alt=""/>
                                    </a>
                                </dt>
                                <dd>
                                    <p class="stu_name">
                                        <a href="#" style="font-size:20pt;font-family: 'Amatic SC', 'Sunflower'">UnderPressureDivers</a>
                                    </p>
                                    <p class="stu_description">
                                        언더프레셔다이버스는 20년이 넘는 경험을 갖고 있는 독립적인 다이버 센터입니다. 안전하고 황홀한 다이빙을 경험시켜 드립니다.
                                    </p>
                                </dd>
                            </dl>
                        </div>
                    </div>
                    <div class="stu_division pd-0">

                        <div class="tb-title" onclick="togglePriceDetail()">
                            <h4 class="stu_h4_title" id="price_title">가격 상세정보 <font style="font-size:9pt;color:#3ad195">최저가 보장제</font></h4>
                        </div>

                        <div class="tb-wrap d-n" id="divPriceDetail" >
                            <div class="info-wrap">
                                <h4 class="stu_h4_title">가격표 <font style="font-size:9pt;color:#3ad195">최저가 보장제</font></h4>
                                <table class="stu_price">
                                    <colgroup>
                                        <col style="width:55%">
                                        <col style="width:45%">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th class="t-bold">구분</th>
                                            <td class="t-bold"></td>
                                        </tr>


		<tr style="background:#ffffff">
			<th>비치다이빙(무경험/초보자)체험 다이빙</th>
			<td>
				100EUR<br><font style="font-size:9pt;color:#c0c0c0">140,622KRW</font>
	

			</td>
		</tr>


		<tr style="background:#ffffff">
			<th>[2개월전 할인]슈퍼얼리버드</th>
			<td>
				70EUR<br><font style="font-size:9pt;color:#c0c0c0">98,435KRW</font>
	

			</td>
		</tr>


		<tr style="background:#ffffff">
			<th>슈퍼결합할인</th>
			<td>
				80EUR<br><font style="font-size:9pt;color:#c0c0c0">112,498KRW</font>
	

			</td>
		</tr>


		<tr >
			<th>[2개월전 할인]얼리버드</th>
			<td>
				94EUR<br><font style="font-size:9pt;color:#c0c0c0">132,185KRW</font>
	

			</td>
		</tr>


		<tr >
			<th>결합할인</th>
			<td>
				97EUR<br><font style="font-size:9pt;color:#c0c0c0">136,403KRW</font>
	

			</td>
		</tr>



                                    </tbody>
                                </table>
                            </div>

		<div><p style="font-size:10pt;padding-top:5px;padding-bottom:10px;">
			<b><font style="color:#3ad195">최저가 보장제</font> 상품으로 만약 최저가가 아니라면 차액을 환불해 드립니다.</b><br>
			 다른 사이트에서 동일한 상품을 더 낮은 금액으로 판매중인 것이 확인된 경우 최저가를 보장해 드립니다.<br>
			<a href="https://forms.gle/4iT6yy7ybPVLrv9F9" target="_blank"><u>최저가 보장 조건 확인 및 신고하기 ></u></a>
		</p></div>

                            <div class="stu_btn bg_line" onclick="fnMove('3')">
                                포함 / 불포함사항
                            </div>
                        </div>
                    </div>








                </div>

                <div class="stu_left_wrap">






                    <div class="stu_eventBanner">
                        <div class="selfbook_banner">
                            <a href="javascript:showGuidebookPreview()" class="stu_clearfix">
                                <div class="stu_txt_wrap">
                                    <p>투어 구매자 혜택</p>
                                    <b>바르셀로나 여행족보 무료 증정!</b>
                                    <span>꺼내먹어요, 초콜렛처럼_떠먹여주는 바르셀로나 가이드북</span>
                                </div>
                                <span class="stu_badge">eBook</span>
                                <div class="stu_img_wrap">
                                    <img src="https://stuweb.s3.amazonaws.com/photo/1/2/2d7db81f67276f4eecc53d398a273bb7_l.jpg" alt=""/>
                                </div>
                            </a>
                        </div>
                        <div class="stu_btn bg_line">셀프북 미리보기</div>
                        <div class="swiper-container selfbook_preview">
                            <ul class="swiper-wrapper">
                                <li class="swiper-slide">
                                    <div class="txtBox first">
                                        <b>셀프북 미리보기</b>
                                        <p>예약확정후 이메일로 열람 링크 제공<br/>예약확정후 투어일+3일까지 열람가능</p>
                                    </div>
                                </li>
<li class="swiper-slide"><img style="margin-left:0px;margin-bottom:2px;box-shadow: 1px 1px 1px 0px gray" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/a11ecb2515ecd15cb766d957d7f56829.png" width="90px"></li><li class="swiper-slide"><img style="margin-left:0px;margin-bottom:2px;box-shadow: 1px 1px 1px 0px gray" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/712c838dba1b89de38f13f9f01297141.jpg" width="90px"></li><li class="swiper-slide"><img style="margin-left:0px;margin-bottom:2px;box-shadow: 1px 1px 1px 0px gray" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/28ef5f6123ae33714e7359952c8fd89f.jpg" width="90px"></li><li class="swiper-slide"><img style="margin-left:0px;margin-bottom:2px;box-shadow: 1px 1px 1px 0px gray" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/6fa036f6911d27d81a63ca0c791e1ace.jpg" width="90px"></li><li class="swiper-slide"><img style="margin-left:0px;margin-bottom:2px;box-shadow: 1px 1px 1px 0px gray" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/f758c9aa959ffc6de7d945b7ad0339ea.jpg" width="90px"></li><li class="swiper-slide"><img style="margin-left:0px;margin-bottom:2px;box-shadow: 1px 1px 1px 0px gray" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/ef428924812da7bd6a62ab507aea336c.jpg" width="90px"></li><li class="swiper-slide"><img style="margin-left:0px;margin-bottom:2px;box-shadow: 1px 1px 1px 0px gray" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/b785c24014791b8bd7723e02e10fc07f.jpg" width="90px"></li><li class="swiper-slide"><img style="margin-left:0px;margin-bottom:2px;box-shadow: 1px 1px 1px 0px gray" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/303fd9d5c719d3447e23998aa5897f6d.jpg" width="90px"></li><li class="swiper-slide"><img style="margin-left:0px;margin-bottom:2px;box-shadow: 1px 1px 1px 0px gray" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/bd614af0ea0fabce0f3962c67ecae9de.jpg" width="90px"></li><li class="swiper-slide"><img style="margin-left:0px;margin-bottom:2px;box-shadow: 1px 1px 1px 0px gray" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/a02986532046685d2e70542e8c4d4f38.jpg" width="90px"></li><li class="swiper-slide"><img style="margin-left:0px;margin-bottom:2px;box-shadow: 1px 1px 1px 0px gray" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/69d9539d820f2c691948740bd5ef17d0.jpg" width="90px"></li><li class="swiper-slide"><img style="margin-left:0px;margin-bottom:2px;box-shadow: 1px 1px 1px 0px gray" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/803c4ecc8f6051907926abb67902a2a5.jpg" width="90px"></li><li class="swiper-slide"><img style="margin-left:0px;margin-bottom:2px;box-shadow: 1px 1px 1px 0px gray" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/f5f1963a13ed847f551a3be28b3accc5.jpg" width="90px"></li><li class="swiper-slide"><img style="margin-left:0px;margin-bottom:2px;box-shadow: 1px 1px 1px 0px gray" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/751266b34f0da762d807540997151dbe.jpg" width="90px"></li><li class="swiper-slide"><img style="margin-left:0px;margin-bottom:2px;box-shadow: 1px 1px 1px 0px gray" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/983fdb6fbd76799db398cbe36eef85a4.jpg" width="90px"></li><li class="swiper-slide"><img style="margin-left:0px;margin-bottom:2px;box-shadow: 1px 1px 1px 0px gray" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/262c9727a7fa8bc14be0effa71749a54.jpg" width="90px"></li><li class="swiper-slide"><img style="margin-left:0px;margin-bottom:2px;box-shadow: 1px 1px 1px 0px gray" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/dfe0573dddc6b62a7c79f74cbc2677fb.jpg" width="90px"></li><li class="swiper-slide"><img style="margin-left:0px;margin-bottom:2px;box-shadow: 1px 1px 1px 0px gray" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/3d9837a78b2ea52ba23a0b7748c53d58.jpg" width="90px"></li><li class="swiper-slide"><img style="margin-left:0px;margin-bottom:2px;box-shadow: 1px 1px 1px 0px gray" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/222f80bb9b9b5abfac908e6fc4f59c95.jpg" width="90px"></li><li class="swiper-slide"><img style="margin-left:0px;margin-bottom:2px;box-shadow: 1px 1px 1px 0px gray" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/7350e746d974b5ae8e9874ae90d91f6c.jpg" width="90px"></li><li class="swiper-slide"><img style="margin-left:0px;margin-bottom:2px;box-shadow: 1px 1px 1px 0px gray" src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/4feea12df8b2b664ff037a8c18eb2599.jpg" width="90px"></li>                               
                                <li class="swiper-slide">
                                    <div class="txtBox last">
                                        <p>미리보기는<br/>20페이지만<br/>제공됩니다.</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>


                    <div class="stu_division" id="introDetail">


		<p class="stu_more">
                                       <b>스투비 독점 할인중!</b><br>
1. 값싼 다른 스쿠버다이빙 업체들과 다르게 1대1로 진행해서 훨씬 안전하게 체험가능<br>
2. 입수전에 주의사항을 한국인 강사분이 이유까지 설명해드림. (코스타브라바 유일의 한국인패디 PADI)<br>
3.  스페인 코스타브라바 스쿠버 업체에 유일한 한국인 여성 CEO분이 친철하게 안내해드림.
<Br>
<iframe width=100% height='315' src='https://www.youtube.com/embed/79OH9ce_OBo' frameborder='0' allowfullscreen></iframe><br><br>
스페인 바르셀로나에서 조금 떨어진 코스타브라바 지중해의 푸른 바다 속이 궁금하신가요? 스쿠버다이빙을 처음 경험한 분들의 소감에는 도전, 자유, 짜릿함, 스릴, 웅장함, 신비, 영적인 경험, 자연과의 물아일체, 날아감, 우주유영, 상상초월, 편안함, 안식, 성취감, 평화, 스트레스 해소 등의 단어가 꼭 들어가 있습니다. 
지구의 70%를 차지하고 있는 미지의 세계 바닷속을 탐험하시고 그동안 우리가 알지 못했던 70%의 나머지 세상을 언더프레셔다이버스와 함께 안전하고 즐겁게 탐험해 봐요!
     		 </p>

                       



                        <div class="stu_img_wrap">

                        <img data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/405c0fa1d92d0a8f5753863eca94780e_l.jpg" class="lazyload"></div>

		<p class="stu_more">
                                       **무경험 초보자를 위한 체험 다이빙 코스!**
<br><br>
자격증이 없어도 간단한 기술과 안전수칙, 수신호를 교육받은 후 지중해의 이국적인 바닷속 세상을 탐험해보는 프로그램입니다. <br>
최대 수심 6m까지 다이빙하게 되시는데요, 만10세 이상이면 나이제한 없이 누구나 즐기실 수 있는 레포츠입니다. 가족, 연인, 친구끼리 멋진 경험과 추억을 공유하세요! 
<br><br>
체험 다이빙은 밀접한 강사의 직접 감독하에 진행되며 간단하고 편하게 아름답고 신비한 수중세계를 경험해 보실 수 있습니다. 지금도 많은 분들이 지구의 70%를 차지하고 있는 미지의 세계로 도전을 하고 있으며 여러분도 체험 다이빙을 통해 무중력의 흥분과 다양한 바닷속 풍경, 생물들을 맛보시기 바랍니다. 
     		 </p>

                       



                        <div class="stu_img_wrap">

                        <img data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/60d86372119c6d4c5990df3a813d2dfe_l.jpg" class="lazyload"></div>

		<p class="stu_more">
                                       스페인 바르셀로나 앞에 펼쳐진 지중해의 푸른바다가 여러분을 기다리고 있습니다! '니모를 찾아서'에서만 보던 다양한 수중생물과 알록달록한 산호초를 구경해보고 싶지 않으신가요? 우주에 온 듯한 무중력 체험은 그 자체로 매력적인데요, 바르셀로나로 갈 계획이시라면 수중 생태계가 잘 보존된 바르셀로나 지중해 코스타브라바에서 스쿠버 다이빙 하는건 필수 코스로 넣으시는게 좋답니다! 
     		 </p>

                       



                        <div class="stu_img_wrap">

                        <img data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/57e803554d22b45afb722157af2f31a2_l.jpg" class="lazyload"></div>

		<p class="stu_more">
                                       스쿠버다이빙을 어렵고 진입장벽이 높은 레포츠라고 생각하지 마세요~스쿠버다이빙은 만 10세 이상의 건강한 남녀노소, 모든 세대가 함께 즐기실 수 있는 레포츠랍니다. 지금 시작해 보세요! 우리가 살고 있는 지구의 나머지 세상의 문을 여는 첫 도전이 될 수 있습니다. 
     		 </p>

                       


			<p class="stu_more">
				<b>코스타브라바 유일의 한국인패디(PADI) 스쿠버 다이빙 전문업체 언더프레셔다이버스!</b><br>
				<img src="https://stuweb.s3.amazonaws.com/photo/1/2/ef95a076cd5913e794675d42f50d1d6f.jpg" alt="padi로고" style="width:100%";>
<br><br>
언더프레셔다이버스의 전문적이고 숙련된 강사들은 여러분의 안전하고 재미있는 스쿠버다이빙을 책임집니다! 
<br><br>
PADI는 전세계를 선도하는 가장 앞선 스쿠버 다이빙 트레이닝 기관입니다. 50년 이상의 경험과 전세계 133,000명 이상의 PADI프로페셔널들과 함께 2,500만 이상의 자격증이 발급되었습니다. 그리고 전세계 186개 국가에 6,400개 이상의 다이브센터와 리조트들과 더불어 PADI 트레이닝 서비스는 전세계 어디에서든지 스쿠버다이빙을 경험할 수 있도록 해줍니다. PADI 강사들과 함께하는 스쿠버다이빙은 당신의 삶에 다채로운 경험을 불어넣어 드릴 것입니다. <br>
                                    </p>
	


                       


			<p class="stu_more">
				<b>자주하는 질문과 답변</b><br>
				Q. 수온은 어떻나요? <BR>
A. 16도에서 한여름에는 25도까지 오릅니다. 웻수트를 입고 다이빙을 하기에 약 3-40분간은 그다지 춥다고 느끼지 않으실 거에요.<BR><BR>

Q. 총 소요되는 시간은 어느정도인가요?<BR>
A. 차량이동-브리핑-다이빙까지 모두 합하여 약 3-4시간 정도 소요됩니다.<BR><BR>

Q. 수영을 잘해야 하나요?<BR>
A. 수영을 할 줄 아시면 도움이 되지만 가장 중요한 것은 물속에서 편안하게 재미를 느끼실 수 있는가입니다. 수영을 못하셔도 물에 대한 거부감이 없으시다면 쉽게 도전 가능하십니다. 
<BR><bR>
Q. 사진/동영상 촬영이 가능한가요?<BR>
A. 가능합니다. 현장지급 60유로로 수중 카메라를 이용한 사진/동영상 촬영 서비스를 받아보실 수 있습니다. <br>
                                    </p>
	


                       


                    </div>
                </div>

                <div class="stu_cont-btn-wrap">
                    <button type="button" class="stu_cont-btn on" onclick="toggleIntroDetail()">설명 더보기</button>
                </div>

            </div>
        </section>


        <section class="stu_s2">
            <div class="stu_inner_wrap">
                <div class="stu_left_wrap">



                    <div class="stu_division pd-b-0">
                        <h3 class="stu_h3_title">미팅장소</h3>

                        <div class="stu_box_wrapper stu_clearfix">

                            <div class="map_box" style="width:100%">
		<a href="https://www.google.com/maps/place/41.8407645,2.8006186999999727/" target="_blank"><img class="fw"  src="https://maps.googleapis.com/maps/api/staticmap?center=41.8407645,2.8006186999999727&zoom=16&size=800x300&maptype=roadmap&markers=color:green%7C41.8407645,2.8006186999999727&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I"></a>
                            </div>

                        </div>

                        <div class="stu_box_wrapper stu_clearfix">
                            <div class="txt_box">
                                <h4 class="stu_h4_title ico mt-p">미팅포인트</h4>
                                <p class="stu_more">
                                    <b> Caldes de Malavella station</b><br/>
			** 바르셀로나 도심에 있는 기차역 Passeig de Gracia(파세이그 데 그라시아)역에서, 기차 탑승후 약 1시간 10분 소요
                                </p>
                            </div>
                            <div class="txt_box">

                                <h4 class="stu_h4_title ico mt-t">미팅시간</h4>
                                <p class="stu_more">
	                                오전 9시 전후
                                </p>

                            </div>
                        </div>
                    </div>


                    <div class="stu_division">
                        <h3 class="stu_h3_title">투어 코스</h3>

		<div class="route_summary">
		<p>미팅장소 → 다이빙센터 → 서류작성 → 장비지급 → 브리핑(기본기술, 안전수칙, 수신호 등) → 다이빙사이트 이동 → 장비착용 → 본격적인 다이빙 → 디브리핑(후기) </p>
		</div>

                    </div>
                </div>
            </div>
        </section>
        <section class="stu_s3">
            <div class="stu_inner_wrap">
                <div class="stu_left_wrap">
                    <div class="stu_division">
                        <h3 class="stu_h3_title">꼭! 확인하세요</h3>
                        <div class="stu_box_wrapper stu_clearfix">
                            <div class="txt_box">
                                <h4 class="stu_h4_title">가격 포함사항</h4>
                                <p class="stu_more">
	 *미팅장소에서 센터 사이 픽업/샌딩<br>	 *
장비 스쿠버 다이빙 기본장비 (BCD,호흡기,웻수트,부츠,마스크,핀,스노클,탱크,웨이트)<br>	 *
강사(PADI강사 혹은 다이브 마스터)<br>	 *
탈의실과 간단한 샤워<br>	 *
<br>	 *
모든 투어비용은 차량이동비, 안전을 위한 보험, 장비 대여비, 강사비가 일괄 포함되어 있습니다. (코스타브라바의 지형적인특징상 대중교통접근이 굉장히불편합니다. 말하자면 차량공급이 꼭 필요한지역입니다.)<br>	 *
언더프레셔다이버스는 가격의적절성을위해 소비자가직접 안내드리는대중교통(기차)로 미팅장소까지 오시면미팅장소에서 픽업하여센터와 다이빙포인트까지의 차량을 제공하고있습니다(이 픽업서비스는 선택사항이 아니며직접다이빙센터로 오시더라도 투어비에서절감은없습니다.)<br>		
		     </p>
                                <h4 class="stu_h4_title">가격 불포함사항</h4>
                                <p class="stu_more">
	* 수영복 혹은 젖어도 되는 옷,타월<br>	* 
선택옵션<br>	* 
1.동영상/사진 촬영(최대 2명 쉐어) 60유로<br>	* 
2.토치 8유로<br>	* 
3.컴퓨터 8유로<br>	* 
4.나이트록스 8유로<br>
                                </p>
                            </div>
                            <div class="txt_box">
                                <h4 class="stu_h4_title">환불정책</h4>
                                <p class="stu_more">

* <b>슈퍼얼리버드</b> 가격으로 예약할 경우, 확정후 취소/환불은 불가하며, 투어날짜 변경은 투어일 기준 5일전까지 요청가능하며. 동일한 상품이 변경을 희망하는 날짜에 잔여석이 있을  경우에 한해서만 변경이 가능합니다. 이때 날짜변경 수수료는 다음과 같은 방식으로 계산됩니다. <br>*날짜변경 수수료= (일반 판매가 - 구매하신 할인금액)
<br>
<b>얼리버드</b>, 일반가격으로 예약할 경우,  취소/환불규정은  아래 환불규정을 따릅니다.<br>
<br>
*5일전까지 취소시 :100% 환불<br>*투어 예약일로부터 5일 이후 취소시 :환불 불가<br>
<br>
* <b>결합할인</b> 가격으로 예약한 뒤, 이전 예약 건을 가이드측 사유가 아닌 개인사유로 취소할 경우, 다음 예약으로 할인받은 금액을 공제한 뒤 해당 상품의 환불규정에 따라 환불처리됩니다.
<br><br>

                                </p>
                            </div>
                        </div>
                        <div class="stu_box_wrapper stu_clearfix">
                            <h4 class="stu_h4_title">유의사항</h4>
                            <p class="stu_more">


* <b>결합할인</b> 은 얼리버드할인등 기타 할인과 중복적용이 불가능합니다.<br>

                                            
                                             *  <font color="red"> 천재지변이나 날씨, 당사의 불가피한 사정으로 인한 투어취소시 100% 환불 해드립니다. </font><br>

                                            
                                             *  
<font color="red"> 지각이나 본인 실수, 무단 투어 불참시 환불이 불가합니다. </font><br>

                                            
                                             *  
모든 프로그램은 최소만 10세부터 가능하십니다. <br>

                                            
                                             *  
체험다이빙 후 최소 12시간동안은 비행기 탑승을 하지 않으시는 것을 권장해 드리고 있습니다.<br>

                                            
                                             *  
스쿠버다이빙 체험은 비행기탑승 최소 24시간 전에 하시는 것이 가장 바람직합니다.<br>

                                            
                                             *  
수영복 혹은 웻수트 아래 입을 수 있는 물놀이용 스포트웨어와 타월을 꼭 준비해주세요.<br>

                                            
                                             *  
천재지변이나 날씨, 당사의 불가피한 사정으로 인한 투어취소는 100% 환불을 해드립니다.<br>

                                            
                                             *  
소비자의 날짜, 시간변경은 어떤경우든 최소 72시간 전에 해주시기를 권장드립니다. <br>

                                            
                                             *  
지각이나 본인실수로 투어에 불참하는 경우 환불은 불가합니다.<br>

                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>



        <section class="stu_s4">
            <div class="stu_inner_wrap">
                <div class="stu_left_wrap">
                    <div class="stu_division">
                        <div class="score-container">
                            <h3 class="stu_h3_title">이용후기</h3>
                            <div class="score-lft">
                                <div class="score-wrap">
                                    <div class="scoreBox">
                                        <div class="ico_star_bg">
                                            <div class="ico_star" style="width:99%;"></div>
                                        </div>
                                        <p class="score_average">
                                            <strong>4.9</strong> / 5.0
                                        </p>
                                    </div>
                                    <p class="reviewCount">
                                        <strong>15</strong>개의 이용후기가 있습니다.
                                    </p>

                                    <ul class="surveyBox">
                                        <li>
                                            <div class="s_title">프로그램</div>
                                            <div class="s_average">4.9</div>
                                        </li>
                                        <li>
                                            <div class="s_title">전문성</div>
                                            <div class="s_average">4.9</div>
                                        </li>
                                        <li>
                                            <div class="s_title">친절도</div>
                                            <div class="s_average">5.0</div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>


                        <div id="stu_js-load" class="review-container">
                            <ul id="stu_js-load" class="review-wrap">


<!---후기 시작---->



                                <li class="review-box stu_js-load">
                                    <div class="left-wrap">
                                        <div class="ico_star_bg">

                                            <div class="ico_star" style="width:100%;">
                                                <p class="score_average">5.0</p>
                                            </div>


                                        </div>
                                        <div class="author">

		<em class="name">김미진</em>

                                            <span class="line">│</span>
                                            <span class="">9월 20일 투어참가</span>
                                            <span class="line">│</span>
                                            <span class=""><br>20대후&nbsp;배낭(여성)</span>
                                        </div>
                                        <div class="reg-date"> </div>
                                    </div>
                                    <div class="right-wrap">
                                        <dl class="survey-text">

                                            <dt>평점</dt>
                                            <dd>5.0</dd>

                                        </dl>
                                        <article class="review-text">

				<div><font style="color:#696969;font-weight:bold">GOOD</font>  스쿠버다이빙 처음이었음에도 불구하고 쉽고 재밌게 즐길 수 있었습니다! 우선 바다에 들어가기 전에 꼼꼼하게 설명해주시고 바다에 들어간 뒤에도 지도사님이 상태괜찮은 지 수신호로 계속 확인해주셔서 잘 즐길 수 있었습니다! 또한 안전과 관련된 사항을 한국인 강사님께 한국어로 들을 수 있었던 게 가장 큰 만족사항이었습니다! 강사님이 친절하게 옷입는 것부터 이후 일정까지 도와주시고 바다에 들어가기 전에 긴장되는 것도 풀어지게 이야기해주셔서 너무 감사했습니다! 바닷물도 깨끗해서 물고기도 다양하게 보고 바닷 속도 구경할 수 있었습니다! 혼자 여행가면 액티비티할 때 여러 제약 사항이 있었는 데 혼자 온 불편함이 전혀 없이 재밌게 잘 즐기다 올 수 있었습니다!</div>

			<hr style="margin-top:5px;margin-bottom:5px;border:1px solid #efefef"/>

				<div><font style="color:#696969;font-weight:bold">NOT GOOD</font>  기차표를 현장구매할 수 있다고 공지사항에 써있으면 더 좋겠습니다!</div>

			</article>



                                    </div>
                                </li>





                                <li class="review-box stu_js-load">
                                    <div class="left-wrap">
                                        <div class="ico_star_bg">

                                            <div class="ico_star" style="width:100%;">
                                                <p class="score_average">5.0</p>
                                            </div>


                                        </div>
                                        <div class="author">

                                            <em class="name">guswls0***</em>

                                            <span class="line">│</span>
                                            <span class="">9월 18일 투어참가</span>
                                            <span class="line">│</span>
                                            <span class=""><br>20대후&nbsp;배낭(여성)</span>
                                        </div>
                                        <div class="reg-date"> </div>
                                    </div>
                                    <div class="right-wrap">
                                        <dl class="survey-text">

                                            <dt>평점</dt>
                                            <dd>5.0</dd>

                                        </dl>
                                        <article class="review-text">

				<div><font style="color:#696969;font-weight:bold">GOOD</font>  사장님이 한국분이셔서 사전에 안전규칙도 꼼꼼히 설명해주시구요!
픽업샌딩할때도 친근하게 말걸어주셔서 넘넘 좋았어요 ㅎㅎ
바다도 엄청 깨끗하구요 물고기랑 해파리도 보고 즐거운 투어였습니다

바로 한정거장 다음이 지로나입니다~
투어끝나고 사장님이 추천해주시는 메누델디아 먹고 지로나 자유여행하시기도 좋을것 같아요
덕분에 잘 놀다 갑니당</div>

			</article>



                                    </div>
                                </li>





                                <li class="review-box stu_js-load">
                                    <div class="left-wrap">
                                        <div class="ico_star_bg">

                                            <div class="ico_star" style="width:100%;">
                                                <p class="score_average">5.0</p>
                                            </div>


                                        </div>
                                        <div class="author">

		<em class="name">김규리</em>

                                            <span class="line">│</span>
                                            <span class="">8월 16일 투어참가</span>
                                            <span class="line">│</span>
                                            <span class=""><br>20대후&nbsp;배낭(여성)</span>
                                        </div>
                                        <div class="reg-date"> </div>
                                    </div>
                                    <div class="right-wrap">
                                        <dl class="survey-text">

                                            <dt>평점</dt>
                                            <dd>5.0</dd>

                                        </dl>
                                        <article class="review-text">

				<div><font style="color:#696969;font-weight:bold">GOOD</font>  스쿠버다이빙을 처음해본 거라 걱정이 많았는데 선생님들께서 너무 친절하게 사전에 잘 알려주시고 물에서도 밀착으로ㅎㅎ 잘 챙겨주셔서 안전하고 즐겁게 경험했습니다! 기회가 되면 라이센스도 따서 더 깊이 가보고싶네요! 
다음에 또 갈게요♡</div>

			</article>



                                    </div>
                                </li>





                                <li class="review-box stu_js-load">
                                    <div class="left-wrap">
                                        <div class="ico_star_bg">

                                            <div class="ico_star" style="width:100%;">
                                                <p class="score_average">5.0</p>
                                            </div>


                                        </div>
                                        <div class="author">

                                            <em class="name">clem***</em>

                                            <span class="line">│</span>
                                            <span class="">6월 23일 투어참가</span>
                                            <span class="line">│</span>
                                            <span class=""><br>30대&nbsp;배낭(여성)</span>
                                        </div>
                                        <div class="reg-date"> </div>
                                    </div>
                                    <div class="right-wrap">
                                        <dl class="survey-text">

                                            <dt>평점</dt>
                                            <dd>5.0</dd>

                                        </dl>
                                        <article class="review-text">

				<div><font style="color:#696969;font-weight:bold">GOOD</font>  사장님이 친절하시고 전문적이셔서, 스쿠버다이빙 처음해보는데도 재밌게 즐길 수 있었어요!
바닷속 컨디션도 좋고 시야도 좋았어요~
코스타브라바 자체도 여유롭고 한적하고 정말 좋았어요.</div>

			<hr style="margin-top:5px;margin-bottom:5px;border:1px solid #efefef"/>

				<div><font style="color:#696969;font-weight:bold">NOT GOOD</font>  없습니다.</div>

			</article>
<img class="lazyload blur-up"  style="width:100%;border-radius:15px" data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/56b62c01d6c5fe59acf167b8b2ca039e.JPG">



                                    </div>
                                </li>





                                <li class="review-box stu_js-load">
                                    <div class="left-wrap">
                                        <div class="ico_star_bg">

                                            <div class="ico_star" style="width:100%;">
                                                <p class="score_average">5.0</p>
                                            </div>


                                        </div>
                                        <div class="author">

                                            <em class="name">sjeon***</em>

                                            <span class="line">│</span>
                                            <span class="">7월 29일 투어참가</span>
                                            <span class="line">│</span>
                                            <span class=""><br>20대초&nbsp;배낭(여성)</span>
                                        </div>
                                        <div class="reg-date"> </div>
                                    </div>
                                    <div class="right-wrap">
                                        <dl class="survey-text">

                                            <dt>평점</dt>
                                            <dd>5.0</dd>

                                        </dl>
                                        <article class="review-text">

				<div><font style="color:#696969;font-weight:bold">GOOD</font>  보통 이런 액티비티 하러가면 설명 대충 간단히 해주고 바로 들어가는데 자세히 다 설명해주셔서 좋았어요 그리고 체험도 진짜 바닷속 구경 실컷 한 느낌이었어요 체험시간이 짧지 않았던 거 같아서 좋았습니다 바닷속도 진짜 예뻤고 시야가 정말 정말 좋았어요</div>

			</article>



                                    </div>
                                </li>





                                <li class="review-box stu_js-load">
                                    <div class="left-wrap">
                                        <div class="ico_star_bg">

                                            <div class="ico_star" style="width:100%;">
                                                <p class="score_average">5.0</p>
                                            </div>


                                        </div>
                                        <div class="author">

                                            <em class="name">cracke***</em>

                                            <span class="line">│</span>
                                            <span class="">6월 21일 투어참가</span>
                                            <span class="line">│</span>
                                            <span class=""><br>30대&nbsp;배낭(남성)</span>
                                        </div>
                                        <div class="reg-date"> </div>
                                    </div>
                                    <div class="right-wrap">
                                        <dl class="survey-text">

                                            <dt>평점</dt>
                                            <dd>5.0</dd>

                                        </dl>
                                        <article class="review-text">

				<div><font style="color:#696969;font-weight:bold">GOOD</font>  이 비치 다이빙의 가장 큰 강점은 한국인 코치님이 계신다는 점입니다.
처음 설명부터 스쿠버 다이빙을 끝내고 마무리 할 때 까지 한국말로 소통할 수 있습니다.
물 공포증이 좀 있어서 물에 들어가기 전까지도 걱정을 많이 했는데 코치님의 지도 아래 아무 걱정없이 즐겁게 체험하고 나온것 같습니다.</div>

			<hr style="margin-top:5px;margin-bottom:5px;border:1px solid #efefef"/>

				<div><font style="color:#696969;font-weight:bold">NOT GOOD</font>  없습니다.</div>

			</article>



                                    </div>
                                </li>





                                <li class="review-box stu_js-load">
                                    <div class="left-wrap">
                                        <div class="ico_star_bg">

                                            <div class="ico_star" style="width:100%;">
                                                <p class="score_average">5.0</p>
                                            </div>


                                        </div>
                                        <div class="author">

		<em class="name">김소원</em>

                                            <span class="line">│</span>
                                            <span class="">6월 4일 투어참가</span>
                                            <span class="line">│</span>
                                            <span class=""><br>20대초&nbsp;배낭(여성)</span>
                                        </div>
                                        <div class="reg-date"> </div>
                                    </div>
                                    <div class="right-wrap">
                                        <dl class="survey-text">

                                            <dt>평점</dt>
                                            <dd>5.0</dd>

                                        </dl>
                                        <article class="review-text">

				<div><font style="color:#696969;font-weight:bold">GOOD</font>  색다른 추억을 얻고 왔어요!! 스페인의 바닷속을 몇명이나 가봤을까 하는 생각으로 신청한 투어! 낯선 타지에서 한국인 강사분에게 한국말로 충분한 설명을 들을 수있었고, 1:1로 함께 물 속에 들어가기때문에 안전을 보장받고 스페인의 아름다운 바닷속을 마음편히 즐기다 왔습니다! 평생 잊지못할 스페인 바닷속이였어요! 비디오 촬영도 해서 그때의 행복한 순간을 두고두고 열어볼수있게됏어요!! 너무 만족합니다!! 추천해요!!</div>

			</article>



                                    </div>
                                </li>





                                <li class="review-box stu_js-load">
                                    <div class="left-wrap">
                                        <div class="ico_star_bg">

                                            <div class="ico_star" style="width:100%;">
                                                <p class="score_average">5.0</p>
                                            </div>


                                        </div>
                                        <div class="author">

                                            <em class="name">ch03***</em>

                                            <span class="line">│</span>
                                            <span class="">6월 6일 투어참가</span>
                                            <span class="line">│</span>
                                            <span class=""><br>20대초&nbsp;배낭(남성)</span>
                                        </div>
                                        <div class="reg-date"> </div>
                                    </div>
                                    <div class="right-wrap">
                                        <dl class="survey-text">

                                            <dt>평점</dt>
                                            <dd>5.0</dd>

                                        </dl>
                                        <article class="review-text">

				<div><font style="color:#696969;font-weight:bold">GOOD</font>  정말 너무너무 잊지 못할 하루였습니다..
가이드분 영국 강사님 두분 다 너무 좋으셨고다이빙 체험도 너무좋아서 잊지 못할거같습니다
다이빙 뿐만 아니라 그날 하루를 행복하게 보냈습니다  꼭 하세요 여러분</div>

			<hr style="margin-top:5px;margin-bottom:5px;border:1px solid #efefef"/>

				<div><font style="color:#696969;font-weight:bold">NOT GOOD</font>  .</div>

			</article>



                                    </div>
                                </li>





                                <li class="review-box stu_js-load">
                                    <div class="left-wrap">
                                        <div class="ico_star_bg">

                                            <div class="ico_star" style="width:100%;">
                                                <p class="score_average">5.0</p>
                                            </div>


                                        </div>
                                        <div class="author">

                                            <em class="name">wlwhs0***</em>

                                            <span class="line">│</span>
                                            <span class="">7월 6일 투어참가</span>
                                            <span class="line">│</span>
                                            <span class=""><br>20대초&nbsp;배낭(남성)</span>
                                        </div>
                                        <div class="reg-date"> </div>
                                    </div>
                                    <div class="right-wrap">
                                        <dl class="survey-text">

                                            <dt>평점</dt>
                                            <dd>5.0</dd>

                                        </dl>
                                        <article class="review-text">

				<div><font style="color:#696969;font-weight:bold">GOOD</font>  한국인 가이드분이 너무 친절하셔서 좋았습니다. 다이빙이끝난후 좋은 식당도 소개를 해주셔서 해외여행중 제일 만족스러운 식사를 할수 있었습니다. 이런 직원을 두신 대표님께 감사드립니다.</div>

			<hr style="margin-top:5px;margin-bottom:5px;border:1px solid #efefef"/>

				<div><font style="color:#696969;font-weight:bold">NOT GOOD</font>  좋은점 밖에 없었던것이 나쁜점 입니다.</div>

			</article>



                                    </div>
                                </li>





                                <li class="review-box stu_js-load">
                                    <div class="left-wrap">
                                        <div class="ico_star_bg">

                                            <div class="ico_star" style="width:100%;">
                                                <p class="score_average">5.0</p>
                                            </div>


                                        </div>
                                        <div class="author">

                                            <em class="name">bhh0***</em>

                                            <span class="line">│</span>
                                            <span class="">7월 20일 투어참가</span>
                                            <span class="line">│</span>
                                            <span class=""><br>30대&nbsp;배낭(여성)</span>
                                        </div>
                                        <div class="reg-date"> </div>
                                    </div>
                                    <div class="right-wrap">
                                        <dl class="survey-text">

                                            <dt>평점</dt>
                                            <dd>5.0</dd>

                                        </dl>
                                        <article class="review-text">

				<div><font style="color:#696969;font-weight:bold">GOOD</font>  처음 경험하시는 분은 꼭! 이 곳에서 체험하시기를 추천합니다~ 다른 스쿠버다이빙 업체들과 달리 1대1로 진행해서 훨씬 안전하게 체험할 수 있었고 물 속에 들어가기 전 주의사항을 한국인 강사분이 이유까지 설명해주셔서 충분히 숙지할 수 있었습니다. (전문적인 과정을 밟으신 한국인 강사님이십니다.) 스쿠버다이빙 장소가 지로나랑 10분 거리라 오전에 체험을 마치고 오후에 무리없이 지로나 구경까지 할 수 있었습니다. 전날 가는 방법을 미리 구체적으로 알려주셔서 검색해볼 필요도 없었구요, 기차역으로 픽업까지 와주셔서 편하게 이동할 수 있었습니다! 나중에 바르셀로나 다시 가게 되면 이번엔 체험코스 말고 다른코스로도 체험해보고 싶네요 백번 추천합니다!!</div>

			<hr style="margin-top:5px;margin-bottom:5px;border:1px solid #efefef"/>

				<div><font style="color:#696969;font-weight:bold">NOT GOOD</font>  없습니다</div>

			</article>
<img class="lazyload blur-up"  style="width:100%;border-radius:15px" data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/e4b125c5a89698f2a10ad9c5536feae1_l.jpg">



                                    </div>
                                </li>





                                <li class="review-box stu_js-load">
                                    <div class="left-wrap">
                                        <div class="ico_star_bg">

                                            <div class="ico_star" style="width:100%;">
                                                <p class="score_average">5.0</p>
                                            </div>


                                        </div>
                                        <div class="author">

		<em class="name">최주영</em>

                                            <span class="line">│</span>
                                            <span class="">7월 7일 투어참가</span>
                                            <span class="line">│</span>
                                            <span class=""><br>20대초&nbsp;배낭(여성)</span>
                                        </div>
                                        <div class="reg-date"> </div>
                                    </div>
                                    <div class="right-wrap">
                                        <dl class="survey-text">

                                            <dt>평점</dt>
                                            <dd>5.0</dd>

                                        </dl>
                                        <article class="review-text">

				<div><font style="color:#696969;font-weight:bold">GOOD</font>  코스타리바해변을 보고 직접느낄 수 있다는건 행운이였습니다

1. 바셀에서 렘페타고 가면 바로 갈수있으며 역에 차를 가지고 픽업하러 오시기때문에 헤메이지 않았습니다
2. 미리 기차편을 알아봐주시고 준비할걸 추려서 카톡으로 친절히 알려주십니다...감동
3. 제가 아침 못먹고 가서배고팠는데 잠시 근처카페에서 빵도먹고 여유롭게 바다보구 했던 기억까지 좋았어요. 같이 먹고 얘기도 하면서 즐거웠습니다.
4. 다이버님이 무척 배려많이해주시고 전문적이세요. 처음하는 사람의 경우에 원래 물 안무서워 하더라도 발이 안닿기 시작하면 무서워질수 있잖아요, 저도 중간에 올라가자구 두번이나 했었는데 바로 올려주시구 릴렉스할 시간도 주시고 말씀도 친절히 해주십니다.
전문적으로 뒤에서 다 끌어주시고 기기도 조정할 거 있으면 해주시기 때문에 진짜 해파리마냥 떠있기만하면됩니다..!
5. 바다가 맑고 이뻐서 물고기떼 안에 들어가는 경험 해초만져보고 불가사리에게 안뇽해보는 경험해볼수있어요 추억짱 ㅠ ㅠ
6. 햇살이 좋아서 나와서도 몸 금방마릅니다 무거운 장비벗겨주시고 해변구경하라시며 마지막까지 친절하셨네요

정말 이번기회를 통해 긴가민가하며 처음 한 도전인데 짱잼이였구 친절하구 전문적이셔서 맘이 놓였어요!!!

</div>

			<hr style="margin-top:5px;margin-bottom:5px;border:1px solid #efefef"/>

				<div><font style="color:#696969;font-weight:bold">NOT GOOD</font>  헤헤 없어여</div>

			</article>



                                    </div>
                                </li>





                                <li class="review-box stu_js-load">
                                    <div class="left-wrap">
                                        <div class="ico_star_bg">

                                            <div class="ico_star" style="width:100%;">
                                                <p class="score_average">5.0</p>
                                            </div>


                                        </div>
                                        <div class="author">

		<em class="name">강창묵</em>

                                            <span class="line">│</span>
                                            <span class="">7월 8일 투어참가</span>
                                            <span class="line">│</span>
                                            <span class=""><br>20대초&nbsp;배낭(남성)</span>
                                        </div>
                                        <div class="reg-date"> </div>
                                    </div>
                                    <div class="right-wrap">
                                        <dl class="survey-text">

                                            <dt>평점</dt>
                                            <dd>5.0</dd>

                                        </dl>
                                        <article class="review-text">

				<div><font style="color:#696969;font-weight:bold">GOOD</font>  해외에나와서 즐거운경험할수있어너무좋았고
한국인으로부터 설명듣고 가이드받는부분이 너무좋았습니다</div>

			</article>



                                    </div>
                                </li>





                                <li class="review-box stu_js-load">
                                    <div class="left-wrap">
                                        <div class="ico_star_bg">

                                            <div class="ico_star" style="width:80%;">
                                                <p class="score_average">4.0</p>
                                            </div>


                                        </div>
                                        <div class="author">

                                            <em class="name">jjhj***</em>

                                            <span class="line">│</span>
                                            <span class="">6월 27일 투어참가</span>
                                            <span class="line">│</span>
                                            <span class=""><br>20대초&nbsp;배낭(여성)</span>
                                        </div>
                                        <div class="reg-date"> </div>
                                    </div>
                                    <div class="right-wrap">
                                        <dl class="survey-text">

                                            <dt>평점</dt>
                                            <dd>4.0</dd>

                                        </dl>
                                        <article class="review-text">

				<div><font style="color:#696969;font-weight:bold">GOOD</font>  진짜진짜 좋았습니다! 처음해보는 스쿠버 다이빙이었는데 코스타브라바가 물고기가 정말 많아서 얕은 수심까지만 내려가도 바로 물고기가 보였구요! 10-30분 정도만 설명 듣고해도 전혀 어려운 점이 없었습니다! 물 속에서 적응돠고 나서는 가이드분 도움 없이도 혼자 자유롭게 돌아다니면서 물고기 구경할 수 잇었어요! 오리가 물고기 잡아먹는 구경도 할 수 있었습니다????수영 못하는 분들도 잘 즐기실 수 있구요, 무엇보다 가이드 분들이 정말정말 친절하셨어요! 저희가 공항에서 캐리어를 못받아서 사정 설명 드렸더니 캐리어 찾는 것도 그렇구 도움도 진짜 많이 주셨어요! 개인적으로는 스쿠버다이빙 투어이후에 계속해서 좋은 일이 생겨서 다 스쿠버 다이빙 덕분인것 같습니다. 처음해보는 스쿠버다이빙인데 너무 즐거워서 계속해서 하고 싶을거 같아요?? 샤워시설도 잘 되어있어서 끝나고 씻고 옷 갈아입는것에도 전혀 문제가 없습니다! 수압도 좋아요. 다이빙 센터에서 역까지 왕복 픽업도 해주시구 끝나고 데려다 주실때는 역 근처 메누델디아 맛집도 알려주셔서 식사까지 맛있게 했습니다! 다음에도 또 하고싶어요!??????????? 유럽여행에서 바다를 접할 기회가 생각보다는 많지 못했는데 가서 바다도 보고 물놀이도 하고 오사면 정말 잊지못할 경험이 되실거에요! 저희는 개인적으로 정말 즐겁게 하고 왔습니다. 평소에 관심 있으시다면 꼭 해보세요!</div>

			</article>



                                    </div>
                                </li>





                                <li class="review-box stu_js-load">
                                    <div class="left-wrap">
                                        <div class="ico_star_bg">

                                            <div class="ico_star" style="width:100%;">
                                                <p class="score_average">5.0</p>
                                            </div>


                                        </div>
                                        <div class="author">

		<em class="name">정현아</em>

                                            <span class="line">│</span>
                                            <span class="">6월 18일 투어참가</span>
                                            <span class="line">│</span>
                                            <span class=""><br>20대후&nbsp;배낭(여성)</span>
                                        </div>
                                        <div class="reg-date"> </div>
                                    </div>
                                    <div class="right-wrap">
                                        <dl class="survey-text">

                                            <dt>평점</dt>
                                            <dd>5.0</dd>

                                        </dl>
                                        <article class="review-text">

				<div><font style="color:#696969;font-weight:bold">GOOD</font>  물고기도 많고 물색 너무 예뻐요!! 처음엔 무서웠지만 계속 괜찮은지 사인주시고 친절하게 알려주셔서 좋았어요! 다음에도 또 하고싶어요~~~!!><</div>

			</article>



                                    </div>
                                </li>





                                <li class="review-box stu_js-load">
                                    <div class="left-wrap">
                                        <div class="ico_star_bg">

                                            <div class="ico_star" style="width:100%;">
                                                <p class="score_average">5.0</p>
                                            </div>


                                        </div>
                                        <div class="author">

		<em class="name">Cho</em>

                                            <span class="line">│</span>
                                            <span class="">5월 23일 투어참가</span>
                                            <span class="line">│</span>
                                            <span class=""><br>20대초&nbsp;배낭(남성)</span>
                                        </div>
                                        <div class="reg-date"> </div>
                                    </div>
                                    <div class="right-wrap">
                                        <dl class="survey-text">

                                            <dt>평점</dt>
                                            <dd>5.0</dd>

                                        </dl>
                                        <article class="review-text">

				<div><font style="color:#696969;font-weight:bold">GOOD</font>  바르셀로나 여행하시는 분이라면 꼭 추천해드리고 싶습니다. 유일하게 한국인 다이버가 계시기 때문에 언어가 자신 없으신 분들도 걱정없이 즐기실 수 있습니다. 물 속에서 무중력을 경험하며 바다 속 풍경을 감상하는 잊을 수 없는 경험을 하였고 기회가 된다면 꼭 다시 경험하고 싶습니다.</div>

			</article>



                                    </div>
                                </li>





                            </ul>
                        </div>
                        <div class="stu_js-btn-wrap">
                            <a href="javascript:;" class="stu_js-btn">후기 더보기</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>



        <section class="stu_s5">
            <div class="stu_inner_wrap">
                <div class="stu_left_wrap">
                    <div class="stu_division">


                        <h3 class="stu_h3_title">상품에 대한 1:1 문의를 남겨주세요.</h3>
                        <div class="cmtTxt-container">
                            <div class="cmtTxt-inner">
                                <div class="cmtTxt-wrap">
                                    <div class="cmtTxt-inbox">
                                        <textarea  id="qa_description" class="cmtTxt" rows="3" cols="3" placeholder="문의 내용을 입력하세요." onclick="window.location='/common/login.asp';"></textarea>
                                    </div>
                                </div>
                                <div class="cmtTxt-upload">
                                    <button type="button" class="cmtTxt-btn-upload" onclick="writeQA()">등록</button>
                                </div>
                            </div>
                        </div>



                        <div id="stu_cmt-load" class="cmt-container">
                            <ul id="stu_cmt-load" class="cmt-wrap">



<p style="font-size:10pt;text-align:center;padding-top:30px;">등록된 1:1 문의사항이 없습니다.</p>


                            </ul>
                        </div>


                    </div>
                </div>
            </div>
        </section>  


<script>
function writeQA(fid)
{
	
	window.location="/common/login.asp";
	
}

var prvid;
function showDiv(id)
{
	
	if(prvid)
		document.getElementById(prvid).style.display="none";

	document.getElementById(id).style.display="block";

	prvid=id;
}
function replaceURLWithHTMLLinks(text) {     
	var exp = /(\b(https?|ftp|file):\/\/[-A-Z0-9+&@#\/%?=~_|!:,.;]*[-A-Z0-9+&@#\/%=~_|])/i;
	return text.replace(exp,"<a href='$1' target='_blank'><u>$1</u></a>");
}
</script>





        <section class="stu_prd_list">
            <div class="stu_inner_wrap">
                <div class="prd_container">
                    <div class="prd_area">
                        <div class="swiper-container more_prd">
                            <div class="titArea">
                                <h3 class="stu_h3_title">비슷한 상품들</h3>
                                <div class="swiper-pagination more_prd-pagination"></div>
                            </div>
                            <ul class="swiper-wrapper">





                                <li class="swiper-slide prd_item">
                                    <div class="like"></div>
                                  <a href="/guide/detail.asp?needlogin=&access_key=&serial=56&trip_id=&needback=1" class="prd lock-off">
                                        <figure class="thumb">
                                            <img class="fw lazyload blur-up"  data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/fe94d528c7050f15241edd3114237a16_m.jpg" onerror="this.onerror=null;this.src='https://d3b39vpyptsv01.cloudfront.net/photo/1/2/fe94d528c7050f15241edd3114237a16.jpg'">
                                         
                                        </figure>
                                        <div class="prd_info">
                                            <div class="cpn">UnderPressureDivers
                                    <span class="duration">4시간</span>
		
                                            </div>
                                            <div class="name">
                                                <span>바르셀로나 코스타 브라바 지중해 스노클링 투어</span>
                                            </div>
                                            <div class="tag">



                                    <span>맑고 푸른 지중해 바다 속으로!</span>


                                            </div>

<div class="score">
                                    <span>5</span>

                                    <span style="color:#8f8f8f;font-size:9pt">&nbsp;9명 예약</span>

</div>

                                <div class="price">



                                <strong>￦ 98,440~</strong>
			


			
                                    <span>/ 1인</span>

			</div>
                                        </div>
                                    </a>
                                </li>




                                <li class="swiper-slide prd_item">
                                    <div class="like"></div>
                                  <a href="/guide/detail.asp?needlogin=&access_key=&serial=19&trip_id=&needback=1" class="prd lock-off">
                                        <figure class="thumb">
                                            <img class="fw lazyload blur-up"  data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/a074107693be4afeeb83c15c5d23e563_m.jpg" onerror="this.onerror=null;this.src='https://d3b39vpyptsv01.cloudfront.net/photo/1/2/a074107693be4afeeb83c15c5d23e563.jpg'">
                                         
                                        </figure>
                                        <div class="prd_info">
                                            <div class="cpn">UnderPressureDivers
                                    <span class="duration">4시간</span>
		
                                            </div>
                                            <div class="name">
                                                <span>무경험/초보자를 위한 바르셀로나 PADI 체험 비치다이빙 2회 (DSD)</span>
                                            </div>
                                            <div class="tag">



                                    <span>초보자도 쉽게,  전문가와 함께,푸른 지중해 바다속으로 풍덩</span>


                                            </div>

<div class="score">
                                    <span>5</span>

                                    <span style="color:#8f8f8f;font-size:9pt">&nbsp;4명 예약</span>

</div>

                                <div class="price">



                                <strong>￦ 239,060~</strong>
			


			
                                    <span>/ 1인</span>

			</div>
                                        </div>
                                    </a>
                                </li>




                                <li class="swiper-slide prd_item">
                                    <div class="like"></div>
                                  <a href="/guide/detail.asp?needlogin=&access_key=&serial=20&trip_id=&needback=1" class="prd lock-off">
                                        <figure class="thumb">
                                            <img class="fw lazyload blur-up"  data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/e509e11ad2c9a808601bba4def942c2b_m.jpg" onerror="this.onerror=null;this.src='https://d3b39vpyptsv01.cloudfront.net/photo/1/2/e509e11ad2c9a808601bba4def942c2b.jpg'">
                                         
                                        </figure>
                                        <div class="prd_info">
                                            <div class="cpn">UnderPressureDivers
                                    <span class="duration">4시간</span>
		
                                            </div>
                                            <div class="name">
                                                <span>경험자를 위한 바르셀로나(코스타브라바) 보트다이빙 </span>
                                            </div>
                                            <div class="tag">



                                    <span>지중해 바다속을, 거북이와함께 , 자격증소지자 참가 가능</span>


                                            </div>

<div class="score">
                                    <span>5</span>

                                    <span style="color:#8f8f8f;font-size:9pt">&nbsp;3명 예약</span>

</div>

                                <div class="price">



                                <strong>￦ 175,780~</strong>
			


			
                                    <span>/ 1인</span>

			</div>
                                        </div>
                                    </a>
                                </li>




                                <li class="swiper-slide prd_item">
                                    <div class="like"></div>
                                  <a href="/guide/detail.asp?needlogin=&access_key=&serial=57&trip_id=&needback=1" class="prd lock-off">
                                        <figure class="thumb">
                                            <img class="fw lazyload blur-up"  data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/06d6cfb42c897278b223d2f3bb716f7b_m.jpg" onerror="this.onerror=null;this.src='https://d3b39vpyptsv01.cloudfront.net/photo/1/2/06d6cfb42c897278b223d2f3bb716f7b.jpg'">
                                         
                                        </figure>
                                        <div class="prd_info">
                                            <div class="cpn">UnderPressureDivers
                                    <span class="duration">4시간</span>
		
                                            </div>
                                            <div class="name">
                                                <span>경험자를 위한 바르셀로나(코스타브라바) 비치 다이빙 </span>
                                            </div>
                                            <div class="tag">



                                    <span>지중해 푸른 바다를 누벼보자!, 자격증소지자 참가 가능</span>


                                            </div>

                                <div class="price">



                                <strong>￦ 140,620~</strong>
			


			
                                    <span>/ 1인</span>

			</div>
                                        </div>
                                    </a>
                                </li>




	</div>
</div>



                            </ul>
                        </div>
                        <div class="swiper-button-prev more_prd-button-prev"></div>
                        <div class="swiper-button-next more_prd-button-next"></div>
                    </div>
                </div>
            </div>
        </section>


        <section class="stu_prd_list">
            <div class="stu_inner_wrap">
                <div class="prd_container">
                    <div class="prd_area">
                        <div class="swiper-container more_prd">
                            <div class="titArea">
                                <h3 class="stu_h3_title">UnderPressureDivers의 다른 상품</h3>
                                <div class="swiper-pagination more_prd-pagination"></div>
                            </div>
                            <ul class="swiper-wrapper">





                                <li class="swiper-slide prd_item">
                                    <div class="like"></div>
                                  <a href="/guide/detail.asp?needlogin=&access_key=&serial=20&trip_id=&needback=1" class="prd lock-off">
                                        <figure class="thumb">
                                            <img class="fw lazyload blur-up"  data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/e509e11ad2c9a808601bba4def942c2b_m.jpg" onerror="this.onerror=null;this.src='https://d3b39vpyptsv01.cloudfront.net/photo/1/2/e509e11ad2c9a808601bba4def942c2b.jpg'">
                                         
                                        </figure>
                                        <div class="prd_info">
                                            <div class="cpn">UnderPressureDivers
                                    <span class="duration">4시간</span>
		
                                            </div>
                                            <div class="name">
                                                <span>경험자를 위한 바르셀로나(코스타브라바) 보트다이빙 </span>
                                            </div>
                                            <div class="tag">



                                    <span>지중해 바다속을, 거북이와함께 , 자격증소지자 참가 가능</span>


                                            </div>

<div class="score">
                                    <span>5</span>

                                    <span style="color:#8f8f8f;font-size:9pt">&nbsp;3명 예약</span>

</div>

                                <div class="price">



                                <strong>￦ 175,780~</strong>
			


			
                                    <span>/ 1인</span>

			</div>
                                        </div>
                                    </a>
                                </li>




                                <li class="swiper-slide prd_item">
                                    <div class="like"></div>
                                  <a href="/guide/detail.asp?needlogin=&access_key=&serial=57&trip_id=&needback=1" class="prd lock-off">
                                        <figure class="thumb">
                                            <img class="fw lazyload blur-up"  data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/06d6cfb42c897278b223d2f3bb716f7b_m.jpg" onerror="this.onerror=null;this.src='https://d3b39vpyptsv01.cloudfront.net/photo/1/2/06d6cfb42c897278b223d2f3bb716f7b.jpg'">
                                         
                                        </figure>
                                        <div class="prd_info">
                                            <div class="cpn">UnderPressureDivers
                                    <span class="duration">4시간</span>
		
                                            </div>
                                            <div class="name">
                                                <span>경험자를 위한 바르셀로나(코스타브라바) 비치 다이빙 </span>
                                            </div>
                                            <div class="tag">



                                    <span>지중해 푸른 바다를 누벼보자!, 자격증소지자 참가 가능</span>


                                            </div>

                                <div class="price">



                                <strong>￦ 140,620~</strong>
			


			
                                    <span>/ 1인</span>

			</div>
                                        </div>
                                    </a>
                                </li>




                                <li class="swiper-slide prd_item">
                                    <div class="like"></div>
                                  <a href="/guide/detail.asp?needlogin=&access_key=&serial=56&trip_id=&needback=1" class="prd lock-off">
                                        <figure class="thumb">
                                            <img class="fw lazyload blur-up"  data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/fe94d528c7050f15241edd3114237a16_m.jpg" onerror="this.onerror=null;this.src='https://d3b39vpyptsv01.cloudfront.net/photo/1/2/fe94d528c7050f15241edd3114237a16.jpg'">
                                         
                                        </figure>
                                        <div class="prd_info">
                                            <div class="cpn">UnderPressureDivers
                                    <span class="duration">4시간</span>
		
                                            </div>
                                            <div class="name">
                                                <span>바르셀로나 코스타 브라바 지중해 스노클링 투어</span>
                                            </div>
                                            <div class="tag">



                                    <span>맑고 푸른 지중해 바다 속으로!</span>


                                            </div>

<div class="score">
                                    <span>5</span>

                                    <span style="color:#8f8f8f;font-size:9pt">&nbsp;9명 예약</span>

</div>

                                <div class="price">



                                <strong>￦ 98,440~</strong>
			


			
                                    <span>/ 1인</span>

			</div>
                                        </div>
                                    </a>
                                </li>




                                <li class="swiper-slide prd_item">
                                    <div class="like"></div>
                                  <a href="/guide/detail.asp?needlogin=&access_key=&serial=19&trip_id=&needback=1" class="prd lock-off">
                                        <figure class="thumb">
                                            <img class="fw lazyload blur-up"  data-src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/a074107693be4afeeb83c15c5d23e563_m.jpg" onerror="this.onerror=null;this.src='https://d3b39vpyptsv01.cloudfront.net/photo/1/2/a074107693be4afeeb83c15c5d23e563.jpg'">
                                         
                                        </figure>
                                        <div class="prd_info">
                                            <div class="cpn">UnderPressureDivers
                                    <span class="duration">4시간</span>
		
                                            </div>
                                            <div class="name">
                                                <span>무경험/초보자를 위한 바르셀로나 PADI 체험 비치다이빙 2회 (DSD)</span>
                                            </div>
                                            <div class="tag">



                                    <span>초보자도 쉽게,  전문가와 함께,푸른 지중해 바다속으로 풍덩</span>


                                            </div>

<div class="score">
                                    <span>5</span>

                                    <span style="color:#8f8f8f;font-size:9pt">&nbsp;4명 예약</span>

</div>

                                <div class="price">



                                <strong>￦ 239,060~</strong>
			


			
                                    <span>/ 1인</span>

			</div>
                                        </div>
                                    </a>
                                </li>




	</div>
</div>
<br/><br/><br/>

                            </ul>
                        </div>
                        <div class="swiper-button-prev more_prd-button-prev"></div>
                        <div class="swiper-button-next more_prd-button-next"></div>
                    </div>
                </div>
            </div>
        </section>


    </main>
    <!--//메인영역_End-->



<!---투어 예약프로세스 시작---->
<div id="mymodal" style="display:none">
	<div style="position:fixed;top:0px;left:0px;z-index:9998;background:#000;opacity: 0.9;filter: alpha(opacity=90);width:100%;height:100%"></div>
	<div style="position:fixed;top:0px;left:0px;z-index:9999;width:100%;padding-top:70px;padding-left:280px;padding-right:280px">
			<div><a href="javascript:closeMyModal()" class="pull-right" style="color:#fff;font-size:27pt"><i class="fa fa-times-circle" aria-hidden="true"></i></a></div>
			<div style="margin-top:10px"><font style="font-size:14pt;color:#fff;font-weight:bold" id="my_modal_title">간편 예약(1/4)</font></div>
			<div style="clear:both"></div>
			<div style="margin-top:0px"  id="my_modal_desc">
				<form name="form" method="post">

	<div id="div_apply_step3" style="display:none">


				<div style="text-align:center;padding-top:5px;padding-bottom:5px;width:100%;font-size:12pt;color:#fff"><b>다음 추가정보를 입력해주세요.</b></div>
				<div  style="margin-top:15px;">
					<textarea name="msg" id="input_msg" class="form-control" rows="11">-
참가자1 영문 이름:
참가자1 영문 성:
참가자1 성별:

-
참가자2 영문 이름:
참가자2 영문 성:
참가자2 성별:

-
참가자3 영문 이름:
참가자3 영문 성:
참가자3 성별:
:
(4명이상인 경우, 위의 입력항목을 복사해서 입력)
</textarea>
				</div>
				<div style="clear:both"></div>

					<div>
						<div style="float:left;width:40%"><a href="javascript:fapplyprev()" class="btn-u btn-u-lg btn-u-dark btn-block"> < 이전 단계 </a></div>
							<div style="float:left;width:60%"><a href="javascript:makeReservation()" class="btn-u btn-u-lg btn-u-green btn-block"> 신청 완료</a></div>
							<div style="clear:both"></div>
						</div>
		
					</div>


			</div>

				<div id="div_apply_step1">
					<div style="text-align:center;padding-top:5px;padding-bottom:5px;width:100%;font-size:12pt;color:#fff"><b>투어 날짜선택</b></div>
					<div  style="margin-top:15px;" id="calendar"></div>
					<div style="clear:both"></div>

					<div style="padding-top:17px" id="cal_price_list">



					</div>
					<div style="clear:both"></div>
				</div>

				<div id="div_apply_step1_5" style="display:none">


				<div style="margin-bottom:7px;">
					<font style="color:#fff;font-size:9pt">투어일 </font>
						<span id="div_selected_date_list2" style="font-size:10pt;color:#fff;font-weight:bold"></span>

						<a class="btn-u btn-u-xs btn-u-default" href="javascript:fapplyprev()" style="color:#fff;">다시선택</a>

				</div>


					<div id="div_price_options" style="height:220px;overflow-y:auto;background:#696969;border-top:1px solid #fff;border-bottom:1px solid #fff;padding-top:5px;padding-left:5px;padding-right:5px;padding-bottom:5px"></div>



		<div style="margin-top:10px;font-weight:600;font-size:11pt;color:#ffffff;display:none" id="div_notice_header"> <font style="color:#3ad195"><i class="fa fa-exclamation-circle"></i></font>&nbsp;가격/인원 선택시 유의사항/기준 <font style="color:#3ad195"><i class="fa fa-exclamation-circle"></i></font></div>
		<div style="color:#fff;font-size:9pt;padding-top:5px;padding-bottom:5px;">
<div id="div_notice_stubbypass" style="display:none;padding-bottom:5px;"><font style="font-weight:700;color:#3ad195">*스투비패스® 할인가</font>는 패스를 구매한 사람만 예약할 수 있습니다. 그렇지 않을 경우, 예약 확정후라도 임의취소됩니다.</div>
<div id="div_notice_package_sale" style="display:none;padding-bottom:5px;"><font style="font-weight:700;color:#3ad195">*결합할인</font>은 최근 10일이내 스투비플래너에서  1건이상 투어예약이 있는 경우, 횟수/인원 제한없이 적용가능합니다.(동일상품 중복구매시는 적용 불가)</div>
<div id="div_notice_earlybird_sale" style="display:none;padding-bottom:5px;"><font style="font-weight:700;color:#3ad195">*얼리버드</font>는 투어일 기준 30일 이전 구매시 제공되는 할인 혜택입니다. 취소환불 규정은 일반 취소/환불 규정과 동일하게 적용됨.(단, <b>슈퍼얼리버드</b>의 경우는 제외)</div>

		</div>


					<div style="margin-top:10px;">


						<div style="padding-top:5px;color:#fff;font-size:9pt;padding-bottom:10px;">
							<font style="font-weight:bold;"> 개인정보처리 및 제 3자 제공에 대한 동의</font><br>
							.본 예약은 [UnderPressureDivers]과 예약자간의 거래로 예약정보는 [UnderPressureDivers]에게 제공됩니다. 스투비플래너가 제공 받게되는 예약정보는 <a style="display:inline-block;font-size:8pt;color:#fff;font-weight:bold" href="http://www.stubbyplanner.com/personalinfo.asp" target="_blank"><u>[개인정보 취급방침]</u></a>에 따라 관리됩니다.
						</div>


						<div>

							<div style="float:left;width:40%"><a href="javascript:fapplyprev()" class="btn-u btn-u-lg btn-u-dark btn-block"> < 이전 단계 </a></div>
							<div style="float:left;width:60%"><a href="javascript:fapplystart()" class="btn-u btn-u-lg btn-u-green btn-block"> 다음 단계 > </a></div>

							<div style="clear:both"></div>
						</div>
					</div>

				</div>


			<div id="div_apply_step2" style="display:none">

				<div style="margin-bottom:7px;">
					<div style="width:30%;float:left;font-size:10pt;color:#fff">예약자명*</div>
					<div style="width:70%;float:left;"><input class="form-control" type="text" id="input_resv_name" name="resv_name" value=""></div>
					<div style="clear:both"></div>
				</div>
				<div style="margin-bottom:7px;">
					<div style="width:30%;float:left;font-size:10pt;color:#fff">이메일주소*</div>
					<div style="width:70%;float:left;"><input class="form-control" type="text" id="input_email" name="email" value=""></div>
					<div style="clear:both"></div>
				</div>

				<div style="margin-bottom:7px;">
					<div style="width:30%;float:left;font-size:10pt;color:#fff">핸드폰번호*</div>
					<div style="width:70%;float:left;"><input class="form-control" type="text" id="input_phone" name="phone" value=""></div>
					<div style="clear:both"></div>
				</div>
				<div style="margin-bottom:7px;">
					<div style="width:30%;float:left;font-size:10pt;color:#fff">카톡아이디</div>
					<div style="width:70%;float:left;"><input class="form-control" type="text" name="kakao" id="input_kakao" value=""></div>
					<div style="clear:both"></div>
				</div>

				<div style="margin-bottom:7px;">
					<div style="width:30%;float:left;font-size:10pt;color:#fff">
						투어일
					</div>
					<div style="width:70%;float:left;">
						<input id="selected_date_list" type="hidden" name="available_date"/>
						<span id="div_selected_date_list" style="font-size:10pt;color:#fff;"></span>

						<a class="btn-u btn-u-xs btn-u-default" href="javascript:fapplyprev()" style="color:#fff;">다시선택</a>


					</div>
					<div style="clear:both"></div>

				</div>


				<div style="color:#fff;font-size:8pt;padding-bottom:10px;">
					<div style="margin-bottom:10px">
						<div style="width:30%;float:left;text-align:right">
							<input type="checkbox" class="form-control" id="ck_ok" value="1">
						</div>
						<div style="width:70%;float:left">
<font style="font-weight:bold;font-size:9pt">여행자 약관에 대한 동의</font><br>
<textarea style="height:90px;width:100%;font-size:8pt;color:#fff">
제1장 목적 및 정의

제1조 (목적)
이 약관(이하 “여행자약관”)은 주식회사 스투비익스피어리언스(이하 “당사”)가 운영하는 “스투비플래너”(www.stubbyplanner.com)의 투어 중개서비스 또는 어플리케이션(Application, 이하 웹사이트와 어플리케이션을 통칭하여 “스투비 플랫폼”)상의  투어 중개서비스를 통하여 여행자와 가이드 사이에서 체결되는 여행계약(이하 “여행계약”)의 중개와 관련하여 특히 여행자의 권리와 의무 등 법률관계를 명확히 함을 목적으로 합니다.

제2조 (용어의 정의)
이 약관에서 사용되는 용어의 정의는 다음과 같습니다.
(1) “가이드서비스”는 여행자가 원하는 날짜와 조건에 따라 당사가 중개한 가이드로부터 제공받는 제7조의 서비스를 말합니다.
(2) “가이드”는 당사가 여행자에게 중개한 자로서 여행지에서 여행자에게 가이드서비스를 제공하는 자를 말합니다.
(3) “투어”는 여행자가 여행계약에 따라 가이드로부터 가이드서비스를 제공받으며 향유하는 여행을 말합니다.
(4) “여행확인증”은 가이드와 여행자가 구체적인 가이드서비스의 내용 및 제반 비용 등에 관한 사항을 합의하여 확정한 문서를 말합니다.
(5) “수수료”는 여행자가 가이드와의 여행계약 체결을 중개/대리한 대가로 당사에 지급하는 보수를 말합니다.
(6) “가이드요금”은 여행자가 가이드서비스 제공의 대가로 가이드에게 지급하는 보수를 말합니다.
(7) “여행요금”은 여행자가 본 약관에 따른 여행계약과 관련하여 당사에 지급하는 수수료 및 가이드에게 지급하는 가이드요금을 합한 금원을 말합니다.
(8) “미팅장소”는 투어를 위하여 가이드와 여행자가 만나기로 약속한 장소를 말합니다.
(9) “지각시간”은 가이드와 여행자가 투어를 위하여 미팅장소에서 만나기로 정한 시각으로부터 지각한 당사자가 미팅장소에 실제 도착하기까지 경과한 시간을 말합니다.

제2장 기본 사항

제3조 (여행계약의 당사자 및 당사의 지위)
여행자와 여행계약을 체결하고 가이드서비스를 제공하는 법적 주체는 가이드이며, 당사는 스투비 플랫폼을 통하여 여행자가 원하는 날짜와 조건에 맞추어 가이드와 여행계약을 체결하고 가이드서비스를 제공받는 것을 중개하는 업무를 수행합니다.

제4조 (가이드의 독립당사자 지위)
1. 당사는 여행자와 가이드 사이에 투어를 중개할 뿐이며, 가이드는 당사와 고용 관계에 있지 않음을 확인합니다. 또한, 당사는 가이드에 대하여 사용자로서의 책임을 일체 부담하지 않는다는 점을 명확히 합니다.
2. 가이드는 가이드약관의 이행에 필요한 관련 법령상의 허가, 등록, 신고 또는 보험, 공제, 예치 등의 의무사항을 모두 이행하였으며, 당사는 가이드가 관련 법령 위배로 인하여 여행자 또는 제3자에 대하여 손해배상 등 책임을 지더라도 당사는 이에 관하여 아무런 책임이 없습니다.

제5조 (여행계약의 구성)
여행계약은 여행확인증과 여행자약관에 나타난 사항을 그 계약내용으로 합니다.

제6조 (당사자 및 당사의 기본 의무)
1. 가이드는 사전에 여행자와 약정한 내용에 따라 투어를 성실하게 진행하여야 하며, 그밖에 여행자에게 안전하고 만족스러운 가이드서비스를 제공하기 위하여 여행계약상 의무를 성실하게 이행하여야 합니다.
2. 여행자는 여행계약에 따른 의무를 성실하게 이행하며, 안전하고 즐거운 여행을 위하여 여행자간 화합도모 및 가이드의 여행질서 유지에 적극 협조합니다.
3. 당사는 여행계약 체결의 중개 행위 등에 있어 맡은 바 임무를 충실히 수행합니다.

제7조 (가이드서비스의 내용)
가이드가 여행자에게 제공하는 가이드서비스의 구체적인 내용은 다음 각 호의 1과 같습니다.
(1) 여행자의 의사 및 제반 사정을 고려한 투어 일정의 계획 및 조정
(2) 미팅장소에서 일정에 정한 각 여행지로 여행자를 인솔
(3) 각 여행지에 대한 구체적인 안내 및 설명 제공
(4) 당일 최종 여행지로부터 여행자의 숙소 등 일정에 정한 해산 지점으로 여행자를 인솔
(5) 여행지에서 여행자의 원활한 의사소통 협조
(6) 사고 등 문제 발생시의 여행자 보호 조치
(7) 기타 투어 관련 제반 업무

제3장 여행계약의 체결

제8조 (여행계약 체결 및 여행확인증, 약관 등 교부)
1. 다음 각 호의 경우 여행자와 가이드 사이에 여행계약이 체결됩니다. 단, 제1호의 경우 가이드는 여행자에게 청약과 동시에 여행요금을 지급할 것을 요구할 수 있습니다.
(1) 가이드가 투어 일정, 여행요금 등 그 내용을 정하여 미리 제시한 청약의 유인에 따라 여행자가 투어를 신청하여 청약하면, 가이드가 여행자의 신청 내용에 따라 투어가 가능하다고 판단할 경우 미리 고지한 정해진 승낙 기한 내에 여행자에게 투어가 가능함을 회신함으로써 승낙하는 경우 또는 미리 고지한 정해진 승낙 기한 내에 본 조 제3항에 따른 투어의 불가능 회신이 없는 경우
(2) 여행자와 가이드 사이에 사전에 투어의 일정, 여행요금 등 그 내용에 대해 합의가 이루어지는 경우
2. 가이드는 본 조 제1항 각 호에 따라 여행계약이 체결된 경우, 여행자의 요청에 따라 당사를 통해 여행확인증과 여행자약관 사본을 여행자에게 교부합니다.
3. 본 조 제1항 제1호에서 가이드가 여행자에게 청약과 동시에 여행요금의 지급을 요구하여 여행자가 이를 지급한 경우라도, 가이드가 투어가 불가능하다고 판단하여 미리 고지한 시간 또는 기일 내에 이를 여행자에게 회신할 경우 여행계약이 성립하지 않습니다.
4.  본 조 제1항 제1호에서 가이드가 여행자에게 청약과 동시에 여행요금의 지급을 요구하여 여행자가 이를 지급한 경우라도, 여행자가 예약접수에 필수적인 정보(영문명, 픽업숙소명등)가 있을때 이를 제공하지 않은 경우, 해당 정보가 제공되는 시점까지는 여행계약이 성립하지 않으며  계약철회의 정당한 사유가 될 수 있습니다.
5. 당사는 본 조 제3항에 따라 여행계약이 성립하지 않는 경우 지급 받은 여행요금 전액을 여행자에게 반환합니다.
6. 여행자가 본 조 제3항에 따라 미리 고지한 시간 또는 기일 내에 여행계약에 관한 청약을 취소하는 경우, 당사는 지급 받은 여행요금 전액을 여행자에게 반환합니다.
7. 당사 웹사이트 및 어플리케이션을 통하여 예약하지 않은 경우 본 조 각 항의 여행계약 체결이 되지 않은 것으로 간주하며 당사에게 중개에 대한 책임 및 손해에 대한 배상을 요구할 수 없습니다.

제9조 (전자정보망을 통한 예약확인증 및 약관 등의 교부 간주)
여행자가 인터넷 등 전자정보망으로 제공된 예약확인증 및 여행자약관의 내용에 동의하고 여행계약의 체결을 신청한 데 대하여 가이드가 전자정보망 내지 기계적 장치 등을 이용하여 여행자에게 승낙의 의사를 통지한 경우, 가이드와 여행자 사이에 제8조 제2항의 예약확인증 및 여행자약관 교부가 이루어진 것으로 봅니다.

제10조 (계약 체결의 거절)
가이드(또는 가이드를 대신하여 당사)는 다음 각 호의 1에 해당하는 사유가 있을 경우에는 해당 여행자에 대하여 여행계약의 체결을 거절할 수 있으며, 투어가 확정된 이후에 그 사유를 알게 된 경우에도 해당 여행계약을 해제할 수 있습니다.
(1) 여행자가 다른 여행자에게 폐를 끼치거나 여행의 원활한 실시에 지장이 있다고 인정될 때
(2) 여행자가 보행이나 운송수단 탑승이 불가능한 부상, 전염성 질병 등 여행자의 신체에 이상이 발생하여 투어 참가가 불가능함이 의료기관이 발급한 진단서에 의해 객관적으로 확인되는 경우
(3) 여행자가 예약접수에 필수적인 정보의 제공을 정당한 사유없이 지연하는 경우

제4장 여행요금

제11조 (여행요금)
1. 여행자는 여행계약의 중개 및 가이드서비스 제공의 대가로서 여행확인증에 기재된 금액의 여행요금을 당사에 지급합니다. 여행요금에는 다음 각 호의 요금 또는 비용은 포함되어 있지 않습니다.
(1) 투어 중 개인적 성질의 제비용(통신료, 관세, 일체의 팁, 세탁비, 개인적으로 추가한 식, 음료)
(2) 치료비, 입원비 등 투어 중 여행자의 질병, 상해 또는 그 밖의 사유로 인하여 지불해야 하는 일체의 비용
(3) 여행자가 통상의 규격이나 규정을 초과하여 발생한 비용(초과 규격의 수하물 등 각종 추가 요금)
(4) 여행 수속 제비용(여권 인지대, 사증료 등)
(5) 기타 여행확인증에 구체적으로 명시되지 않은 비용
2. 수수료는 별도의 약정에 따른 금액으로 하며, 가이드요금은 여행요금 총액에서 수수료 상당액을 제한 나머지 금액으로 합니다.
3. 여행자는 여행요금을 당사가 지정한 방법[신용카드 결제, 실시간 계좌이체, 가상계좌(무통장입금), 페이팔(Paypal), 당사 발행 쿠폰과 포인트 등]으로 지급합니다.
4. 여행요금에 여행자 보험료가 포함되는 경우, 가이드는 여행자에게 보험회사명, 보상내용 등을 설명합니다.

제12조 (여행조건의 변경 요건 및 요금 등의 정산)
1. 여행계약이 체결된 이후에는 계약상 여행조건은 원칙적으로 변경될 수 없습니다.
2. 제1항에도 불구하고, 여행계약상의 여행조건은 다음 각 호의 1의 경우에 한하여 예외적으로 변경될 수 있습니다.
(1) 투어 개시 후 여행자의 안전과 보호를 위하여 여행조건의 변경이 부득이하다고 판단되는 경우
(2) 투어 개시 후 천재지변, 전란, 정부의 명령, 운송 및 숙박업체 등의 파업 또는 휴업 등으로 여행의 목적을 달성할 수 없는 경우
3. 제1항의 여행조건 변경으로 인하여 가이드요금에 증감이 생기는 경우, 해당 증감분은 투어 종료 후 10일 이내에 당사를 통하여 정산(환급)하여야 합니다.
4. 여행자는 투어 중 자신의 사정으로 인하여 관광 등 가이드요금에 포함된 서비스를 제공받지 못한 경우 당사에 대하여 그에 상응하는 가이드요금의 환급을 청구할 수 없습니다.

제5장 투어 개시 전 계약의 해제

제13조 (여행자의 투어 개시 전 임의해제 및 손해배상)
1. 여행자는 여행요금 지급이 이루어지기 이전까지 체결하였던 여행계약을 가이드 또는 당사에 대한 손해배상 등의 법적 책임 없이 자유롭게 해제할 수 있습니다.
2. 여행자가 여행요금 지급이 이루어진 후 투어 개시일 이전까지 국외여행계약 또는 국내여행계약을 임의로 해제하는 경우, 가이드는 본 약관 별첨 취소환불정책에 따라 여행자에게 여행요금의 전부 또는 일부를 환불합니다.
3. 당사는 본 조에 따라 가이드와 여행자 사이에 발생하는 손해배상 등 법률관계에 대하여 보증책임 기타 어떠한 의무 또는 책임도 부담하지 않습니다.

제14조 (가이드의 투어 개시 전 임의해제 및 손해배상)
1. 가이드가 여행자와 체결하였던 여행계약을 임의로 해제하는 경우, 가이드는 그로 인하여 여행자가 입은 손해를 배상할 의무를 부담합니다. 이 경우 손해배상액은 제21조에 정한 바에 따르며, 다만 여행자가 입은 실제 손해액이 제21조 제4항 제1호에 따른 손해배상액을 초과함이 객관적으로 입증되는 경우, 가이드는 여행자에게 그 실제 손해액을 배상할 책임을 부담합니다.
2. 당사가 가이드를 대신하여 여행자에게 제1항의 손해배상의무를 이행하는 경우, 당사는 가이드에 대하여 여행자에게 배상한 금액 상당을 구상할 수 있습니다.
3. 본 조에 따라 가이드가 여행계약을 해제하는 경우, 가이드는 제1항의 여행자에 대한 손해배상과 별도로 당사가 입은 손해로서 여행확인증에 기재된 수수료 상당액을 배상할 의무를 부담합니다

제15조 (최저행사인원 미달로 인한 계약 해제)
1. 가이드는 여행자의 수가 사전에 공지한 투어의 최저행사인원에 미달하였음을 원인으로 여행계약을 해제할 수 있습니다.
2. 본 조의 계약 해제를 하고자 하는 가이드는 당사를 통하여 국외여행의 경우 투어 개시일로부터 7일 이전까지, 국내여행의 경우 투어 개시일로부터 3일 이전까지 여행자에게 제1항의 해제의 의사표시 및 해제사유를 통지하여야 합니다. 만약 가이드가 최저행사인원 미달로 전항의 기일 내 통지를 하지 아니하고 계약을 해제하는 경우 여행자에 대한 배상은 공정거래위원회 고시 소비자분쟁해결기준에 의거하여 처리되며, 이 때 당사가 여행자에게 지급한 손해배상액에 대하여 당사는 가이드에게 구상할 수 있습니다.

제16조 (투어의 개시와 종료)
투어의 개시 시점은 투어 첫 날 미팅장소에서 여행자가 가이드와 만난 시점으로 하며, 투어의 종료 시점은 투어 마지막 날 여행자와 가이드가 일정을 마치고 헤어지는 시점으로 합니다.

제17조 (투어 개시 전 쌍방의 책임 없는 사유로 인한 계약 해제)
투어 개시일 이전에 다음 각 호의 1에 해당하는 사유가 있는 경우, 여행자 또는 가이드는 별도의 손해배상 없이 여행계약을 해제할 수 있습니다.
 단, 아이슬란드와 노르웨이 투어의 경우, 날씨로 인해 발생하는 문제로 (항공기 도착이 지연되는 등의 사유로) 투어에 참여하지 못한 경우라 하더라도 계약해제가 불가능합니다.
(1) 제10조 제1항 제1호 또는 제2호의 사유가 있는 경우
(2) 보행이나 운송수단 탑승이 불가능한 부상, 전염성 질병 등 여행자의 신체에 이상이 발생하여 투어 참가가 불가능함이 의료기관이 발급한 진단서에 의해 객관적으로 확인되는 경우
(3) 천재지변, 취소가 불가피한 현지사정(시위,파업,관광지휴업 등), 가이드 신변에 투어가 불가할만한 중대한 사항(교통사고,중대질병,사망 등)이 발생한 경우(이때 입증을 위한 자료제출은 고객 혹은 중개업체의 요청이 있는 경우에만 하기로 함)
(4) 기타 이에 준하는 것으로서 당사자 쌍방에게 책임 없는 사유로 투어가 불가능하게 된 경우



제18조 (계약 해제에 따른 여행요금 환불 등 정산)
1. 제13조에 따라 여행계약이 해제되는 경우, 당사는 별첨 취소환불 정책에 따른 환불 대상 여행요금을 여행자에게 환급합니다.
2. 제14조, 제15조, 제17조에 따라 여행계약이 해제되는 경우, 당사는 여행자에게 지급 받은 여행요금 전액을 환불합니다.

제6장 의무 및 책임

제19조 (여행자의 의무 및 책임)
1. 여행자의 고의 또는 과실로 당사 또는 가이드에게 손해가 발생한 경우, 여행자는 그 손해를 배상할 의무를 부담합니다.
2. 여행자가 가이드에 대하여 성추행 등 범죄행위를 하였을 경우, 여행자는 가이드에 대하여 민형사상 책임을 부담하며, 당사에 대하여도 당사가 입은 손해 및 각종 발생 비용 등의 손실을 배상할 책임을 부담합니다.
3. 여행자는 여행의 원활한 진행을 위하여 가이드가 당사를 통하여 제공하는 설명 및 자료를 통하여 여행 일정, 여행비용 내역, 약속 시간 및 장소 등 여행 관련 정보를 확인합니다.
4. 여행자는 여행확인증에 기재된 기일까지 여행요금을 당사에 지급합니다.
5. 여행자는 여행의 원활한 진행을 위하여 가이드의 인솔 및 요청에 성실히 협조합니다.
6. 여행자는 합리적인 이유 없이 가이드에게 투어와 직접적인 관련이 없는 부당한 요구를 하여서는 아니 됩니다.
7. 여행자는 투어 종료된 후 스투비 플랫폼 상에 투어 후기에 관한 게시물을 작성 및 게시할 수 있습니다. 다만, 후기 게시물이 다음 각 호의 어느 하나에 해당하는 경우, 당사는 해당 후기 게시물을 여행자의 동의 없이 삭제 또는 변경할 수 있습니다.
(1) 사용자의 개인적인 경험 이외의 내용을 담고 있는 경우
(2) 실제 투어와 관련되지 않은 후기인 경우 (예: 정치적, 종교적 또는 사회적 의견에 대한 후기)
(3) 위해한 혹은 불법적인 행동 및 폭력을 지지하거나 비속어, 성적 언어, 명예훼손, 위협 또는 차별적인 내용을 포함하는 경우
(4) 타인의 권리(지적 재산권 및 개인정보 보호에 관한 권리 등을 포함)를 침해하는 내용을 포함하는 경우 (예: 타인의 실명, 주소 또는 인적 정보를 당사자의 허락없이 기재하는 경우 등)
(5) 강요의 목적으로 후기 게시물이 이용된 것이 객관적으로 입증된 경우
(6) 당사에서 조사가 진행 중인 건에 대한 내용을 포함하는 경우
(7) 기타 이상에 준하는 위법, 부당한 목적 또는 방법으로 후기 게시물이 작성된 경우
8. 귀중품 및 소지품에 대한 보관 책임은 여행자 자신에게 있습니다. 여행 도중 여행자의 귀중품 및 소지품이 도난 또는 분실된 경우 여행자는 사고 발생을 안 때로부터 지체 없이 그 사실을 가이드 및 당사에 알리고 다음 각 호의 서류를 제출하여야 합니다.
(1) 도난 확인서
(2) 경위서
(3) 그밖에 필요한 서류
9. 여행자가 투어 개시 전에 고지하지 않은 신체의 장해 또는 질병 등으로 인하여 발생하는 문제는 여행자에게 책임이 있습니다. 단, 여행 도중 여행자의 신체에 장해 또는 질병 등이 발생하는 경우 여행자는 지체 없이 그 사실을 가이드 및 당사에 알리고 다음 각 호의 서류를 즉시 제출하여야 합니다.
(1) 사고 증명서
(2) 진단서
(3) 경위서
(4) 영수증
(5) 그밖에 필요한 서류

제20조 (가이드의 일반 손해배상의무)
1. 가이드가 여행계약을 위반하는 경우 그로 인하여 여행자가 입은 손해를 배상할 의무를 부담합니다. 단, 여행자에게 신체 손상이 없는 경우 가이드의 손해배상책임은 여행요금의 100%를 한도로 합니다.
2. 가이드는 본인 또는 그 고용인이 고의 또는 과실로 위법하게 여행자에게 손해를 가한 경우 그로 인하여 여행자가 입은 손해를 배상합니다.
3. 가이드는 항공기, 기차, 선박 등 교통수단의 연발착 또는 교통체증 등으로 인하여 여행자가 입은 손해를 배상합니다. 단, 가이드가 자신에게 그에 대한 고의 또는 과실이 없음을 입증한 경우에는 그러하지 아니합니다.
4. 가이드는 여행자의 수하물을 수령, 인도, 보관할 의무가 없으며, 수하물이 멸실, 훼손 또는 연착되어 여행자에게 발생한 손해를 배상할 책임이 없습니다.

제21조 (여행 내용 불일치 등에 따른 가이드의 손해배상의무)
1. 본 조에 따른 손해배상은 다음 각 호의 사유가 발생한 경우에 대하여 적용됩니다.
(1) 가이드가 제15조, 제17조에 정한 사유 이외의 사유를 들어 체결하였던 국내여행계약 및 해외여행계약을 투어 개시 전에 임의로 해제하는 경우
(2) 실제 투어 시간이 사전 약정에 따른 투어 시간과 명확하게 불일치하는 경우
(3) 실제 투어 인원이 사전 약정에 따른 투어 인원과 명확하게 불일치하는 경우
(4) 실제 투어 코스가 사전 약정에 따른 투어 코스와 명확하게 불일치하는 경우
(5) 그밖에 실제 투어 내용이 사전 약정에 따른 투어 내용과 명확하게 불일치하는 경우
2. 제1항에 정한 사전 약정은 해당 투어와 관련하여 (i) 스투비 플랫폼 내부 1:1문의, (ii) 여행확인증, (iii) 상품 소개 페이지를 통하여 명시된 내용에 한정하며, 제1항 각 호의 사유가 발생하였는지 여부에 대하여 여행자와 가이드 사이에 다툼이 있는 경우, 당사가 객관적이고 중립적인 기준에 따라 이를 판단합니다.
3. 다음 각 호의 요건을 충족하는 여행자는 가이드에게 본 조에 따른 손해배상을 청구할 수 있습니다.
(1) 가이드의 투어 내용 변경에 동의 또는 합의하는 등 여행자 자신이 제1항 각 호의 사유 발생을 직접적 또는 간접적으로 야기하지 않았어야 합니다.
(2) 가이드에게 투어 내용 변경에 대하여 이의하는 등 제1항 각 호의 사유 발생을 막기 위한 합리적인 노력을 다하였어야 합니다.
(3) 여행자는 투어 종료 후(제1항 제1호의 경우에는 가이드로부터 해제 통보를 받은 후) 당사 '여행불만족 손해배상위원회'에 20일 이내에 고객센터의 이메일 또는 전화를 통하여 당사에 제1항 각 호의 사유 발생 사실을 통지하여야 합니다.
4. 제3항의 요건이 충족되는 경우, 가이드는 여행자의 선택에 따라 다음 각 호의 손해배상 방식 중 어느 하나의 방식으로 여행자에 대한 손해를 배상하여야 합니다.
(1) 현금배상 : 이 경우 구체적인 배상금액은 당사의 ‘여행불만족 손해배상위원회’ 가 내부 규정 및 지침에 따라 합리적으로 산정하되, 여행자로부터 지급받은 여행요금을 최대 한도로 하여 정합니다.
(2) 스투비 credit 배상 : 현금이 아닌 추후 당사가 중개하는 여행계약에서 여행요금으로 사용 가능한 쿠폰 또는 포인트를 부여합니다. 대신 이를 선택하는 경우 배상 포인트는 제1호에 따라 산정된 현금배상 금액의 110% 상당으로 정합니다.
5. 당사는 본 조의 손해배상 채무를 가이드를 대신하여 여행자에게 변제할 수 있습니다. 이 경우 당사는 여행자에 대한 변제금액 상당을 가이드에게 구상할 수 있으며, 가이드는 그에 대하여 이의하지 않고 당사의 구상에 응하여야 합니다.
6. 본 조에 따른 손해배상이 이루어지는 경우, 여행자는 자신이 입은 실제 손해액이 본 조에 따른 손해배상액을 초과함을 객관적으로 주장, 입증하지 않는 이상 제20조를 포함한 본 약관상의 다른 조항을 근거로 가이드 또는 당사에게 손해배상을 청구할 수 없습니다.

제22조 (당사의 손해배상의무)
1. 당사는 여행계약 체결의 중개와 관련하여 당사 또는 당사의 고용인이 고의 또는 과실로 여행자에게 손해를 가한 경우, 그로 인하여 여행자가 입은 손해만을 배상합니다.
2. 당사는 여행계약이 체결된 이후 여행자와 가이드 사이에서 발생한 손해배상 등 법률관계와 관련하여 여행자 또는 가이드에 대하여 어떠한 책임도 부담하지 않습니다.

제7장 투어 진행의 장해

제23조 (가이드의 지각)
1. 가이드가 약속한 시간까지 미팅장소에 도착하지 못하여 투어의 진행이 지체된 경우, 가이드는 여행자에게 지체된 시간 상당의 투어를 추가적으로 제공합니다.
2. 여행자는 가이드로부터 사전에 도착이 늦어지게 된 경위, 예상 도착 시간, 지체된 시간만큼의 추가 투어가 제공된다는 사실 등에 관한 구체적 통지를 수령하지 못한 상태에서 가이드가 연락 없이 약속한 시간으로부터 15분이 지나도록 미팅장소에 도착하지 않는 경우 여행계약을 해지할 수 있으며, 이 경우 여행요금 환불 및 손해배상 등에 관하여 제26조의 규정이 적용됩니다.

제24조 (여행자의 지각)
1. 여행자의 지각시간이 15분 이하인 경우, 가이드는 투어를 진행함에 있어 여행자에게 지각시간 상당의 투어를 추가적으로 제공합니다.
2. 여행자의 지각시간이 15분 이상인 경우, 가이드는 사전에 예정되었던 일정에 따라 투어를 진행하며 그밖에 여행자에게 지각시간 상당의 투어를 추가적으로 제공할 의무가 없습니다.
3. 여행자가 아무런 연락 없이 약속한 시간으로부터 15분이 넘도록 미팅장소에 도착하지 않는 경우, 가이드는 여행자에게 투어 출발을 알린 후 제26조에 따라 여행계약을 해지할 수 있습니다.
4. 본 조 제1항 내지 제3항에도 불구하고, 사전에 투어를 함께 진행하기로 예정된 다른 여행자의 전부 또는 일부가 정시에 미팅장소에 도착한 경우에는, 가이드는 사전에 예정된 일정에 따라 투어를 진행할 수 있으며, 지각한 여행자에게 지각시간 상당의 투어를 추가적으로 제공할 의무가 없습니다.

제8장 투어 진행 중 여행계약의 해지

제25조 (상대방과의 합의에 의한 계약의 해지)
1. 여행자 또는 가이드는 투어가 개시된 이후에는 상대방과의 합의 없이 임의로 여행계약을 해지할 수 없습니다.
2. 상대방과의 합의에 따라 여행계약을 해지하는 경우, 가이드요금의 환불과 관련한 사항 또한 상호 합의한 내용에 따릅니다.
3. 본 조의 합의해지와 관련하여, 당사는 여행자로부터 지급받은 수수료를 환불할 의무가 없습니다.

제26조 (상대방의 귀책사유로 인한 계약의 해지)
1. 여행자 또는 가이드는 상대방에게 책임 있는 사유(제23조 및 제24조의 해지를 포함한다)로 인하여 투어의 진행이 현저히 곤란하게 된 경우 여행계약을 해지할 수 있습니다.
2. 여행자에게 책임 있는 사유로 제1항의 계약 해지가 발생한 경우, 여행자는 여행요금의 환불을 청구할 수 없습니다.
3. 가이드에게 책임 있는 사유로 제1항의 계약 해지가 발생한 경우, 여행자는 당사에 여행요금 전액의 환불을 청구할 수 있습니다. 이 경우, 당사는 가이드에게 여행자에게 반환한 수수료 금액과 추가 손해배상 금액을 청구할 수 있으며, 이는 최대 여행요금의 200%로 한정합니다.
4. 본 조에 따른 여행계약의 해지가 발생한 경우, 귀책사유 있는 당사자는 여행요금과 별개로 그로 인하여 상대방이 입은 손해를 배상하여야 합니다.

제27조 (당사자 쌍방에게 책임 없는 사유로 인한 계약의 해지)
1. 가이드 및 여행자 모두에게 책임 없는 사유로 인하여 투어의 진행이 불가능한 경우, 여행자 또는 가이드는 여행계약을 해지할 수 있습니다.
2. 제1항의 해지가 발생한 경우, 가이드는 가이드요금 중 일정상 계획된 전체 투어 시간 중 진행되지 못한 투어 시간의 비율 상당 금액을 여행자에게 반환하여야 합니다.
3. 제1항의 해지가 발생한 경우, 당사는 가이드는 대신하여 제2항에 따라 가이드가 여행자에게 반환하여야 할 금액 상당을 정산하여 여행자에게 환불하며, 가이드에게는 여행자로부터 지급받은 가이드요금 중 위 환불금을 공제하고 난 후 잔여 가이드요금을 정산하여 지급합니다.
4. 제2항의 전체 투어 시간 중 진행되지 못한(또는 진행된) 투어 시간의 비율은 가이드 및 여행자의 합의를 통하여 정하는 것을 원칙으로 하며, 합의가 되지 않는 경우 당사가 객관적이고 중립적인 기준에 따라 그 비율을 정합니다.
5. 본 조에 따른 해지와 관련하여 당사 및 가이드는 제2항 및 제3항에 규정된 사항 이외에 여행자에 대하여 그 밖의 다른 의무를 부담하지 않습니다.

제9장 기타 일반 의무

제28조 (설명의무)
가이드는 당사를 통하여 여행계약의 중요 내용 및 그 변경사항을 여행자에게 설명하여야 하며, 당사는 이에 따라 여행자에게 여행계약에 규정된 중요한 내용 및 그 변경사항을 여행자가 이해할 수 있도록 구체적으로 설명합니다.

제29조 (보험가입 등)
가이드는 투어와 관련하여 여행자에게 손해가 발생한 경우 여행자에게 보험금을 지급하기 위하여 보험 또는 공제에 가입하거나 영업보증금을 예치하여야 합니다.

제30조 (개인정보 관리의무)
당사 및 가이드는 투어와 관련하여 취득한 여행자의 성명, 여권번호, 연락처 등 개인정보를 개인정보 보호법 등 제반 법령에 따라 적법하게 관리하여야 합니다.

제31조 (여행자를 촬영한 사진의 사용)
가이드가 투어와 관련하여 촬영한 사진 또는 동영상 등을 당사 홍보 등의 목적으로 사용하고자 하는 경우, 당사는 해당 사진에 포함된 여행자에 대하여 사진 사용의 목적 및 범위 등을 알리고 그 사진을 사용할 수 있습니다.

제32조 (기타사항)
특수지역으로의 여행으로서 정당한 사유가 있는 경우 이 약관의 내용과 달리 정할 수 있습니다.

제33조 (불가항력)
어떠한 당사자도 화재, 폭풍, 홍수, 지진, 사고, 전쟁(실제 발생 또는 선포 여부를 불문함), 반란, 폭동 기타 민란, 전염병, 격리, 천재지변, 정부조치 등 자신의 통제를 벗어난 사유에 의해 약관상의 의무사항을 이행 또는 준수하지 못하는 경우 이에 대한 책임을 지지 아니합니다. 해당 당사자는 불가항력적인 사유의 발생 후 가능한 한 빨리 이를 상대방 당사자에게 통지하고 그 사유가 제거 또는 중단된 후 가능한 한 신속하게 약관상 의무의 이행 및 준수를 재개하여야 합니다.

제34조 (기타사항)
여행자약관은 대한민국 법을 그 준거법으로 하며, 이에 따라 해석되고, 협의에 의하여 여행자약관에 관련된 분쟁을 해결할 수 없는 경우에는 그 소송의 관할은 당사자 간의 합의에 따르며, 사전 합의된 바가 없는 경우에는 민사소송법의 관할 규정에 따릅니다.


[부칙] (2018년 12월 23일)
1. 이 약관은 2018년 12월 23일부터 적용됩니다.

[별첨. 취소환불정책]

각 상품 별 취소 환불 약관이 별도 기재되어 있을 경우 별도 기재 내용이 해당 규정으로서 선 적용됩니다.

-가이드투어 취소/환불 안내
여행자는 가이드약관 제16조 제2항에 따라 여행요금 지급이 이루어진 후 투어 개시일 이전에 여행계약을 임의로 해제하는 경우, 해제 통보 시점에 관한 다음 각 호의 기준에 따라 여행요금이 환불됩니다.
해제 통보 시점은 환불요청서가 스투비 플랫폼에 접수된 시간 또는 웹싸이트 하단에 기재된 대표 이메일을 통하여 환불요청 내용이 기록된 시간을 기준으로 합니다.
[국외여행의 경우]
- 여행시작 30일전 (~30) 까지 통보시: 여행 요금 전액 환불
- 여행시작 20일 전까지 (29~20) 통보시: 여행요금에서 가이드 요금의 10%와 스투비 수수료 공제 후 환불
- 여행시작 6일 전까지 (19~6) 통보시: 여행요금에서 가이드 요금의 15%와 스투비 수수료 공제 후 환불
- 여행시작 1 일 전까지 (1~5) 통보시: 여행요금에서 가이드 요금의 20%와 스투비 수수료 공제 후 환불
- 여행시작 시간 기준 24시간 이내 통보시: 여행요금에서 가이드 요금의 50%와 스투비 수수료 공제 후 환불

다만, 위의 규정에도 불구하고 다음의 경우에는 예외로 합니다.
1) 여행자가 여행요금을 결제(지급)한 때로부터 24시간 이내에 여행계약을 철회(취소)하는 경우와 여행자가 투어 예약 후 가이드가 확정되기 전에 취소하는 경우는 여행요금을 전액 환불합니다. 단, 여행자가 여행요금을 결제하였다고 하더라도 해당 시점으로부터 24시간 이내 여행이 시작될 경우는 전액 환불 대상에서 제외합니다.
2) 상품의 특성에 따라 현지 예약금으로 지불되어야 하는 금액이 있는 경우 해당 예약금의 환불에 대하여는 각 상품의 상세설명보기에서 별도로 고지한 취소환불 약관을 적용합니다.

</textarea>
						</div>
						<div style="clear:both"></div>
					</div>

					<span id="notice_long_time" style="display:none;"></div>
					<div>
						<div style="float:left;width:40%"><a href="javascript:fapplyprev()" class="btn-u btn-u-lg btn-u-dark btn-block"> < 이전 단계 </a></div>
							<div style="float:left;width:60%">

								<a href="javascript:to_step3()" class="btn-u btn-u-lg btn-u-green btn-block"> 다음 단계</a>

							</div>
							<div style="clear:both"></div>
						</div>
		
					</div>
				
				</div>

			</div>


		
			</form>
</div>


<script>
function ihavepass()
{
	has_stubbypass1="1";
	fapplynext(g_pos,g_y,g_m,g_d);
}
bias=0;
cur_year=2022;
cur_month=10;
function movePrevMonth()
{
	cur_month--;
	if(cur_month<1)
	{
		cur_year--;
		cur_month=12;
	}
	drawMonth(cur_year,cur_month);
}
function moveNextMonth()
{
	cur_month++;
	if(cur_month>12)
	{
		cur_year++;
		cur_month=1;
	}

	drawMonth(cur_year,cur_month);	
	
}
function drawMonth(y,m)
{
	

	$("#calendar").html('<div style="text-align:center;padding-top:50px;color:#fff">날짜별 가격 정보를 가져오는 중입니다....</div>');
	$.getJSON( "/api/guidetour/get_available_date.asp?tourserial=1210110027100&m="+m+"&y="+y, function( data ) {
		if(data)
		{
			price_list=data.price_list;
			available_list=data.available_list;



	max_mday=31;
	if(m==2)
		max_mday=29;
	if(m==4)
		max_mday=30;
	if(m==6)
		max_mday=30;
	if(m==9)
		max_mday=30;
	if(m==11)
		max_mday=30;

	thtml='';

	thtml+='<div style="float:left;width:20%"><a class="btn-u btn-u-default" style="border-radius:20px" href="javascript:movePrevMonth()"> < </a></div>';
	thtml+='<div style="float:left;width:60%" class="calendar_header_title">'+y+'년 '+m+'월</div>';
	thtml+='<div style="float:left;width:20%;text-align:right"><a class="btn-u btn-u-default" style="border-radius:20px" href="javascript:moveNextMonth()"> > </a></div>';
	thtml+='<div style="clear:both"></div>';

	thtml+='<div class="calendar_header">일</div>';
	thtml+='<div class="calendar_header">월</div>';
	thtml+='<div class="calendar_header">화</div>';
	thtml+='<div class="calendar_header">수</div>';
	thtml+='<div class="calendar_header">목</div>';
	thtml+='<div class="calendar_header">금</div>';
	thtml+='<div class="calendar_header">토</div>';
	thtml+='<div style="clear:both"></div>';

	m_txt=m;
	if(m<10)
		m_txt="0"+m;
	var dx = new Date(y+'-'+m_txt+'-01');

	var base_dx = new Date('2019-01-01');
	bias=0;

	if(base_dx.getDay()==1)//특수한경우
		bias=1;
	else//정상인경우
		bias=0;

	for(i=0;i<dx.getDay()+bias;i++)
		thtml=thtml+'<div class="calendar_day_nothing"><a>-</a></div>';

	price2_display_cnt=0;

	for(i=1;i<=max_mday;i++)
	{
		d_txt=i;
		if(i<10)
			d_txt='0'+i;
		thedate=y+'-'+m_txt+'-'+d_txt;
		if(selected_date_list.indexOf(thedate)>=0)
		{
			thtml=thtml+'<div style="width:14%;float:left"><div class="calendar_day_selected" id="cd_'+i+'" onclick="selDate(\''+thedate+'\',\''+i+'\')">'+i+'</div></div>';
		}
		else
		{

			isnotavailable=true;
			for(j=0;j<available_list.length;j++)
			{
				if(available_list[j].s_day==i)
				{
					
					{
						isnotavailable=false;
						price_option_serial=available_list[j].pos;
						if(available_list[j].is_super)
						{
							thecolorcode="red";
						}
						else
						{
							if(available_list[j].price_idx==2)
							{
								thecolorcode="yellow";
								price2_display_cnt++;
							}
							else
							{
								thecolorcode="green";
							}

						}
						thtml=thtml+'<div style="width:14%;float:left"><div class="calendar_day_active" id="cd_'+i+'" onclick="selDate(\''+thedate+'\',\''+i+'\',\''+price_option_serial+'\')" style="line-height:80%">'+i+'<br><font style="font-size:7pt;color:'+thecolorcode+'"><i class="fa fa-circle" aria-hidden="true"></i></font></div></div>';
					}
				}
			}
			if(isnotavailable)
				thtml=thtml+'<div style="width:14%;float:left"><div class="calendar_day" id="cd_'+i+'" onclick="" style="line-height:80%">'+i+'<br><font style="font-size:7pt;color:#000"><i class="fa fa-circle" aria-hidden="true"></i></font></div></div>';
			

		}
	}

	
	$("#calendar").html(thtml);


	phtml='';
	if(price2_display_cnt>0)
	{
		
		for(j=0;j<price_list.length;j++)
		{
			phtml=phtml+'<div style="float:left;width:50%;text-align:center;font-size:10pt;color:#fff">';
			if(price_list[j].has_time_limit)
			{
				thecolor="red";
			}
			else
			{
				if(price_list[j].price_idx==2)
					thecolor="yellow";
				else
					thecolor="green";


			}
	
			phtml=phtml+'<font style="font-size:7pt;color:'+thecolor+'"><i class="fa fa-circle" aria-hidden="true"></i></font> '+price_list[j].pricename+'('+price_list[j].pricetxt+')';
			phtml=phtml+'</div>';
		}
	}
	else
	{


		phtml='';
		thecolor="green";
		phtml=phtml+'<div style="font-size:10pt;color:#fff">';
		phtml=phtml+'<font style="font-size:7pt;color:'+thecolor+'"><i class="fa fa-circle" aria-hidden="true"></i></font> 예약가능 ';
		phtml=phtml+'</div>';	
	}
	$("#cal_price_list").html(phtml);






		}
	});


}


function fapplyprev()
{
	selected_date_list="";
	$('.calendar_day_selected').addClass('calendar_day');
	$('.calendar_day_selected').removeClass('calendar_day_selected');


		$("#div_apply_step3").hide();
		$("#div_apply_step2").hide();
		$("#div_apply_step1_5").hide();
		$("#div_apply_step1").show();
		$("#my_modal_title").html("간편 예약(1/4)");
	
}
function fapplystart()
{
	if(policy_id_cnts=="")
	{
		func_alert("예약할 항목에 인원/수량을 1개이상은 선택해주세요.");
	}
	else
	{

		if(policy_id_cnts==0)
		{
			func_alert("예약할 항목에 인원/수량을 1개이상은 선택해주세요.");
		}
		else
		{
		
			$("#div_apply_step3").hide();
			$("#div_apply_step1_5").hide();
			$("#div_apply_step2").show();

			$("#my_modal_title").html("간편 예약(3/4)");
		}
	}
}
function to_step3()
{
	if(check_valid())
	{

		$("#div_apply_step1").hide();
		$("#div_apply_step1_5").hide();
		$("#div_apply_step2").hide();
		$("#div_apply_step3").show();
		$("#my_modal_title").html("간편 예약(4/4)");
	}
}

var price1_total=0;
var price1_currency="KRW";
var price2_total=0;
var price2_currency="EUR";
var last_the_row="-1";

function chg_select(the_row)
{
	if($("#price1_currency_"+the_row).length)
		price1_currency=$("#price1_currency_"+the_row).html();

	if($("#price2_currency_"+the_row).length)
		price2_currency=$("#price2_currency_"+the_row).html();

	xhtml="";
	v_policy_id_cnts="";
	price1_total=0;
	price2_total=0;
	total_cnt=0;
	coupon_apply_count=0;
	for(idx=0;idx<15;idx++)
	{

		if($("#memcnt_"+idx).length)
		{
			ppcnt=eval($("#memcnt_"+idx).val());
			ppserial=$("#ppserial_"+idx).val();
			v_policy_id_cnts=v_policy_id_cnts+ppserial+":"+ppcnt+";"

			total_cnt+=ppcnt;

			if($("#price1_"+idx).length)
			{
				price1_v=eval($("#price1_"+idx).html());
				price1_total+=price1_v*ppcnt;



				if(coupon_min_price>0)
				{
					if(price1_v>=coupon_min_price)	
					{
						coupon_apply_count+=ppcnt;
					}


				}
				else
				{
					if(price1_v>discount_amount*3)	
					{
						coupon_apply_count+=ppcnt;
					}

				}


			}
			if($("#price2_"+idx).length)
			{
				price2_v=eval($("#price2_"+idx).html());
				price2_total+=price2_v*ppcnt;
			}
		}
	}
	
	
	if(price1_total>0&&price2_total>0)
	{
		if(discount_amount>0)
		{
			n_price1_total=price1_total;
			if(price1_currency=="KRW")
			{
				n_price1_total=n_price1_total-discount_amount*coupon_apply_count;
				if(n_price1_total<0)
					n_price1_total=0;
			}
			xhtml="예약금:"+n_price1_total+price1_currency+" + 현지지불금: "+price2_total+price2_currency;
		}
		else
		{
			xhtml="예약금:"+price1_total+price1_currency+" + 현지지불금: "+price2_total+price2_currency;
		}
	}
	else if(price1_total>0)
	{
		if(discount_amount>0)
		{
			n_price1_total=price1_total;
			if(price1_currency=="KRW")
			{

				n_price1_total=n_price1_total-discount_amount*coupon_apply_count;
				if(n_price1_total<0)
					n_price1_total=0;
			}
			xhtml="예약금:"+n_price1_total+price1_currency;
		}
		else
		{
			xhtml="예약금:"+price1_total+price1_currency;
		}
	}
	else if(price2_total>0)
	{
		xhtml="현지지불금:"+price2_total+price2_currency;
	}

	$("#total_price").html(xhtml);

	policy_id_cnts=v_policy_id_cnts;
	price_total=xhtml;
	
	last_the_row=the_row;
	

//	if(total_cnt>max_cnt)
//	{
//		func_alert("최대 예약가능인원을 초과합니다. 인원을 다시 선택해주세요.");
//		reset();
//	}
	

}


//max_cnt= // 날짜선택때 입력해두어야함.
function reset()
{


	for(idx=0;idx<15;idx++)
	{

		if($("#memcnt_"+idx))
		{
			$("#memcnt_"+idx).val(0);
		}
	}	


	$("#total_price").html("");

	policy_id_cnts="";
	price_total="";
	discount_amount=0;
	cur_coupon="";


}

var cur_y;
var cur_m;
var cur_d;
var policy_id_cnts="";
var price_total="";

var weekday = new Array(7);
weekday[0] =  "일";
weekday[1] = "월";
weekday[2] = "화";
weekday[3] = "수";
weekday[4] = "목";
weekday[5] = "금";
weekday[6] = "토";

var discount_amount=0;
var coupon_min_price=0;
var cur_coupon="";

function apply_coupon(theV)
{

	if(theV!="")
	{
		theVArr=theV.split('|');

		cur_coupon=theVArr[0];
		discount_amount=theVArr[1]*1;
		coupon_min_price=theVArr[2]*1;
	}
	else
	{
		cur_coupon="";
		discount_amount=0;


		if(price1_total>0&&price2_total>0)
		{

			xhtml="예약금:"+price1_total+price1_currency+" + 현지지불금: "+price2_total+price2_currency;
			$("#total_price").html(xhtml);

		}
		else if(price1_total>0)
		{
			xhtml="예약금:"+price1_total+price1_currency;
			$("#total_price").html(xhtml);
		}

	}

	if(last_the_row!="-1")
	{

		chg_select(last_the_row);

	}
}
function showPriceNotice(ttype)
{

	$("#div_notice_header").show();

	$("#div_notice_package_sale").hide();
	$("#div_notice_earlybird_sale").hide();
	$("#div_notice_stubbypass").hide();

	if(ttype=='PackageSale')
		$("#div_notice_package_sale").show();
		

	if(ttype=='EarlybirdSale')
		$("#div_notice_earlybird_sale").show();

	if(ttype=='StubbyPassSale')
		$("#div_notice_stubbypass").show();
		

}



var has_stubbypass1="0";
function fapplynext(pos,y,m,d)
{
	
	if(selected_date_list=="")
	{
		func_alert("하나 이상의 날짜를 선택해주세요.");
	}
	else
	{

	cur_y=y;
	cur_m=m;
	cur_d=d;
	$.getJSON( "/api/guidetour/get_price_policy.asp?can_use_stubbypass1=0&has_stubbypass1="+has_stubbypass1+"&tourserial=1210110027100&gid=79&pos="+pos+"&y="+y+"&m="+m+"&d="+d, function( data ) {
		if(data)
		{

			thtml='<div>';
			price_list=data.price_list;
			for(i=0;i<price_list.length;i++)
			{
				thtml+='<div style="padding-top:5px;padding-bottom:5px;border-bottom:1px solid #c0c0c0">';

				price_name=price_list[i].policyname;
				if(price_name.indexOf("결합할인")>=0)
				{
					price_name=price_name.replace('결합할인','<font style="font-weight:700;color:#3ad195">결합할인*</font>');
					showPriceNotice('PackageSale');
				}
				if(price_name.indexOf("얼리버드")>=0)
				{
					price_name=price_name.replace('얼리버드','<font style="font-weight:700;color:#3ad195">얼리버드*</font>');
					showPriceNotice('EarlybirdSale');
				}
				if(price_name.indexOf("스투비패스")>=0)
				{
					price_name=price_name.replace('스투비패스','<font style="font-weight:700;color:#3ad195">스투비패스*</font>');
					showPriceNotice('StubbyPassSale');
				}
				if(price_list[i].price2==0)
				{
					if(price_list[i].price1_currency=="KRW")
						thtml+='<div style="width:70%;float:left;font-size:10pt;color:#fff">'+price_name+'<br><span id="price1_'+i+'">'+price_list[i].price1+'</span><span id="price1_currency_'+i+'">'+price_list[i].price1_currency+'</span></div>';
					else
						thtml+='<div style="width:70%;float:left;font-size:10pt;color:#fff">'+price_name+'<br><span id="price1_'+i+'">'+price_list[i].price1_KRW+'</span><span id="price1_currency_'+i+'">KRW</span> ( '+price_list[i].price1+' '+price_list[i].price1_currency+' )</div>';
				}
				else
				{

					if(price_list[i].price1_currency=="KRW")
						thtml+='<div style="width:70%;float:left;font-size:10pt;color:#fff">'+price_name+'<br><span id="price1_'+i+'">'+price_list[i].price1+'</span><span id="price1_currency_'+i+'">'+price_list[i].price1_currency+'</span>+<span id="price2_'+i+'">'+price_list[i].price2+'</span><span id="price2_currency_'+i+'">'+price_list[i].price2_currency+'</span></div>';
					else
						thtml+='<div style="width:70%;float:left;font-size:10pt;color:#fff">'+price_name+'<br><span id="price1_'+i+'">'+price_list[i].price1_KRW+'</span><span id="price1_currency_'+i+'">KRW</span> ( '+price_list[i].price1+' '+price_list[i].price1_currency+' ) +<span id="price2_'+i+'">'+price_list[i].price2+'</span><span id="price2_currency_'+i+'">'+price_list[i].price2_currency+'</span></div>';
				}
				thtml+='<div style="width:30%;float:left;">';
				thtml+='<input type="hidden" id="ppserial_'+i+'" value="'+price_list[i].policyserial+'">';


				thtml+='<select name="member_cnt" id="memcnt_'+i+'" class="form-control" onchange="chg_select('+i+');">';

				for(j=0;j<=price_list[i].available_cnt;j++)
				{
					thtml+='<option value="'+j+'">'+j+'</option>';
				}
				
				thtml+='</select>';
				thtml+='</div>';
				thtml+='<div style="clear:both"></div>';
				thtml+='</div>';
			}

			thtml+='<div style="clear:both"></div>';
			thtml+='</div>';

			coupon_list=data.coupon_list;
			if(coupon_list.length>0)
			{
				thtml+='<div style="padding-top:5px;padding-bottom:5px;border-bottom:1px solid #c0c0c0">';
				
				thtml+='<div style="width:100%;float:left;">';

				thtml+='<select name="coupon" id="mycoupon" class="form-control" onchange="apply_coupon(this.value);">';
				thtml+='<option value="">---쿠폰 선택---</option>';	
			for(i=0;i<coupon_list.length;i++)
			{
				thtml+='<option value="'+coupon_list[i].serial+'|'+coupon_list[i].discount_amount+'|'+coupon_list[i].min_price+'">'+coupon_list[i].coupon_name+'('+coupon_list[i].valid_until_txt+')</option>';	
			}
				thtml+='</select>';
				thtml+='</div>';
				thtml+='<div style="clear:both"></div>';
				thtml+='</div>';

			}

			thtml+='<div style="padding-top:5px;padding-bottom:5px;border-bottom:1px solid #c0c0c0">';
			thtml+='<div style="width:100%;float:left;font-size:10pt;color:#fff">합계 : <div id="total_price">0 KRW</div></div>';
			thtml+='<div style="clear:both"></div>';
			thtml+='</div>';

			$("#div_price_options").html(thtml);

			$("#div_apply_step1").hide();
			$("#div_apply_step1_5").show();
		}
	});



	}
	$("#selected_date_list").val(selected_date_list);
	tdx=new Date(y,m-1,d,0,0,0,0);
	xhtml=selected_date_list.replace(/,/g,"일, ").replace(/2017-/g,"").replace(/2018-/g,"").replace(/2019-/g,"").replace(/-/g,"월 ")+"일("+weekday[tdx.getDay()+bias]+")";

	$("#div_selected_date_list").html(xhtml);
	$("#div_selected_date_list2").html(xhtml);

	$("#my_modal_title").html("간편 예약(2/4)");

	if(has_stubbypass1=="1")
		$("#do_you_has_stubbypass").hide();

}
function check_valid()
{
	resv_name=$("#input_resv_name").val();
	phone=$("#input_phone").val();
	email=$("#input_email").val();


	is_ok=true;

	if(resv_name.length<2)
	{
		func_alert("예약자명을 반드시 2자이상 써주세요");
		is_ok=false;
	}
	else
	{

		if(!$("#ck_ok").is(':checked'))
		{
			func_alert("개인정보 동의 항목을 체크하지 않으면 예약을 진행할 수 없습니다.");
			is_ok=false;
	
		}
		else
		{
			if(phone.length<10)
			{
				func_alert("유효한 핸드폰번호를 반드시 써주세요");
				is_ok=false;
			}
		
			if(email.indexOf("@")<1)
			{
				func_alert("유효한 이메일주소를 써주세요");
				is_ok=false;
			}
		}
	}
	return is_ok;	

}
function ss(id)
{
	$.ajax({
		  url: "/api/tour/sms_send.asp?from_app=0",
		 type: "GET",
		 data: {resvserial:id},
		  success: function( data ) {
			window.location="/guide/reservation_ok.asp?serial="+id;	
		}
	});

}
onRequest=false;
function makeReservation()
{
	if(onRequest)
	{
		func_alert("현재 예약처리중입니다. 조금 기다려 주세요...");
	}
	else
	{
		
	if(!check_valid())
		return;
	resv_name=$("#input_resv_name").val();
	phone=$("#input_phone").val();
	email=$("#input_email").val();
	msg=$("#input_msg").val();
	kakao=$("#input_kakao").val();
	onRequest=true;

	$.ajax({

		  url: "/guide/api/mrsv.asp",

		 type: "POST",
		 dataType: 'json',
		 data: {
			yy:g_y,
			mm:g_m,
			dd:g_d,
			comid:'UPD',
			tourserial:'1210110027100',
			resv_name:resv_name,
			policy_id_cnts:policy_id_cnts,
			phone:phone,
			kakao:kakao,
			email:email,	
			userid:'',
			msg:msg,
			price_total:price_total,
			discount:discount_amount,
			coupon_id:cur_coupon,
			from_app:'0',
			parent_serial:''

		  },
		  success: function( data ) {
			onRequest=false;


			if(data.result=="ERR")
			{
				func_alert(data.msg);
				
				
			}
			else
			{
				//func_alert('예약이 완료되었습니다. 이메일주소와 SMS로 발송된 입금정보에 따라 입금해주세요. 예약하신 투어에 대한 입금확인, 확정여부는 [비회원 예약내역] / [내예약]메뉴에서 확인가능합니다.');
				closeMyModal();
				ss(data.nid);

				
			}
		}
	});


	}

}

var selected_date_list="";
var g_y;
var g_m;
var g_d;
var g_pos;
function selDate(thedate,idx,pos)
{

	reset();
	if(selected_date_list.indexOf(thedate)==-1)
	{
		if(selected_date_list.length>22)
		{
			func_alert("최대 3개의 날짜만 선택 할 수 있습니다.");
			return;
		}

		if(selected_date_list=="")
			selected_date_list=thedate;
		else
			selected_date_list=selected_date_list+","+thedate;

		

		var date1 = new Date("2022-10-23");
		var date2 = new Date(thedate);
		
		var timeDiff = Math.abs(date1.getTime() - date2.getTime());
		var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24)); 



		if(diffDays>1)
		{

			
			$("#notice_long_time").show();

		}
		else
		{
			$("#notice_long_time").hide();
			func_alert("1일 이내의 예약입니다. 현지사정에따라 자동취소될 수도 있음을 양해해주시기 바랍니다.")
		}

		

	}
	else
	{
		if(selected_date_list.length<12)
		{
			selected_date_list="";
		}
		else
		{
			selected_date_list=selected_date_list.replace(','+thedate+',',',');
			selected_date_list=selected_date_list.replace(thedate+',','');
			selected_date_list=selected_date_list.replace(','+thedate,'');
		}
		
	}
	
	
	if($("#cd_"+idx).hasClass('calendar_day_selected'))
	{
		$("#cd_"+idx).removeClass('calendar_day_selected');
		$("#cd_"+idx).addClass('calendar_day');
	}
	else
	{
		$("#cd_"+idx).removeClass('calendar_day');
		$("#cd_"+idx).addClass('calendar_day_selected');

	}

	var xdate=new Date(thedate);
	g_y=xdate.getFullYear();
	g_m=xdate.getMonth()+1;
	g_d=xdate.getDate()+bias;
	g_pos=pos;
	fapplynext(g_pos,g_y,g_m,g_d);
}
function func_confirm(msg)
{
	
		func_alert(msg);
		is_ok=true;
		return is_ok;
	
	
}
function func_alert(msg)
{
	
	$("#alert_modal_msg").html(msg);
	$("#alert_modal").show();
	
}
function closeAlertModal()
{
	$("#alert_modal").hide();
}

function openMyModal()
{


func_alert("현재 코로나 19 휴업으로 예약이 불가능합니다.");

}


function closeMyModal()
{
	$("#mymodal").hide();
	$("body").removeClass("modal-open")

	
}
</script>
<!--- 투어 예약 프로세스 끝--->


<div id="alert_modal" style="display:none; position:fixed; top:0; left:0; right:0; bottom:0; background:rgba(0,0,0,.15); z-index:99999;">
            <div style="position:relative; top:30%; left:50%; transform:translate(-50%, -50%); width:320px; border-radius:2px; box-shadow:0 0 0 1px rgba(0,0,0,.1), 0 2px 8px 0 rgba(0,0,0,.25); background:#fff;">
                <div style="position:relative; height:42px; padding:0 18px; background:#f5f5f7; font-size:15px; font-weight:normal; line-height:42px; color:#4a4a4a;">꼭 확인하세요.
                    <a href="javascript:closeAlertModal()" class="btn-u btn-u-xs" style="position:absolute; top:50%; right:20px; transform:translateY(-50%); width:22px; height:22px; background-image:url(https://d3b39vpyptsv01.cloudfront.net/0/0/1548911555427eWBbProQMk.png); background-size:cover;background-color:transparent"></a>
                </div>
                <div id="alert_modal_msg" style="padding:16px 24px; font-size:15px; font-weight:normal; line-height:1.4; word-break:keep-all; letter-spacing:0; text-align:center; color:#4a4a4a;"></div>
                <div style="padding:0 24px 20px; text-align:center;">
                    <a href="javascript:closeAlertModal()" class="btn-u btn-u-xs" style="border-radius:3px; background:#8f8f8f">
                        <font style="font-size:16px; font-weight:normal; line-height:42px; color:#fff">확인</font>
                    </a>
                </div>
            </div>
        </div>

        <section class="stu_event_banner">
            <div class="stu_inner_wrap">
                <div class="event_banner2" style="background:#f3f3f3;height:120px;overflow:hidden;position:relative;">
                   
                             <a href="http://www.stubbyplanner.com/planner/premium.asp" target="_blank" style="width:100%; height:100%;">
                                <div class="txtWrap">
                                    <p style="">셀프 유럽여행, 시간/비용 줄여주는</p>
                                    <b >스투비 셀프팩</b>
                                </div>

                                <div class="imgWrap" style="background-image:url(/img_v15/back_private.png);">
		
                                       <b><span>STUBBY SELF PACK</span><font style="font-size:12pt;font-weight:300">29,900원 / 1인권 </font></b>
                                </div>
                            </a>
		<div style="clear:both"></div>
                </div>
            </div>
        </section>





   <footer >
        <div class="stu_utils">
            <div class="stu_inner_wrap">
                <ul class="stu_links stu_clearfix">
                    <li><a href="https://docs.google.com/forms/d/e/1FAIpQLSdEGNceBzh0dJAaY5oF74W6z9Er9_M7ZMcv2xqvOWMcArKbsA/viewform" target="_blank">광고/제휴문의</a></li>
                    <li><a href="http://www.stubbyplanner.com/qa/" target="_blank">서비스문의</a></li>
                    <li><a href="http://www.stubbyplanner.com/personalinfo.asp" target="_blank">개인정보 취급방침</a></li><br/>
                    <li><a href="http://www.stubbyplanner.com/common/usercontract.html" target="_blank">이용약관</a></li>
                    <li><a href="http://www.stubbyplanner.com/guide/tour_user_contract.html" target="_blank">여행자약관</a></li>
                    <li><a href="http://www.stubbyplanner.com/common/guidecontract.html" target="_blank">가이드약관</a></li>

                    <li><a href="http://www.stubbyplanner.com/guide/admin.asp?comid=UPD" target="_blank">파트너 로그인</a></li>

                </ul>
                <ul class="stu_sns">
                    <li class="stu_facebook">
                        <a href="http://www.facebook.com/stubbyplanner/" target="_blank" title="페이스북">페이스북</a>
                    </li>
                    <li class="stu_instagram">
                        <a href="https://www.instagram.com/stubbyplanner/" target="_blank" title="인스타그램">인스타그램</a>
                    </li>
                    <li class="stu_kakaotalk">
                        <a href="https://pf.kakao.com/_QwGUM/" target="_blank" title="카카오톡">카카오톡</a>
                    </li>
                    <li class="stu_email">
                        <a href="mailto://stubbyteam@gmail.com" target="_blank" title="이메일">이메일</a>
                    </li>
                </ul>
            </div>
        </div>


        <div class="stu_coInfo">
            <div class="stu_inner_wrap">

                <div class="stu_footer_logo"></div>
                <div class="stu_copyright">
                    <div class="info_btn">추가정보<i></i></div>

                    <div class="business_info">


                        <ul class="txtWrap">
                            <li>(주)스투비익스피어리언스</li>
                            <li>대표 : 백주흠</li>
                            <li>사업자등록번호 : 635-81-01124</li>
                        </ul>

                        <ul class="txtWrap">
<!--
                            <li>고객센터 : 02-886-0982(코로나 휴업중)</li>
-->
                            <li style="color:#fff">이메일 : stubbyteam@gmail.com</li>
                            <li style="color:#fff">코로나19로 인한 휴업중으로 메일로 문의를 남겨주세요.</li><br/>
                            <li>주소 : 경기도 광명시 일직로 72 광명무역센터 C동 505호</li>
                        </ul>
                    </div>
                    스투비익스피어리언스는 통신판매중개자이며 통신판매의 당사자가 아닙니다.<br/>따라서 스투비익스피어리언스는 상품·거래정보 및 거래에 대하여 책임을 지지 않습니다.

                </div>
            </div>
        </div>

    </footer>


<!---
    <footer>
        <div class="stu_inner_wrap">
            <div class="stu_footerInfo">
                <address>
                    <h4 class="stu_h4_title">UnderPressureDivers</h4>
                    <ul>
                        <li>대표 : Eunja Han / Caleb Hollister</li>
                        <li>사업자등록번호 : ESY 4555740Y</li><li>대표번호 : +34 653 783 240</li>
                        <li>일반문의 : SEATHEWHOLEWORLD@GMAIL.COM│ 주말 / 공휴일은 제외</li>
		
                       
                    </ul>
                    <p>  이 페이지는 UnderPressureDivers의 책임하에 관리되는 페이지입니다.</p>
                    <a href="/guide/admin.asp?comid=UPD" class="stu_admin stu_btn">관리자 로그인</a>
                </address>
            </div>
        </div>
    </footer>
--->

</div>
<!--//Contents_End-->

<script>


    // header 고정(슬라이드)
    var lastScrollTop = 0, delta = 15;
    $(window).scroll(function(event) {
        var st = $(this).scrollTop();
        var gnbHeight = $('.stu_gnb_container').outerHeight();
        if(Math.abs(lastScrollTop - st) <= delta)
            return;
        if((st > lastScrollTop) && (lastScrollTop > 48)) {
            $('.stu_gnb_container').css('top', - gnbHeight);
        } else {
            $('.stu_gnb_container').css('top', '0');
        }
        lastScrollTop = st;
    });


    // 이미지 스와이핑
    var mainVisual = new Swiper('.mainVisual', { direction:'horizontal', slidesPerView:1, loop:true, pagination: { el:'.mainVisual-pagination', type:'fraction' }, navigation: { nextEl:'.mainVisual-button-next', prevEl:'.mainVisual-button-prev' }});

    var more_prd = new Swiper('.more_prd', { slidesPerView:'auto', slidesPerGroup:4, freeMode:true, direction:'horizontal', navigation: { nextEl: '.more_prd-button-next', prevEl: '.more_prd-button-prev' }, pagination: { el: '.more_prd-pagination', type:'fraction' },
        breakpoints: { 1024: { slidesPerGroup:1 }}});

function showGuidebookPreview()
{
	$('.stu_eventBanner .stu_btn').addClass('d-n');
	$('.selfbook_preview').removeClass('d-n');
}

    $(document).ready(function() {



 var selfBook = new Swiper('.selfbook_preview', { slidesPerView:'auto', freeMode:true, direction:'horizontal' });
        // 셀프북 미리보기(토글)
        $('.selfbook_preview').addClass('d-n');
        $('.stu_eventBanner .stu_btn').click(function() {
            $(this).addClass('d-n');
           $('.selfbook_preview').removeClass('d-n');
        });



        // 아코디언 메뉴(토글)


//        $('.toggle #fold').click(function() {
//            $(this).addClass('on');
//            $('.step .desc').addClass('d-n');
//            $('.toggle #push-up').removeClass('on');
//        });

//        $('.toggle #push-up').click(function() {
//            $(this).addClass('on');
//            $('.step .desc').removeClass('d-n');
//            $('.toggle #fold').removeClass('on');
//        });


        // 묶음상품 리스트 카운팅
        var prdCount = $('.bundle_prd li.prd_item').length;
        $('.prd_count').text('(' + prdCount + ')');


        // 맨 위로 가기
        $(window).scroll(function() {
            if($(this).scrollTop() > 600) {
                $('.stu_top_wrap').fadeIn();
            } else {
                $('.stu_top_wrap').fadeOut();
            }
        });
        $('.stu_top').click(function() {
            $('html, body').animate({scrollTop : 0}, 400);
            return false;
        });


        // 설명 더보기(토글)
//        var intro = $('.stu_s1 .stu_left_wrap .stu_division');

//        $(intro).addClass('compression');

//        $('.stu_cont-btn').click(function() {
//            $(this).toggleClass('on');
//            $(intro).toggleClass('compression');
//        });

        // 후기/문의 단어수 제한 (더보기 및 닫기)
//        $('.review-text, .cmt-text').each(function() {
//            $(this).html(formatWords($(this).html(), 26));
//            $(this).children('span').hide();
//        }).click(function() {
//            var more_text = $(this).children('span.more_text');
//            var more_link = $(this).children('a.more_link');
//            if (more_text.hasClass('hide')) {
//                more_text.show();
//                more_link.html('닫기');
//                more_text.removeClass('hide');
//            } else {
//                more_text.hide();
//                more_link.html('더보기');
//                more_text.addClass('hide');
//            }
//            return false;
//        });
//        function formatWords(sentence, show) {
//            var words = sentence.split(' ');
//            var new_sentence = '';
//            for (i = 0; i < words.length; i++) {
//                if (i <= show) {
//                    new_sentence += words[i] + ' ';
//                } else {
//                    if (i == (show + 1)) new_sentence += '<span class="more_text hide">';
//                    new_sentence += words[i] + ' ';
//                    if (words[i+1] == null) new_sentence += '</span><a href="#" class="more_link">더보기</a>';
//                }
//            }
//           return new_sentence;
//        };


    });
menuHeight = $(".stu_nav_container").height();


    // 원페이지 헤더 고정
    window.onscroll = function() {myFunction()};
    smint = $('.stu_nav_container');
    
    myOffset = smint.height();

    function myFunction() {
        var scrollTop = $(window).scrollTop()+myOffset;
        var stickyTop = smint.offset().top;

        var headerHeight = $('header').height();
        var bannerHeight = $('.stu_top_banner').outerHeight(true);
        var fixedHeight = (headerHeight + bannerHeight + menuHeight)

        // if we scroll more than the navigation, change its position to fixed and add class 'fxd', otherwise change it back to absolute and remove the class
        if (scrollTop >= fixedHeight) {

//            $("#debugline").html("scrollTop:"+scrollTop);
            smint.css({ 'position':'fixed','top':0,'left':0 }).addClass('fxd');
            // add padding to the body to make up for the loss in heigt when the menu goes to a fixed position.
            // When an item is fixed, its removed from the flow so its height doesnt impact the other items on the page
            $('body').css('padding-top', menuHeight );
            $('.stu_nav_container .stu_btnBox a').addClass('on');
        } else {
            smint.css('position', 'relative').removeClass('fxd');
            //remove the padding we added.
            $('body').css('padding-top', '0' );
            $('.stu_nav_container .stu_btnBox a').removeClass('on');
        }
    }

    // 후기 더 불러오기
    $(window).on('load', function () {
        load('#stu_js-load', '3');

        $(".stu_js-btn-wrap .stu_js-btn").on("click", function () {
            load('#stu_js-load', '3', '.stu_js-btn-wrap');
        })
    });
    function load(id, cnt, btn) {
        var contList = id + " .stu_js-load:not(.active)";
        var contLength = $(contList).length;
        var contTotal_cnt;
        if (cnt < contLength) {
            contTotal_cnt = cnt;
        } else {
            contTotal_cnt = contLength;
            $('.stu_js-btn').hide()
        }
        $(contList + ":lt(" + contTotal_cnt + ")").addClass("active");
    }



$(function () {
  if (!(/iPad|iPhone|iPod/.test(navigator.userAgent))) return
  $(document.head).append(
    '<style>*{cursor:pointer;-webkit-tap-highlight-color:rgba(0,0,0,0)}</style>'
  )
  $(window).on('gesturestart touchmove', function (evt) {
    if (evt.originalEvent.scale !== 1) {
      document.body.style.transform = 'scale(1)';
      evt.originalEvent.preventDefault();
    }
    else
    {}
  })
})

</script>

    <script src="/js2/header_footer3.js" type="text/javascript"></script>

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type='text/javascript'>
  //<![CDATA[
    Kakao.init('1a9167d04b923c18d8863a5f1c8b3a08');

function plusFriendChat() {
      Kakao.PlusFriend.chat({

        plusFriendId: '_QwGUM' // 플러스친구 홈 URL에 명시된 id로 설정합니다.

      });
}
  //]]>
</script>





<script src="https://api.mapbox.com/mapbox-gl-js/v1.8.1/mapbox-gl.js"></script>
<script src="https://maps.googleapis.com/maps/api/js"></script>

<script>
var txt_guidebook='가이드북';
var txt_nights='박';
var txt_days='일';

var lang="";

var use_nights=true;
var style_code='mapbox://styles/stubbyplanner/ck791mzhu2tv31jlhxbwa9e3i';


function cpR(t)
{
}

</script>
<script src="/js/rtm_mapbox.js"></script>

<div id="modal-Guide" style="height:100%" class="modal fade bs-example-modal-lg"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" style="height:98%">
    <div class="modal-content" style="height:95%;border-radius:0px;">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="title-Guide">GuideBook</h4>
      </div>
      <div class="modal-body" style="height:94%;padding:0px;">
		<iframe id="if_guidebook" frameborder="0" width="100%"  height="100%" src="about:blank" ></iframe>
	
      </div>
    </div>
  </div>
</div>



<div id="div_route_map" style="display:none;z-index:999;position:fixed;left:0px;top:0px;width:100%;height:100%;background:#fff">


	<div style="position:relative;float:left;width:70%;height:100%;" id="route_map">
	</div>
	<div style="position:relative;float:left;width:30%;height:100%;background:#fff">
		<div id="route_citylist" style="position: relative;height:100%;padding-left: 20px;font-size: 13pt;padding-top: 20px;" ></div>
	</div>
	<a href="javascript:closeRouteMap()"><div style="position:absolute;top:10px;right:30%;margin-right:10px;font-size:15pt;font-weight:500;color:#fff;background:#696969;border:1px solid #efefef;border-radius:0px;width:50px;height:60px;padding-top:8px;text-align:center;line-height:120%;"><i class="fa fa-times"></i><br><font style="font-size:9pt;color:#fff;font-weight:400">닫기</font></div></a>

</div>
 
       <section class="stu_md_search">
            <div class="search_background"></div>
            <div class="md-container">
                <div class="md-header">
                    <a href="#stu_md-close" class="ico_close"></a>
                    <div class="md-searchWrap">
                            <fieldset>
                                <input type="search" name="search_keyword" autocorrect="off" autosave="off" class="md-search-input" placeholder="도시,국가,키워드로 검색" value>
                            </fieldset>
                     
                    </div>
                </div>

                    <div class="md-content">
                        <div class="md-section">
                            <div class="content-header ico_country">서유럽 국가</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?&x=&region=11101">
                                        <div class="value">
                                            <b class="name">프랑스</b>
                                        </div>
                                        <div class="count">
               
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?&x=&region=11104">
                                        <div class="value">
                                            <b class="name">이탈리아</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?&x=&region=11102">
                                        <div class="value">
                                            <b class="name">스위스</b>
                                        </div>
                                        <div class="count">
                              
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?&x=&region=11103">
                                        <div class="value">
                                            <b class="name">영국</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?&x=&region=11106">
                                        <div class="value">
                                            <b class="name">독일</b>
                                        </div>
                                        <div class="count">
                   
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?&x=&region=11108">
                                        <div class="value">
                                            <b class="name">벨기에</b>
                                        </div>
                                        <div class="count">
               
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?&x=&region=11107">
                                        <div class="value">
                                            <b class="name">네덜란드</b>
                                        </div>
                                        <div class="count">
                              
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?&x=&region=11110">
                                        <div class="value">
                                            <b class="name">아일랜드</b>
                                        </div>
                                        <div class="count">
                              
                                        </div>
                                    </a>
                                </li>

                            </ul>
                        </div>
                        <div class="md-section">
                            <div class="content-header ico_country">지중해 국가</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?&x=&region=12101">
                                        <div class="value">
                                            <b class="name">스페인</b>
                                        </div>
                                        <div class="count">
                      
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?&x=&region=12102">
                                        <div class="value">
                                            <b class="name">포르투갈</b>
                                        </div>
                                        <div class="count">
                       
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?&x=&region=12103">
                                        <div class="value">
                                            <b class="name">그리스</b>
                                        </div>
                                        <div class="count">
                 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?&x=&region=12104">

                                        <div class="value">
                                            <b class="name">터키</b>
                                        </div>
                                        <div class="count">
       
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?&x=&region=12107">

                                        <div class="value">
                                            <b class="name">몰타</b>
                                        </div>
                                        <div class="count">
                   
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="md-section">
                            <div class="content-header ico_country">동유럽 국가</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?&x=&region=13">

                                        <div class="value">
                                            <b class="name">체코</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?&x=&region=13">
                                        <div class="value">
                                            <b class="name">헝가리</b>
                                        </div>
                                        <div class="count">
                 
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?&x=&region=13">
                                        <div class="value">
                                            <b class="name">오스트리아</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                    <a href="/market/group.asp?serial=146">
                                        <div class="value">
                                            <b class="name">슬로베니아</b>
                                        </div>
                                        <div class="count">
                    
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?&x=&region=13106">
                                        <div class="value">
                                            <b class="name">크로아티아</b>
                                        </div>
                                        <div class="count">
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="md-section">
                            <div class="content-header ico_country">북유럽 국가</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="/market/index_ctry.asp?&x=&region=14107">
                                        <div class="value">
                                            <b class="name">아이슬란드</b>
                                        </div>
                                        <div class="count">
                  
                                        </div>
                                    </a>
                                </li>
	                     <li class="content-item">
                                    <a href="/market/index_ctry.asp?&x=&region=14104">
                                        <div class="value">
                                            <b class="name">노르웨이</b>
                                        </div>
                                        <div class="count">
                   
                                        </div>
                                    </a>
                                </li>



                                <li class="content-item">
                                     <a href="/market/index_ctry.asp?&x=&region=14103">
                                        <div class="value">
                                            <b class="name">덴마크</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="/market/index_ctry.asp?&x=&region=14102">
                                        <div class="value">
                                            <b class="name">핀란드</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/index_ctry.asp?&x=&region=14105">
                                        <div class="value">
                                            <b class="name">스웨덴</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/market/index_ctry.asp?&x=&region=14101">
                                        <div class="value">
                                            <b class="name">러시아</b>
                                        </div>
                                        <div class="count">
                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                      <a href="/market/index_ctry.asp?&x=&region=14106">
                                        <div class="value">
                                            <b class="name">발트3국</b>
                                        </div>
                                        <div class="count">
 
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="md-section">
                            <div class="content-header ico_theme">도시</div>
                            <ul class="content-list">


                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111011004">
                                        <div class="value">
                                            <b class="name">파리</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111031001">
                                        <div class="value">
                                            <b class="name">런던</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=121011002">
                                        <div class="value">
                                            <b class="name">바르셀로나</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=131011001">
                                        <div class="value">
                                            <b class="name">프라하</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111011003">
                                        <div class="value">
                                            <b class="name">니스</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=141051001">
                                        <div class="value">
                                            <b class="name">스톡홀름</b>
                                            <i class="category">스웨덴</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=121011003">
                                        <div class="value">
                                            <b class="name">마드리드</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111021002">
                                        <div class="value">
                                            <b class="name">인터라켄</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111041004">
                                        <div class="value">
                                            <b class="name">로마</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=131041001">
                                        <div class="value">
                                            <b class="name">비엔나</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=141031001">
                                        <div class="value">
                                            <b class="name">코펜하겐</b>
                                            <i class="category">덴마크</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=121031001">
                                        <div class="value">
                                            <b class="name">아테네</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111041006">
                                        <div class="value">
                                            <b class="name">베니스</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111041003">
                                        <div class="value">
                                            <b class="name">피렌체</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=131021001">
                                        <div class="value">
                                            <b class="name">부다페스트</b>
                                            <i class="category">헝가리</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=141021001">
                                        <div class="value">
                                            <b class="name">헬싱키</b>
                                            <i class="category">핀란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=121021001">
                                        <div class="value">
                                            <b class="name">리스본</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111061006">
                                        <div class="value">
                                            <b class="name">프랑크푸르트</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111061005">
                                        <div class="value">
                                            <b class="name">뮌헨</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=131061001">
                                        <div class="value">
                                            <b class="name">두브로브니크</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=121041001">
                                        <div class="value">
                                            <b class="name">이스탄불</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111011014">
                                        <div class="value">
                                            <b class="name">마르세유</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111041001">
                                        <div class="value">
                                            <b class="name">밀라노</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=121041111">
                                        <div class="value">
                                            <b class="name">알라니아</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=141041002">
                                        <div class="value">
                                            <b class="name">오슬로</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111061008">
                                        <div class="value">
                                            <b class="name">베를린</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111071001">
                                        <div class="value">
                                            <b class="name">암스테르담</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=141041002">
                                        <div class="value">
                                            <b class="name">오슬로</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111081001">
                                        <div class="value">
                                            <b class="name">브뤼셀</b>
                                            <i class="category">벨기에</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111101001">
                                        <div class="value">
                                            <b class="name">더블린</b>
                                            <i class="category">아일랜드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=131081001">
                                        <div class="value">
                                            <b class="name">부쿠레슈티</b>
                                            <i class="category">루마니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=131031004">
                                        <div class="value">
                                            <b class="name">크라쿠프</b>
                                            <i class="category">폴란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=131031003">
                                        <div class="value">
                                            <b class="name">바르샤바</b>
                                            <i class="category">폴란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=131051002">
                                        <div class="value">
                                            <b class="name">브라티슬라바</b>
                                            <i class="category">슬로바키아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111041011">
                                        <div class="value">
                                            <b class="name">나폴리</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111011005">
                                        <div class="value">
                                            <b class="name">아비뇽</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=131061011">
                                        <div class="value">
                                            <b class="name">흐바르</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111061020">
                                        <div class="value">
                                            <b class="name">뉘른베르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=121011057">
                                        <div class="value">
                                            <b class="name">론다</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=141011008">
                                        <div class="value">
                                            <b class="name">블라디보스톡</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111061004">
                                        <div class="value">
                                            <b class="name">드레스덴</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111021005">
                                        <div class="value">
                                            <b class="name">취리히</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=121011028">
                                        <div class="value">
                                            <b class="name">테네리페</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=121011005">
                                        <div class="value">
                                            <b class="name">말라가</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=141071001">
                                        <div class="value">
                                            <b class="name">아퀴레이리</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=141071010">
                                        <div class="value">
                                            <b class="name">후사비크</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=141071044">
                                        <div class="value">
                                            <b class="name">요쿨살론</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=141071019">
                                        <div class="value">
                                            <b class="name">스카프타펠</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=141071022">
                                        <div class="value">
                                            <b class="name">굴포스</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=141071003">
                                        <div class="value">
                                            <b class="name">레이캬비크</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=141061001">
                                        <div class="value">
                                            <b class="name">탈린</b>
                                            <i class="category">에스토니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=141041012">
                                        <div class="value">
                                            <b class="name">트롬쇠</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=141041011">
                                        <div class="value">
                                            <b class="name">스타방에르</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=141041011">
                                        <div class="value">
                                            <b class="name">뤼세 피오르드</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=141011002">
                                        <div class="value">
                                            <b class="name">상트페테르부르크</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=141011001">
                                        <div class="value">
                                            <b class="name">모스크바</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=131061008">
                                        <div class="value">
                                            <b class="name">자그레브</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=131061002">
                                        <div class="value">
                                            <b class="name">스플리트</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=131041032">
                                        <div class="value">
                                            <b class="name">할슈타트</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=131041002">
                                        <div class="value">
                                            <b class="name">잘츠부르크</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=131011003">
                                        <div class="value">
                                            <b class="name">체스키크롬로프</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=121041008">
                                        <div class="value">
                                            <b class="name">보드룸</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=121041028">
                                        <div class="value">
                                            <b class="name">페티예</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=121041003">
                                        <div class="value">
                                            <b class="name">카파도키아</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=121031021">
                                        <div class="value">
                                            <b class="name">자킨토스</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=121031002">
                                        <div class="value">
                                            <b class="name">산토리니</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=121021008">
                                        <div class="value">
                                            <b class="name">포르투</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=121011007">
                                        <div class="value">
                                            <b class="name">세비야</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=121011001">
                                        <div class="value">
                                            <b class="name">그라나다</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=121011004">
                                        <div class="value">
                                            <b class="name">톨레도</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111061003">
                                        <div class="value">
                                            <b class="name">퓌센</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111061001">
                                        <div class="value">
                                            <b class="name">하이델베르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=121071009">
                                        <div class="value">
                                            <b class="name">몰타</b>
                                            <i class="category">몰타</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111041026">
                                        <div class="value">
                                            <b class="name">팔레르모</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111041016">
                                        <div class="value">
                                            <b class="name">볼로냐</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111041036">
                                        <div class="value">
                                            <b class="name">베로나</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111041123">
                                        <div class="value">
                                            <b class="name">친퀘테레</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111031008">
                                        <div class="value">
                                            <b class="name">에든버러</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111021001">
                                        <div class="value">
                                            <b class="name">루체른</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111021009">
                                        <div class="value">
                                            <b class="name">라우터브룬넨</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/market/index_city.asp?&x=&region=111011010">
                                        <div class="value">
                                            <b class="name">리옹</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>


                            </ul>
                        </div>


                        <div class="md-section">
                            <div class="content-header ico_country">인기투어 카테고리</div>
                            <ul class="content-list">

<li class="content-item"><a href="/market/group.asp?&x=&serial=146"><div class="value"><b class="name">슬로베니아 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=148"><div class="value"><b class="name">코토르</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=149"><div class="value"><b class="name">스르지산</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=151"><div class="value"><b class="name">번지점프</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=152"><div class="value"><b class="name">캐년스윙</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=153"><div class="value"><b class="name">탈린 워킹투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=1"><div class="value"><b class="name">몽생미셀 베스트</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=3"><div class="value"><b class="name">파리 자전거투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=4"><div class="value"><b class="name">파리스냅</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=5"><div class="value"><b class="name">루브르 지식가이드</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=206"><div class="value"><b class="name">와이너리투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=166"><div class="value"><b class="name">고조섬 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=167"><div class="value"><b class="name">코미노섬 크루즈</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=169"><div class="value"><b class="name">몰타섬 지프</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=6"><div class="value"><b class="name">오르세 미술관</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=7"><div class="value"><b class="name">베르사유</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=44"><div class="value"><b class="name">체코 와인</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=56"><div class="value"><b class="name">바르셀로나 스냅</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=58"><div class="value"><b class="name">카를로비 바리</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=15"><div class="value"><b class="name">래프팅</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=18"><div class="value"><b class="name">무동력 자전거</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=19"><div class="value"><b class="name">카약(KAYAK)</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=234"><div class="value"><b class="name">에즈</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=247"><div class="value"><b class="name">아베이로</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=20"><div class="value"><b class="name">런던 뮤지컬</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=21"><div class="value"><b class="name">코츠월드+근교</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=170"><div class="value"><b class="name">리스본 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=191"><div class="value"><b class="name">리옹 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=22"><div class="value"><b class="name">세븐시스터즈</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=25"><div class="value"><b class="name">스톤헨지</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=69"><div class="value"><b class="name">벨기에 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=36"><div class="value"><b class="name">체코 스카이다이빙</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=38"><div class="value"><b class="name">프라하 시내</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=325"><div class="value"><b class="name">자다르 카약</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=40"><div class="value"><b class="name">프라하 자전거</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=41"><div class="value"><b class="name">사운드오브뮤직</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=43"><div class="value"><b class="name">벌룬투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=52"><div class="value"><b class="name">보르게세</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=51"><div class="value"><b class="name">런던 스냅</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=8"><div class="value"><b class="name">삭제</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=138"><div class="value"><b class="name">이스탄불 지식가이드</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=45"><div class="value"><b class="name">체스키</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=9"><div class="value"><b class="name">루아르 고성</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=11"><div class="value"><b class="name">몽마르뜨</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=319"><div class="value"><b class="name">스노쿨링</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=13"><div class="value"><b class="name">스위스 패러글라이딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=16"><div class="value"><b class="name">제트보트</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=26"><div class="value"><b class="name">바티칸 지식가이드</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=46"><div class="value"><b class="name">드레스덴</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=62"><div class="value"><b class="name">타파스 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=178"><div class="value"><b class="name">플라멩고</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=72"><div class="value"><b class="name">해리포터 스튜디오 </b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=24"><div class="value"><b class="name">런던 자전거투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=29"><div class="value"><b class="name">베니스 워킹투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=32"><div class="value"><b class="name">가우디 지식가이드</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=34"><div class="value"><b class="name">세고비아</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=67"><div class="value"><b class="name">토스카나</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=74"><div class="value"><b class="name">삭제</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=80"><div class="value"><b class="name">몬세라트</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=81"><div class="value"><b class="name">마드리드시내 / 프라도 미술관</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=86"><div class="value"><b class="name">잔세스칸스(풍차)+</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=145"><div class="value"><b class="name">플리트비체</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=42"><div class="value"><b class="name">소금광산</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=82"><div class="value"><b class="name">마드리드 근교(톨레도/세고비아)</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=10"><div class="value"><b class="name">벨기에 당일치기</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=14"><div class="value"><b class="name">캐녀닝</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=28"><div class="value"><b class="name">로마 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=33"><div class="value"><b class="name">톨레도</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=35"><div class="value"><b class="name">지로나+투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=39"><div class="value"><b class="name">프라하 스냅</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=98"><div class="value"><b class="name">몽생미셸 야경투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=215"><div class="value"><b class="name">델피-메테오라</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=216"><div class="value"><b class="name">프리이빗 차량 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=217"><div class="value"><b class="name">산토리니 세일링</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=218"><div class="value"><b class="name">크레타</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=219"><div class="value"><b class="name">산토리니 요트투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=99"><div class="value"><b class="name">블루라군투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=96"><div class="value"><b class="name">우피치미술관</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=30"><div class="value"><b class="name">피렌체 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=154"><div class="value"><b class="name">오랑주리 미술관</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=55"><div class="value"><b class="name">로마 스냅</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=61"><div class="value"><b class="name">바르셀로나 시내</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=54"><div class="value"><b class="name">베로나 자전거 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=230"><div class="value"><b class="name">아이슬란드 일주(feat.링로드)</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=231"><div class="value"><b class="name">베르동</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=235"><div class="value"><b class="name">아를</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=238"><div class="value"><b class="name">융프라우 가이드</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=239"><div class="value"><b class="name">몽블랑 트레킹</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=243"><div class="value"><b class="name">실프라 스노쿨링</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=244"><div class="value"><b class="name">파티마</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=245"><div class="value"><b class="name">나자레</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=246"><div class="value"><b class="name">오비도스</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=249"><div class="value"><b class="name">돌로미티</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=250"><div class="value"><b class="name">카프리섬</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=251"><div class="value"><b class="name">나폴리<>포지타노/아말피/소렌토 차량</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=252"><div class="value"><b class="name">두브로브니크 성벽/워킹투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=321"><div class="value"><b class="name">산토리니 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=237"><div class="value"><b class="name">파리 공항픽업/샌딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=256"><div class="value"><b class="name">왕좌의게임 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=257"><div class="value"><b class="name">트로기르&#38;블루라군&#38;솔타</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=263"><div class="value"><b class="name">프라힐리아나</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=297"><div class="value"><b class="name">깐느</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=300"><div class="value"><b class="name">나폴리공항 픽업/샌딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=301"><div class="value"><b class="name">볼로냐 자전거 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=302"><div class="value"><b class="name">밀란 경기장투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=303"><div class="value"><b class="name">세비야-론다 차량투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=304"><div class="value"><b class="name">세비야 플라멩고</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=306"><div class="value"><b class="name">자그레브 공항픽업</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=307"><div class="value"><b class="name">스플리트↔두브로브니크</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=308"><div class="value"><b class="name">스플리트 공항픽업/샌딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=309"><div class="value"><b class="name">무라노, 부라노섬</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=310"><div class="value"><b class="name">바라주딘&#38;트라코스찬 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=311"><div class="value"><b class="name">프라하→판도르프 아울렛</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=314"><div class="value"><b class="name">한적한 잘츠부르크 근교</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=240"><div class="value"><b class="name">인터라켄 프라이빗 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=272"><div class="value"><b class="name">부다페스트→판도르프 아울렛</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=273"><div class="value"><b class="name">까를로비 바리</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=274"><div class="value"><b class="name">할슈타트(비엔나, 잘츠부르크)</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=283"><div class="value"><b class="name">루마니아 드라큘라성</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=294"><div class="value"><b class="name">흐바르 섬 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=295"><div class="value"><b class="name">두브로브니크 공항픽업/샌딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=312"><div class="value"><b class="name">에보라</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=313"><div class="value"><b class="name">부다페스트 공항픽업/샌딩/트랜스퍼</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=315"><div class="value"><b class="name">오스트리아 공항픽업/샌딩/트랜스퍼</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=316"><div class="value"><b class="name">프라하 공항픽업/샌딩/트랜스퍼</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=318"><div class="value"><b class="name">해적선 크루즈 파티</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=267"><div class="value"><b class="name">코모호수 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=268"><div class="value"><b class="name">티볼리투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=64"><div class="value"><b class="name">피카소 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=65"><div class="value"><b class="name">에든버러 시내워킹</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=102"><div class="value"><b class="name">골든서클투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=103"><div class="value"><b class="name">[프랑스남부]코트다쥐르</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=104"><div class="value"><b class="name">쿠킹 클래스</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=184"><div class="value"><b class="name">스플리트 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=326"><div class="value"><b class="name">엘라피티섬 크루즈</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=185"><div class="value"><b class="name">체르마트/마테호른 트레킹</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=186"><div class="value"><b class="name">라보/몽트뢰</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=187"><div class="value"><b class="name">루체른 </b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=190"><div class="value"><b class="name">더몰/프라다 스페이스</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=140"><div class="value"><b class="name">벨기에 맥주투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=101"><div class="value"><b class="name">오로라 헌팅투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=114"><div class="value"><b class="name">친퀘테레 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=126"><div class="value"><b class="name">플젠+맥주스파</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=127"><div class="value"><b class="name">천국의 문</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=76"><div class="value"><b class="name">내셔널 갤러리</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=83"><div class="value"><b class="name">암스테르담 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=128"><div class="value"><b class="name">라이(+세븐시스터즈)</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=129"><div class="value"><b class="name">거북이섬 보트투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=135"><div class="value"><b class="name">벌룬투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=136"><div class="value"><b class="name">그린&레드 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=137"><div class="value"><b class="name">ATV투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=142"><div class="value"><b class="name">오르비에토+아씨시</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=130"><div class="value"><b class="name">나바지오 해변+블루케이브 보트투어!</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=139"><div class="value"><b class="name">이스탄불 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=131"><div class="value"><b class="name">케팔로니아 섬 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=132"><div class="value"><b class="name">할슈타트</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=2"><div class="value"><b class="name">지베르니+근교</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=48"><div class="value"><b class="name">인터라켄 호스텔</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=70"><div class="value"><b class="name">브뤼헤+겐트 차량</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=77"><div class="value"><b class="name">아테네 근교 섬 1DAY 크루즈</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=78"><div class="value"><b class="name">뤼세피오르드</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=141"><div class="value"><b class="name">세비야 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=17"><div class="value"><b class="name">스위스 스카이다이빙</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=23"><div class="value"><b class="name">대영박물관</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=27"><div class="value"><b class="name">이탈리아 남부투어(로마출발<>포지타노/소렌토/폼페이/아말피/카프리)</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=121"><div class="value"><b class="name">파리시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=115"><div class="value"><b class="name">나폴레옹 왕궁</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=79"><div class="value"><b class="name">코스타브라바 스쿠버/스노클링</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=327"><div class="value"><b class="name">파리 라발레 아울렛 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=123"><div class="value"><b class="name">런던 시내(city)투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=155"><div class="value"><b class="name">프랑크푸르트 시내</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=85"><div class="value"><b class="name">앤트워프 워킹</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=100"><div class="value"><b class="name">공항 셔틀버스</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=157"><div class="value"><b class="name">포르투 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=156"><div class="value"><b class="name">하이델베르크시내</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=158"><div class="value"><b class="name">상트페테르부르크 시내/근교</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=159"><div class="value"><b class="name">모스크바 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=162"><div class="value"><b class="name">부다페스트 시내</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=163"><div class="value"><b class="name">센텐드레 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=160"><div class="value"><b class="name">자그레브 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=161"><div class="value"><b class="name">비엔나 시내</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=164"><div class="value"><b class="name">행글라이딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=171"><div class="value"><b class="name">두브로브니크 근교 와이너리</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=174"><div class="value"><b class="name">스플리트 수상 액티비티</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=176"><div class="value"><b class="name">두브로브니크 바다카약</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=179"><div class="value"><b class="name">베를린 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=182"><div class="value"><b class="name">빙하투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=183"><div class="value"><b class="name">고래투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=193"><div class="value"><b class="name">스나이펠스네스</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=194"><div class="value"><b class="name">아이슬란드 남부투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=195"><div class="value"><b class="name">얼음동굴</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=196"><div class="value"><b class="name">화산투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=232"><div class="value"><b class="name">프로방스/라벤더</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=233"><div class="value"><b class="name">모나코</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=236"><div class="value"><b class="name">파리 필수 티켓</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=248"><div class="value"><b class="name">코임브라</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=253"><div class="value"><b class="name">두브로브니크↔스플리트</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=254"><div class="value"><b class="name">크르카 국립공원</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=259"><div class="value"><b class="name">이스트라반도 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=260"><div class="value"><b class="name">알함브라 궁전투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=262"><div class="value"><b class="name">코르도바</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=265"><div class="value"><b class="name">네르하</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=270"><div class="value"><b class="name">나폴리 푸드/쿠킹클래스</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=305"><div class="value"><b class="name">바르셀로나 티켓</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=320"><div class="value"><b class="name">보드룸 보트투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=197"><div class="value"><b class="name">페티예 패러글라이딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=198"><div class="value"><b class="name">파묵칼레+ 차량투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=199"><div class="value"><b class="name">달얀 차량투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=200"><div class="value"><b class="name">카푸타스해변 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=201"><div class="value"><b class="name">사클리켄트 래프팅</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=202"><div class="value"><b class="name">모스타르&#38;포세닉</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=203"><div class="value"><b class="name">신트라/카스카이스</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=204"><div class="value"><b class="name">아라비다 와인투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=205"><div class="value"><b class="name">대항해 보트</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=207"><div class="value"><b class="name">그라나다 패러글라이딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=208"><div class="value"><b class="name">트롬소 오로라투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=210"><div class="value"><b class="name">라인폭포&마이링겐</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=255"><div class="value"><b class="name">브라츠섬</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=241"><div class="value"><b class="name">런던 공항 픽업 서비스</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=242"><div class="value"><b class="name">런던필수 티켓</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=261"><div class="value"><b class="name">그라나다 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=264"><div class="value"><b class="name">그라나다-론다 차량투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=266"><div class="value"><b class="name">베니스 곤돌라</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=269"><div class="value"><b class="name">폼페이&#38;베수비오</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=277"><div class="value"><b class="name">부다페스트 스냅</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=278"><div class="value"><b class="name">브라티슬라바 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=279"><div class="value"><b class="name">크라쿠프 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=280"><div class="value"><b class="name">바르샤바 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=282"><div class="value"><b class="name">비엔나 공연 티켓</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=284"><div class="value"><b class="name">와이너리 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=285"><div class="value"><b class="name">산토리니 공항 픽업/샌딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=317"><div class="value"><b class="name">천혜의 자연, 루스키섬</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=211"><div class="value"><b class="name">에스프레소 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=212"><div class="value"><b class="name">파스타 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=213"><div class="value"><b class="name">피자 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=214"><div class="value"><b class="name">쿠킹클래스</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=288"><div class="value"><b class="name">스트라스부르 당일치기</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=289"><div class="value"><b class="name">블라디보스톡 시내투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=290"><div class="value"><b class="name">블라디보스톡 공항픽업/샌딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=291"><div class="value"><b class="name">로도스섬 페리</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=292"><div class="value"><b class="name">보스포러스 크루즈</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=293"><div class="value"><b class="name">라스토케</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=296"><div class="value"><b class="name">피사 투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=298"><div class="value"><b class="name">피렌체 스냅</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=299"><div class="value"><b class="name">베니스 스냅</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=220"><div class="value"><b class="name">용암굴</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=221"><div class="value"><b class="name">개썰매투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=222"><div class="value"><b class="name">데티포스투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=223"><div class="value"><b class="name">미바튼호수투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=224"><div class="value"><b class="name">스노모빌</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=225"><div class="value"><b class="name">스카프타펠</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=226"><div class="value"><b class="name">에트나 화산투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=227"><div class="value"><b class="name">시칠리아 푸드투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=228"><div class="value"><b class="name">아그리젠토</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=229"><div class="value"><b class="name">아이슬란드 렌트카(특가중)</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=322"><div class="value"><b class="name">비세보섬 블루케이브</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=323"><div class="value"><b class="name">하이랜드</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=328"><div class="value"><b class="name">타오르미나 워킹투어</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=330"><div class="value"><b class="name">밀라노 공항 픽업/샌딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=324"><div class="value"><b class="name">로마공항 픽업/샌딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=329"><div class="value"><b class="name">베니스공항 픽업/샌딩</b></div></a></li><li class="content-item"><a href="/market/group.asp?&x=&serial=331"><div class="value"><b class="name">피렌체공항 픽업/샌딩</b></div></a></li>

<li class="content-item"><a href="/market/group.asp?&x=&serial=146"><div class="value"><b class="name">포스토이나</b></div></a></li>
<li class="content-item"><a href="/market/group.asp?&x=&serial=146"><div class="value"><b class="name">블레드</b></div></a></li>
<li class="content-item"><a href="/market/group.asp?&x=&serial=146"><div class="value"><b class="name">류블라냐</b></div></a></li>



                            </ul>
                        </div>

                </div>
            </section>

</body>
</html>