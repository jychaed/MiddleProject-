<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<html>
<head>


    <title>런던호텔  - 스투비플래너</title>
    <!-- meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimun-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">


    <!-- CSS/JavaScript -->
    <link rel="stylesheet" type="text/css" href="../css2/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="../css2/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="../css2/common.css">
    <link rel="stylesheet" type="text/css" href="../css2/header_footer.css">
    <link rel="stylesheet" type="text/css" href="../css2/slpmain.css">
    <link rel="stylesheet" type="text/css" href="../css2/itemStyle.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


    <!-- lazysizes.min.js : 레이지로딩 -->
    <script src="../js2/lazysizes.min.js" type="text/javascript" async=""></script>
    <!-- swiper.min.js : 이미지슬라이더 -->
    <script src="../js2/swiper.min.js" type="text/javascript"></script>
    <!-- daterangepicker.js : 달력 -->
    <script src="../js2/moment.min.js" type="text/javascript"></script>
    <script src="../js2/daterangepicker.js" type="text/javascript"></script>
    <!-- header/footer -->

<script src="/js2/header_footer3.js" type="text/javascript"></script>




<script type="text/javascript" src="https://maps.google.co.kr/maps/api/js?sensor=false&language=ko&key=AIzaSyAlG3b7IeRzDZW46KIpOFPtiIxXt9MU46I"></script>



<style>



.toggle {
  cursor: pointer;
  display: inline-block;
}

.toggle-switch {
  display: inline-block;
  background: #ccc;
  border-radius: 16px;
  width: 58px;
  height: 32px;
  position: relative;
  vertical-align: middle;
  transition: background 0.25s;
}
.toggle-switch:before, .toggle-switch:after {
  content: "";
}
.toggle-switch:before {
  display: block;
  background: linear-gradient(to bottom, #fff 0%, #eee 100%);
  border-radius: 50%;
  box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.25);
  width: 24px;
  height: 24px;
  position: absolute;
  top: 4px;
  left: 4px;
  transition: left 0.25s;
}
.toggle:hover .toggle-switch:before {
  background: linear-gradient(to bottom, #fff 0%, #fff 100%);
  box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.5);
}
.toggle-checkbox:checked + .toggle-switch {
  background: #003580;
}
.toggle-checkbox:checked + .toggle-switch:before {
  left: 30px;
}

.toggle-checkbox {
  position: absolute;
  visibility: hidden;
}

.toggle-label {
  margin-left: 5px;
  position: relative;
  top: 2px;
}


.thumb
{
	background:#c0c0c0;
}
.pager
{

	margin-top:0px;
	margin-bottom:70px;
}
.prd_item .like.active {
    background-position: -168px 0;
}
.prd_item .like {
    position: absolute;
    top: 0px;
    right: 5px;
    width: 56px;
    height: 56px;
    background-position: -224px 0;
    background-size: 448px;
    z-index: 9;
}
.like
{
    background-image: url(images/common/stu_icon.png);
    background-repeat: no-repeat;
    vertical-align: middle;
}
.selector_trs
{
	cursor:pointer;
	margin:5px 10%;padding:6px 0px;font-size:12pt;font-weight:700;text-align:center;border:1px solid #696969;color:#fff;
}
.selector_trs_selected
{
	cursor:pointer;
	margin:5px 10%;padding:6px 0px;font-size:12pt;font-weight:700;text-align:center;background:#fff;border:1px solid #696969;color:#000;
}

.stu_top_banner .stu_schedule:before {
    content: "";
    position: absolute;

    top: 5.5px;

    width: 18px;
    height: 18px;
    background-position: -180px -198px;
    background-size: 288px;
}
#markerLayer img {
	border:3px solid #fff;
        border-radius: 50px;
}





/* 헤더영역 */
header .stu_gnb_container { position:fixed; top:0; left:0; right:0; height:50px; border-bottom:1px solid #e5e5e5; background:rgba(255,255,255,.95); line-height:50px; z-index:10; -webkit-transition:top .3s ease; -moz-transition:top .3s ease; -o-transition:top .3s ease; transition:top .3s ease; }
header .stu_gnb_container .stu_inner_wrap { padding:0 16px; }
header .stu_gnb_container .stu_logo { float:left; position:relative; top:8px; height:34px; }
header .stu_gnb_container .stu_gnb_wrap { float:right; display:inline-block; }
header .stu_gnb_container .stu_gnb_wrap li { display:inline-block; position:relative; }
header .stu_gnb_container .stu_gnb_wrap li + li { margin-left:6px; }
header .stu_gnb_container .stu_gnb_wrap li p { display:none; }
header .stu_gnb_container .stu_gnb_wrap li#ico_search { padding:0 20px 0 5px; -webkit-border-radius:18px; border-radius:18px; border:1px solid #e5e5e5; background:#f5f5f5; line-height:34px; }
header .stu_gnb_container .stu_gnb_wrap li#ico_search:after { content:"검색"; font-size:15px; font-weight:300; color:#666; cursor:text; }
header .stu_gnb_container .stu_gnb_wrap li#ico_planner { display:none; }
header .stu_gnb_container button { margin-top:-2px; }
header .stu_gnb_container button.ico_search { display:inline-block; width:30px; height:30px; background-position:-60px -30px; background-size:240px; opacity:.6; }
header .stu_gnb_container button.ico_planner { display:none; }
header .stu_gnb_container button.ico_booking { display:none; }

@media (min-width:620px){

/* 헤더영역 */
header .stu_gnb_container { position:relative; top:0! important; height:56px; line-height:56px; }
header .stu_gnb_container .stu_inner_wrap { padding:0 20px; }
header .stu_gnb_container .stu_logo { top:11px; }
header .stu_gnb_container .stu_gnb_wrap li + li { margin-left:32px; }
header .stu_gnb_container .stu_gnb_wrap li:after { display:inline-block; font-size:16px; font-weight:400; color:#222; }
header .stu_gnb_container .stu_gnb_wrap li a { position:absolute; top:0; left:0; width:100%; height:100%; }
header .stu_gnb_container .stu_gnb_wrap li#ico_search { padding:0 32px 0 10px; }
header .stu_gnb_container .stu_gnb_wrap li#ico_search:after { content:"투어 또는 국가 검색"; font-size:14px; }
header .stu_gnb_container .stu_gnb_wrap li#ico_booking:after { content:"내 예약"; }
header .stu_gnb_container .stu_gnb_wrap li#ico_planner { display:inline-block; }
header .stu_gnb_container .stu_gnb_wrap li#ico_planner:after { content:"플래너"; }
header .stu_gnb_container button.ico_booking { display:none; }

}

@media (min-width:1025px){


/* 헤더영역 */
header .stu_gnb_container .stu_inner_wrap { padding:0; }
header .stu_gnb_container .stu_gnb_wrap li + li { margin-left:40px; }
header .stu_gnb_container .stu_gnb_wrap li#ico_search { padding:0 32px 0 12px; }
header .stu_gnb_container .stu_gnb_wrap li#ico_search:after { content:"도시로 검색하세요"; }

}
.hotel_fav
{
	float:left;
	position:relative;
	width:150px;
	height:180px;
}
</style>
</head>
<body onload="" onresize="resized()">
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
                                    <li class="prfPopup_item"><a href="/index.asp"><img src="../images/uploadfiles/제주도.jpg"> 한국어</a></li>

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

                        <li class="lnb_item  ">
                            <a href="/market/index.asp">유럽투어</a>
                        </li>
                        <li class="lnb_item  active">
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

    <!--메인영역_Str-->
    <main class="stu_clearfix" >

       <section class="stu_top_banner" >
            <div class="stu_bg">
                <div class="titArea">

                    <a href="/mb/index.asp" class="loc">숙소 홈</a>

                    <b class="current-city" id="current-city">런던

                        <div class="popover-wrap" id="popover-wrap-city">
                            <ul>
                                <li><a href="#" class="current">런던</a></li>

	<li><a href="/mb/index_city.asp?inframe=&trip_id=&l=&r_id=&region=111031004&tripwith=">옥스퍼드</a></li>

	<li><a href="/mb/index_city.asp?inframe=&trip_id=&l=&r_id=&region=111031008&tripwith=">에든버러</a></li>

	<li><a href="/mb/index_city.asp?inframe=&trip_id=&l=&r_id=&region=111031005&tripwith=">케임브리지</a></li>

	<li><a href="/mb/index_city.asp?inframe=&trip_id=&l=&r_id=&region=111031007&tripwith=">리버풀</a></li>

	<li><a href="/mb/index_city.asp?inframe=&trip_id=&l=&r_id=&region=111031002&tripwith=">브라이튼</a></li>

	<li><a href="/mb/index_city.asp?inframe=&trip_id=&l=&r_id=&region=111031030&tripwith=">맨체스터</a></li>

	<li><a href="/mb/index_city.asp?inframe=&trip_id=&l=&r_id=&region=111031009&tripwith=">글래스고</a></li>

	<li><a href="/mb/index_city.asp?inframe=&trip_id=&l=&r_id=&region=111031003&tripwith=">윈저</a></li>

	<li><a href="/mb/index_city.asp?inframe=&trip_id=&l=&r_id=&region=111031006&tripwith=">바스</a></li>

	<li><a href="/mb/index_city.asp?inframe=&trip_id=&l=&r_id=&region=111031010&tripwith=">바이버리</a></li>

	<li><a href="/mb/index_city.asp?inframe=&trip_id=&l=&r_id=&region=111031044&tripwith=">요크</a></li>

	<li><a href="/mb/index_city.asp?inframe=&trip_id=&l=&r_id=&region=111031014&tripwith=">버밍엄</a></li>

	<li><a href="/mb/index_city.asp?inframe=&trip_id=&l=&r_id=&region=111031029&tripwith=">리즈</a></li>

	<li><a href="/mb/index_city.asp?inframe=&trip_id=&l=&r_id=&region=111031051&tripwith=">포츠머스</a></li>

	<li><a href="/mb/index_city.asp?inframe=&trip_id=&l=&r_id=&region=111031031&tripwith=">뉴캐슬</a></li>

	<li><a href="/mb/index_city.asp?inframe=&trip_id=&l=&r_id=&region=111031184&tripwith=">스톤헨지</a></li>

	<li><a href="/mb/index_city.asp?inframe=&trip_id=&l=&r_id=&region=111031081&tripwith=">스윈든</a></li>

	<li><a href="/mb/index_city.asp?inframe=&trip_id=&l=&r_id=&region=111031046&tripwith=">윈더미어</a></li>

	<li><a href="/mb/index_city.asp?inframe=&trip_id=&l=&r_id=&region=111031019&tripwith=">코번트리</a></li>

                            </ul>
                        </div>

                    </b>

                    <b class="current-city" id="current-menu">숙소
                        <div class="popover-wrap" id="popover-wrap-menu">
                            <ul>
                                <li><a href="#" class="current">숙소</a></li>
                                <li><a href="/market/index_city.asp?region=111031001" class="">투어/일정</a></li>

                            </ul>
                        </div>
                    </b>

                </div>





                <div class="stu_setting_wrap">
                    <div class="stu_calendar">


                        <input type="text" name="datefilter" class="selectDate" value="11월 23일~11월24일" readonly onfocus="this.blur();" placeholder="체크인 ~ 체크아웃" />
                    </div>
                    <div class="stu_person_wrap">
                        <div class="selectBtn">
			
<!--
                            <img src="https://d3b39vpyptsv01.cloudfront.net/0/0/1550200849544oFb0AnnOiL.png">
-->
                            <p id="AA_txt" style="color:#000;">객실 및 인원</p>
                        </div>
                        <div class="selectBox">
                            <div class="stu_inner_wrap">
                                <div class="inner_head">
                                    <a class="ico_close"><i></i></a>
                                    <span>객실 및 인원</span>
                                </div>
                                <div class="inner_body">
                                    <ul class="panel">
                                        <li class="opt_wrap type-room">
                                            <div class="opt_title">
                                                <b>객실</b>
                                            </div>
                                            <div class="count_range">
                                                <a class="decrease">
                                                    <input value="-" count_range="m" type="button">
                                                </a>
                                                <input class="count" value="1" readonly name>
                                                <a class="increase">
                                                    <input value="+" count_range="p" type="button">
                                                </a>
                                            </div>
                                        </li>
                                        <li class="opt_wrap type-adult">
                                            <div class="opt_title">
                                                <b>성인</b>
                                            </div>
                                            <div class="count_range">
                                                <a class="decrease">
                                                    <input value="-" count_range="m" type="button">
                                                </a>
                                                <input class="count" value="2" readonly name>
                                                <a class="increase">
                                                    <input value="+" count_range="p" type="button">
                                                </a>
                                            </div>
                                        </li>
                                        <li class="opt_wrap type-children">
                                            <div class="opt_title">
                                                <b>어린이</b>
                                                <p>만 0세 ~ 17세</p>
                                            </div>
                                            <div class="count_range">
                                                <a class="decrease">
                                                    <input value="-" count_range="m" type="button">
                                                </a>
                                                <input class="count" value="0" readonly name>
                                                <a class="increase">
                                                    <input value="+" count_range="p" type="button">
                                                </a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="inner_btn">
                                    <a class="btn_apply" href="javascript:updateAA_complete()">선택 완료</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="time_filter">
            <div class="stu_inner_wrap">
                <ul class="filter_body" style="text-align:left">

                    <li class="tab on" style="text-align:center;width:25%"><a href="javascript:chgMenu('ht');">호텔</a></li>
                    <li class="tab " style="text-align:center;width:25%"><a href="javascript:chgMenu('hst');">호스텔</a></li>
                    <li class="tab " style="text-align:center;width:25%"><a href="javascript:chgMenu('apt');">아파트</a></li>

                    <li class="tab " style="text-align:center;width:25%"><a href="javascript:chgMenu('slp');">민박</a></li>

                </ul>
            </div>
        </section>




        <section class="spot_filter">
            <div class="stu_inner_wrap">
                <div class="filter_head d-n">
                    <a class="ico_reset"><p>초기화</p></a>
                    <a class="ico_close"><i></i></a>
                    <span>필터</span>
                </div>
                <div class="filter_body">
                    <div class="panel">

                        <div class="opt_wrap">
                            <div class="swiper-container swiper1">




                                <b class="opt_title">방문예정지</b>
                                <a class="btn_more"><i></i><span class="item_count"></span></a>
                                <ul class="swiper-wrapper hot multi" data-count>
<li class="swiper-slide " onclick="selTerminal('dep')"  id="dep_txt"> IN 터미널</li>
<li class="swiper-slide " onclick="selTerminal('des')"  id="des_txt">OUT 터미널</li>





                                </ul>

                                <!--scrollbar-->
                                <div class="swiper-scrollbar"></div>
                            </div>
                        </div>



                        <div class="opt_wrap d-n">
                            <b class="opt_title">가격대(1박)</b>
                            <ul class="col4">
                                <li class="opt_item all" onclick="selPrice('_')"  id="mm__">최저가순</li>
                            </ul>
                        </div>


                        <div class="opt_wrap d-n">
                            <b class="opt_title">이용자 평점</b>
                        </div>




                        <div class="opt_wrap hotel d-n">
                            <b class="opt_title">호텔 타입</b>
                        </div>
                        <div class="opt_wrap d-n">
                            <b class="opt_title">선호지역</b>
                        </div>

                    </div>
                </div>

                <div class="filter_btn d-n">
                    <a class="btn_apply">선택 완료</a>
                </div>




            </div>
        </section>


        <section class="prd_filter">
            <div class="stu_inner_wrap">




                <div class="btn_prd_filter">

                    <button type="button" class="filter">필터
                        <span class="select_count"></span>
                    </button>
                    <i></i>
                    <button type="button" class="map">지도로 보기</button>

                </div>






                <div class="filter-header">
                    <h3 class="stu_title"></h3>
                    <a class="stu_reset">모두 지우기</a>
                </div>
                <div class="filter-container">
                    <ul>
                        <li class="filter-section stu_clearfix">
                            <h4 class="stu_title">상품 정렬</h4>
                            <ul class="filter-wrap sorting">

                                <li class="filter-list table default on">
                                    <div class="filter-item"  onclick="update_orderby('dist')">이동거리순+예약자 많은순</div>
                                </li>

                            </ul>
                        </li>

                        <li class="filter-section">
                            <h4 class="stu_title">호텔타입</h4>
                        </li>


                        <li class="filter-section">
                            <h4 class="stu_title">평점</h4>
                        </li>

                    </ul>
                </div>
                <div class="filter-footer">
                    <div class="btn_apply">
                        <button type="button">확인</button>
                    </div>
                </div>
            </div>
        </section>


        <section class="stu_prd_list stu_clearfix">
            <div class="stu_inner_wrap">


	<div id="fav_list"></div>


                <div class="filter_header">
                    <div class="titArea">

                        <h3 class="stu_title">호텔</h3>
                        <span class="prd_count"></span>

                    </div>
                </div>

                <ul class="prd_list stu_clearfix paginated" id="tourlist">
		<li><div style="text-align:center;paddin-top:70px;padding-bottom:70px;color:#c0c0c0;font-size:10pt;">	...</div></li>
                </ul>
            </div>
        </section>




    </main>
    <!--//메인영역_End-->
	

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
                            <li style="color:#86868c">상상속 여행을 현실로, 스투비플래너</li>
                        </ul>
                       <ul class="txtWrap">
                            <li style="color:#86868c">contact : stubbyteam@gmail.com</li>
	 </ul>

                </div>
            </div>
        </div>

    </footer>


</div>
<!--//Contents_End-->

<script>
var checkin="2022-11-23";
var checkout="2022-11-24";
var n_room=1;
var n_adult=2;
var n_child=0;

    $(document).ready(function() {



var prdCategory = new Swiper ('.swiper-category', { direction:'horizontal', slidesPerView:'auto', freeMode:true });

        // 도시 이동 메뉴(토글)
        $('#current-city').click(function(event) {
            event.stopPropagation();
            $(this).toggleClass('on');
            $('#popover-wrap-city').toggleClass('on');
        });


        $('#current-in').click(function(event) {
            event.stopPropagation();
            $(this).toggleClass('on');
            $('#popover-wrap-in').toggleClass('on');
        });

        $('#current-out').click(function(event) {
            event.stopPropagation();
            $(this).toggleClass('on');
            $('#popover-wrap-out').toggleClass('on');
        });



        $('#current-menu').click(function(event) {
            event.stopPropagation();
            $(this).toggleClass('on');
            $('#popover-wrap-menu').toggleClass('on');
        });

        $(document).click(function() {
            $('.current-city').removeClass('on');
            $('.popover-wrap').removeClass('on');
        });

        // 상품 카테고리 Toggle
        $('.stu_prd_category li').on('click', function() {
            $('.stu_prd_category li').removeClass('on');
            $(this).addClass('on');
        });





        // 달력 선택 도구
        $('input[name="datefilter"]').daterangepicker({
     autoUpdateInput: false,
            startDate :'2022/11/23',
	endDate :'2022/11/24',
            opens: "center",
            locale: {
            format: 'Y/M/D',
            separator: ' ~ ',
            applyLabel: '선택 완료',
            cancelLabel: '초기화',
            daysOfWeek: ['일','월','화','수','목','금','토'],
            monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']

            },
        });



    $('input[name="datefilter"]').on('apply.daterangepicker', function(ev, picker) {
        $(this).val(picker.startDate.format('M월 D일') + ' ~ ' + picker.endDate.format('M월 D일'));
	
	checkin=picker.startDate.format('Y-MM-DD');
	checkout=picker.endDate.format('Y-MM-DD');
	
updateHTs();
	//if(last_hotel_ids!="")
	//	gethotelliveinfo(last_hotel_ids);

    });
    $('input[name="datefilter"]').on('cancel.daterangepicker', function(ev, picker) {
        $(this).val('');
    });

    // 달력 팝업 On
    $('.stu_calendar input').click(function() {
        $('body').toggleClass('modal-opened');
        $('.daterangepicker').toggleClass('action');
        $('.current-city, .stu_trip-type .selectBox').removeClass('on');
        $('.stu_person_wrap .selectBox').removeClass('action');
    });

    // 달력 팝업 Off
    $('.daterangepicker .closeBtn, .daterangepicker .drp-buttons .btn').click(function() {
        $('body').removeClass('modal-opened');
        $('.daterangepicker').removeClass('action');
    });







        // 여행테마(누구와)
        $('.stu_trip-type .selectBtn').click(function() {
            $(this).next().toggleClass('on');
            $('.daterangepicker, .stu_person_wrap .selectBox').removeClass('action');



        });
        $('.stu_trip-type .selectBox li').click(function() {


            var getText = $(this).children('span').text();
            $('.selectBox li').removeClass('current');
            $(this).addClass('current').closest('.selectBox').removeClass('on').prev().children('p').text(getText).css('color', '#4a4a4a');
	tripwith=$(this).attr("id").replace("T","");

	updateHTs();

        });
        $('.stu_trip-type .selectBox .close').click(function() {
            $(this).parent().removeClass('on');
        });




        // 객실 및 인원 On
        $('.stu_person_wrap .selectBtn').click(function() {
            $('body').toggleClass('modal-opened');
            $(this).next().toggleClass('action');
            $('.daterangepicker').removeClass('action');
            $('.stu_trip-type .selectBox').removeClass('on');
        });
        $('.stu_person_wrap .ico_close, .stu_person_wrap .btn_apply').click(function() {
            $('body').removeClass('modal-opened');
            $(this).closest('.selectBox').removeClass('action');
        });



        // 인원선택
        $('.count_range a').click(function(e) {
            e.preventDefault();
            var type = $(this).children('input').attr('count_range'),
                $count = $(this).parent().find('input.count'),
                count_val = $count.val();
            if(type=='m') {
                if(count_val < 1) {
                    return;
                }
                $count.val(parseInt(count_val)-1);
            } else if(type=='p') {
                $count.val(parseInt(count_val)+1);
            }
        });


	
	$('.type-room .increase').click(function() {
		n_room++;
		updateAACnt();
	});

	$('.type-room .decrease').click(function() {
		if(n_room>1)
			n_room--;
		updateAACnt();
	});

	$('.type-adult .increase').click(function() {
		n_adult++;
		updateAACnt();

	});
	$('.type-adult .decrease').click(function() {
		if(n_adult>1)
			n_adult--;
		updateAACnt();

	});

        // 어린이 추가
        $('.type-children .increase').click(function() {
	n_child++;
	updateAACnt();

            var lastField = $('.stu_person_wrap .panel li:last'),
                intId = (lastField && lastField.length && lastField.data("idx") + 1) || 1,
                fieldWrapper = $("<li class=\"opt_wrap add_children\" id=\"children" + intId + "\"/>");
            fieldWrapper.data("idx", intId);

            var fItem = $("<div class=\"opt_title\"><b>어린이"+intId+" 나이</b></div><div class=\"opt_form\"><select id=\"ageofchild"+intId+"\" title=\"연령대\"><option value=\"0\">만 0세</option><option value=\"1\">만 1세</option><option value=\"2\">만 2세</option><option value=\"3\">만 3세</option><option value=\"4\">만 4세</option><option value=\"5\">만 5세</option><option value=\"6\">만 6세</option><option value=\"7\">만 7세</option><option value=\"8\">만 8세</option><option value=\"9\">만 9세</option><option value=\"10\">만 10세</option><option value=\"11\">만 11세</option><option value=\"12\">만 12세</option><option value=\"13\">만 13세</option><option value=\"14\">만 14세</option><option value=\"15\">만 15세</option><option value=\"16\">만 16세</option><option value=\"17\">만 17세</option></select></div>");
            fieldWrapper.append(fItem);
            $('.stu_person_wrap .panel').append(fieldWrapper);
        });

        // 어린이 제거
        $('.type-children .decrease').click(function() {
	if(n_child>0)
		n_child--;
	updateAACnt();
            $('.stu_person_wrap .panel').children('.add_children:last').remove();
        });



        // 이미지 스와이핑
        var mySwiper = new Swiper ('.swiper1', {
            direction:'horizontal',
            slidesPerView:'auto',
            freeMode:true,
            scrollbar: {
                el: '.swiper-scrollbar',
                hide:true,
            },
        });

        // 상품(필터) 팝업
        $('.btn_prd_filter button.filter, .prd_filter .stu_title, .prd_filter .btn_apply').click(function() {
            $('body').toggleClass('modal-opened');
            $('.prd_filter').toggleClass('action');
        });





        // 지도로 보기
        $('.prd_map .map_btn').click(function() {
            $('body').addClass('modal-opened');
            $('.prd_map .map_container, .prd_map .map_background').addClass('action');

	initialize();resized();
	loadIniSchd();

            $('.prd_map .ico_close').click(function() {
                $('body').removeClass('modal-opened');
                $('.prd_map .map_container, .prd_map .map_background').removeClass('action');
            });
        });





        // 필터 아이템 선택
        $('.spot_filter li.all').addClass('selected');
        $('.spot_filter li').click(function(e) {

            if($(this).parent('ul').hasClass('multi')) {
                $(this).toggleClass('selected');
            } else {
                $(this).toggleClass('selected').parent('ul').children('li').not($(this)).removeClass('selected');
                if(!$(this).parent('ul').children('li').hasClass('selected')) {
                    $(this).parent('ul').find('.all').addClass('selected');
                };
            };
            var sltNum = $(this).closest('.panel').find('.selected:not(.all)').length,
                cntValue = $('.spot_filter .swiper-wrapper'),
                cntArea = $('.spot_filter .item_count'),
                resetBtn = $('.spot_filter .ico_reset p');
            if(sltNum > 0) {
                cntArea.text(sltNum).css('margin-left','3px');
                cntValue.attr('data-count',sltNum);
                resetBtn.css({'font-weight':'bold','color':'#3ad195'});
            } else {
                cntArea.text('').css('margin-left','0');
                cntValue.attr('data-count','');
                resetBtn.css({'font-weight':'normal','color':'#aeaeae'});
            }
        });
        $('.spot_filter .ico_reset').click(function() {
            $(this).children('p').css({'font-weight':'normal','color':'#aeaeae'});
            $('.spot_filter .opt_wrap').find('li').removeClass('selected');
            $('.spot_filter .opt_wrap').find('li.all').addClass('selected');
            $('.spot_filter .item_count').text('').css('margin-left','0');
            $('.spot_filter .swiper-wrapper').attr('data-count','');
        });

        // 필터 On
        $('.spot_filter a.btn_more').click(function() {
            $('body').addClass('modal-opened');
            $('.spot_filter').addClass('action').find('.d-n').toggleClass('d-b d-n');
        });
        $('.spot_filter .ico_close, .spot_filter .btn_apply').click(function() {
            $('body').removeClass('modal-opened');
            $('.spot_filter').removeClass('action').find('.d-b').toggleClass('d-n d-b');
        });

        // 투어시간(필터) 선택
        $('.time_filter .tab').click(function() {
            $('.time_filter .tab').not($(this)).removeClass('on');
            $(this).addClass('on');
        });

        // 달력 스와이핑
        $('.swp_month').each(function() {
            var today = $(this).find('.today'),
                past = today.prevAll('.swp_date'),
                pos_today = today.offset().left - today.width() * 3;
            today.children('p').text('오늘');
            past.addClass('past');
            $('.swp_calendar_wrap').animate({ scrollLeft : pos_today}, 0);
            $('.swp_date').click(function() {
                $('.swp_date').removeClass('on');
                $(this).addClass('on');
            });
        });
    });


    $(window).on('load', function () {


updateAACnt();




        load('#stu_js-load', '1');
        $(".stu_js-btn-wrap .stu_js-btn").on("click", function () {
            load('#stu_js-load', '3', '.stu_js-btn-wrap');
        })



	updateHTs();

    });

function updateAA_complete()
{	
	updateAACnt();
	updateHTs();
}

function updateAACnt()
{
	$("#AA_txt").html("객실x"+n_room+":성인"+n_adult+",아이"+n_child+" ");
}
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


var bucketlist="";


var subcatelist="";


function toggleSubCate(id)
{

	if($("#G"+id).children('.checkmark').hasClass('d-n'))
	{
		if(subcatelist=="")
			subcatelist=id;
		else
			subcatelist+=","+id;

	            $("#G"+id).children('.checkmark').removeClass('d-n');
	            $("#G"+id).siblings('.txt-wrap').children('p').addClass('on');

	}
	else
	{
		subcatelist=","+subcatelist+",";
		subcatelist=subcatelist.replace(","+id+",",",");
		subcatelist=subcatelist.replace(",,",",");
		if(subcatelist.substring(0,1)==",")
			subcatelist=subcatelist.substring(1);
		if(subcatelist.substring(subcatelist.length-1,subcatelist.length)==",")
			subcatelist=subcatelist.substring(0,subcatelist.length-1);

		if(subcatelist==",")
			subcatelist="";

	            $("#G"+id).children('.checkmark').addClass('d-n');
	            $("#G"+id).siblings('.txt-wrap').children('p').removeClass('on');
	}
	updateBuckets();
}

function toggleBucket(id)
{

	if($("#B"+id).hasClass('selected')==false)
	{
		if(bucketlist=="")
			bucketlist=id;
		else
			bucketlist+=","+id;



	}
	else
	{
		bucketlist=","+bucketlist+",";
		bucketlist=bucketlist.replace(","+id+",",",");
		bucketlist=bucketlist.replace(",,",",");
		if(bucketlist.substring(0,1)==",")
			bucketlist=bucketlist.substring(1);
		if(bucketlist.substring(bucketlist.length-1,bucketlist.length)==",")
			bucketlist=bucketlist.substring(0,bucketlist.length-1);

		if(bucketlist==",")
			bucketlist="";

	}
	
	updateHTs();
	
}
function select_thema_code(c)
{
	if(c!="204")
		select_class('');

	thema_code=c;
	
	updateHTs();
	
}
function update_orderby(o)
{
	orderby=o;
	
	updateHTs();
	
}


function updateTripwith(cur_page)
{
		if(!cur_page)
			cur_page="1";
		Xthema_code="t";
	             $.ajax({
	             	url: '/api/guidetour/Get_Tripwith.asp?tripwith=&cate='+Xthema_code+'&subcate='+subcatelist+'&region=111031001&bucketlist='+bucketlist+"&orderby="+orderby+"&page="+cur_page,
	               	dataType: 'json',
	               	success: function(data){
					if(data!="")
					{
						thtml='';


$.each(data.list, function( i, item ) {




thtml+='<li class="prd_item">';

	thtml+='<a href="/crowd/detail.asp?serial='+item.serial+'&bucket_ids='+bucketlist+'&l=" class="prd outline lock-off">';

	thtml+='<figure class="thumb">';
	thtml+='<img class="fh lazyload"  data-src="'+item.imgurl+'" />';
	thtml+='</figure>';

	thtml+='<div class="prd_info">';



	thtml+='<div class="name">';
	thtml+='<span>'+item.title+'</span>';
	thtml+='</div>';
	thtml+='<div class="score">';
	thtml+='<span>'+item.reserver_cnt+'</span>';
	thtml+='</div>';
	thtml+='</div>';
thtml+='</a>';
thtml+='</li>';

});




	$("#tourlist").html(thtml);
	

//$('.prd_list').children('li.prd_item').length  

        $('.prd_count').text(data.totalcnt);

      $('.prd_list.paginated').each(function() {
            var currentPage = 0;
            var numPerPage = 12;
            var $prd_list = $(this);
            $prd_list.bind('repaginate', function() {
                $prd_list.find('li.prd_item').hide()
                .slice(currentPage * numPerPage,
                    (currentPage + 1) * numPerPage)
                .show();
            });


            var numRows = data.totalcnt;
            var numPages = Math.ceil(numRows / numPerPage);

$('.pager').remove();

            var $pager = $('<div class="pager"></div>');
            for (var page = 0; page < numPages; page++) {
	if(eval(page+1)==data.curpage)
                $('<a href="javascript:updateBuckets('+eval(page+1)+')" class="page_number active"></a>').text(page + 1).appendTo($pager);
	else
                $('<a href="javascript:updateBuckets('+eval(page+1)+')" class="page_number"></a>').text(page + 1).appendTo($pager);
            }
            $pager.insertAfter($prd_list);
            if(parseInt($('a.page_number:last').text()) == 1) {
                $('.pager').hide();
            } else {
                $('.pager').show();
            };
        });




					}
			}
		});

}





var thema_code=204;


var orderby="dist";

var curSLPList;

function updateSLPs(cur_page)
{
		if(!cur_page)
			cur_page="1";


	             $.ajax({
	             	url: '/api/guidetour/get_mblist.asp?tripwith='+tripwith+'&dep='+dep+'&des='+des+'&region=111031001&bucketlist='+bucketlist+"&roomtype="+thema_code+"&orderby="+orderby+"&page="+cur_page,
	               	dataType: 'json',
	               	success: function(data){
					if(data!="")
					{
						thtml='';


						$.each(data.recom_list, function( i, item ) {
							if((data.recom_list.length==1)||(data.recom_list.length==2&&i==1)||(data.recom_list.length==3&&i==0))
							{





thtml+='<li class="prd_item">';

	if(item.is_like)
	 	thtml+='<div class="like active" id="'+item.serial+'"></div>';
	else
	 	thtml+='<div class="like" id="'+item.serial+'"></div>';


	thtml+='<a href="minbak_detail.asp?trip_id=&serial='+item.serial+'&bucket_ids='+bucketlist+'" class="prd outline lock-off">';

	thtml+='<figure class="thumb">';
	thtml+='<img class="fh lazyload" data-src="'+item.imgurl+'" />';
	thtml+='</figure>';

	thtml+='<div class="prd_info">';

if(item.tourtype!=9)
{
	var tcomname=item.com_name;
	if(tcomname.length>20)
		tcomname=tcomname.substring(0,20)+"..";
	thtml+='<div class="cpn">';

	if(item.roomtype!='')
		thtml+='<span class="duration">'+item.roomtype+'</span>';

	thtml+='</div>';
}

	thtml+='<div class="name">';
	thtml+='<span>🎯 '+tcomname+' '+item.title+'</span>';
	thtml+='</div>';
	thtml+='<div class="tag" style="display: block;">';
	thtml+='<span style="color:#c0c0c0"> <font style="font-weight:700;color:#3ad195">  '+tripwith_txt[tripwith]+' 선호 숙소</font></span>';
	thtml+='</div>';
	thtml+='<div class="score">';
	thtml+='<span>'+item.dist+'km</span>';
	thtml+='</div>';
	thtml+='<div class="price">';
	thtml+='<span>'+item.price_currency+'</span> ';
		
		thtml+=item.price;
		thtml+='<span>/ 1박</span>';
	thtml+='</div>';

	thtml+='</div>';
thtml+='</a>';
thtml+='</li>';

							}

						});



$.each(data.list, function( i, item ) {



thtml+='<li class="prd_item">';

	if(item.is_like)
	 	thtml+='<div class="like active" id="'+item.serial+'"></div>';
	else
	 	thtml+='<div class="like" id="'+item.serial+'"></div>';


	thtml+='<a href="minbak_detail.asp?trip_id=&serial='+item.serial+'&bucket_ids='+bucketlist+'" class="prd outline lock-off">';

	thtml+='<figure class="thumb">';
	thtml+='<img class="fh lazyload" data-src="'+item.imgurl+'" />';
	thtml+='</figure>';

	thtml+='<div class="prd_info">';

if(item.tourtype!=9)
{
	var tcomname=item.com_name;
	if(tcomname.length>20)
		tcomname=tcomname.substring(0,20)+"..";
	thtml+='<div class="cpn">';

	if(item.roomtype!='')
		thtml+='<span class="duration">'+item.roomtype+'</span>';

	thtml+='</div>';
}

	thtml+='<div class="name">';
	thtml+='<span>'+tcomname+' '+item.title+'</span>';
	thtml+='</div>';
	thtml+='<div class="tag">';
	thtml+='<span>'+item.tag+'</span>';
	thtml+='</div>';
	thtml+='<div class="score">';
	thtml+='<span>'+item.dist+'km</span>';
	thtml+='</div>';
	thtml+='<div class="price">';
	thtml+='<span>'+item.price_currency+'</span> ';
		
		thtml+=item.price;
		thtml+='<span>/ 1박</span>';
	thtml+='</div>';

	thtml+='</div>';
thtml+='</a>';
thtml+='</li>';

});




	$("#tourlist").html(thtml);

	curSLPList=data.list;






        // 리스트 찜하기(토글)
        $('.prd_item .like').on('click', function() {
	tid=$(this).attr("id");

   $(this).toggleClass('active');

	             $.ajax({
	             	url: '/api/guidetour/toggle_slp_like.asp?trip_id=&slp_id='+tid+'&region=111031001',
	               	dataType: 'json',
	               	success: function(data){
					if(data!="")
					{
						thtml='';
					}
			}
		});


        });


        $('.prd_count').text(data.totalcnt);

      $('.prd_list.paginated').each(function() {
            var currentPage = 0;
            var numPerPage = 12;
            var $prd_list = $(this);
            $prd_list.bind('repaginate', function() {
                $prd_list.find('li.prd_item').hide()
                .slice(currentPage * numPerPage,
                    (currentPage + 1) * numPerPage)
                .show();
            });


            var numRows = data.totalcnt;
            var numPages = Math.ceil(numRows / numPerPage);

$('.pager').remove();

            var $pager = $('<div class="pager"></div>');
            for (var page = 0; page < numPages; page++) {
	if(eval(page+1)==data.curpage)
                $('<a href="javascript:updateSLPs('+eval(page+1)+')" class="page_number active"></a>').text(page + 1).appendTo($pager);
	else
                $('<a href="javascript:updateSLPs('+eval(page+1)+')" class="page_number"></a>').text(page + 1).appendTo($pager);
            }
            $pager.insertAfter($prd_list);
            if(parseInt($('a.page_number:last').text()) == 1) {
                $('.pager').hide();
            } else {
                $('.pager').show();
            };
        });




					}
				

			}
		});

}
function setRecommend(tid,tprice,tprice_currency,tslpname,tlat,tlng,tlinkurl,timgurl)
{

			tmemo=$("#tmemo").val();

		             $.ajax({
		             	url: '/api/guidetour/toggle_slp_like2.asp?slp_id='+tid+'&region=111031001',
				 type: "POST",
				 dataType: 'json',
				 data: {
					memo:tmemo,
					trip_id:'',
					r_id:'',
					price:tprice,
					price_currency:tprice_currency,
					slpname:tslpname,
					slptype:'ht',
					lat:tlat,
					lng:tlng,
					linkurl:tlinkurl,
					imgurl:timgurl

				  },			
		               	dataType: 'json',
		               	success: function(data){
						if(data!="")
						{
							
						}
				}
			});

closeMyModal();

}
var HT_review_score="";
var HT_class="";
var last_hotel_ids="";
var dep="";
var des="";
function select_review_score(c)
{
	HT_review_score=c;
	updateHTs();
}
function select_class(c)
{
	HT_class=c;
	//updateHTs();
}



var roominfo='';
var latlnglist='';
function updateHTs(cur_page)
{

		nights=dateDiff(checkin, checkout);

		if(!cur_page)
			cur_page="1";


//room1="A,A";

if(thema_code==0)
{
	thema_codeX="";
}
else if(thema_code==204)
{
	thema_codeX="hotel,aparthotel,resort,condo,chalet";
}
else if(thema_code=='201,219')
{
	thema_codeX="apartment,aparthotel,holiday-home,boat,condo,villa,lodge,cottage,bed-and-breakfast";
}
else if(thema_code==203)
{
	thema_codeX="hostel";
	//room1="A";

}


thex=n_adult-n_room;


if(n_room==1)
{
	tttxt="";
	for(i=1;i<=n_adult;i++)
	{
		if(tttxt=="")
			tttxt="A";
		else
			tttxt=tttxt+",A";
	}

	for(i=1;i<=n_child;i++)
	{
		ageofchild=$("#ageofchild"+i).val();
		if(tttxt=="")
			tttxt=ageofchild;
		else
			tttxt=tttxt+","+ageofchild;
	}

	roominfo="room1="+tttxt;
}
else
{
	for(i=1;i<=n_room;i++)
	{
		if(thex>0)
		{
			thex++;
			roominfo='room'+i+'=A';
		}
	}
}


		tHT_class=HT_class;

	             $.ajax({	
	             	url: '/api/booking/get_searched_hotels.asp?latlnglist=&trip_id=&tripwith='+tripwith+'&'+roominfo+'&check_in='+checkin+'&check_out='+checkout+'&dep='+dep+'&des='+des+'&cityserial=111031001&max_price='+max_price+'&min_price='+min_price+'&bucketlist='+bucketlist+'&property_type='+thema_codeX+'&stars='+tHT_class+'&min_review_score='+HT_review_score+'&orderby='+orderby+'&page='+cur_page+'&district_ids='+districts,
	               	dataType: 'json',
	               	success: function(data){
					if(data!="")
					{


						thtml="";
						$.each(data.recom_list, function( i, item ) {
							if((data.recom_list.length==1)||(data.recom_list.length==2&&i==1)||(data.recom_list.length==3&&i==0))
							{


							stitle=item.title;
							if(stitle.length>19)
								stitle=stitle.substring(0,19)+"..";

							xlink=item.linkurl+'\u0026checkin='+checkin+'\u0026checkout='+checkout+'\u0026group_adults='+n_adult+'\u0026group_children='+n_child+'\u0026no_rooms='+n_room+'\u0026lang=ko';

							thtml+='<li class="prd_item">';

							if(item.is_like)
							 	thtml+='<div class="like active" id="'+item.hotel_id+'" style="cursor:pointer"></div>';
							else
							 	thtml+='<div class="like" id="'+item.hotel_id+'" style="cursor:pointer" ></div>';


						
							thtml+='<a id="hotel_link_'+item.hotel_id+'" href="'+item.linkurl+'&amp;a=b&amp;checkin='+checkin+'&amp;checkout='+checkout+'\u0026group_adults='+n_adult+'\u0026group_children='+n_child+'\u0026no_rooms='+n_room+'\u0026lang=ko" target="_blank" class="prd outline lock-off">';
						
							thtml+='<figure class="thumb">';
							thtml+='<img class="fh lazyload" data-src="'+item.imgurl+'" />';
							thtml+='</figure>';

							thtml+='<div class="prd_info">';
							thtml+='<div class="name">';
							thtml+='<span> 🎯 '+stitle+'</span>';
							thtml+='</div>';
							thtml+='<div class="tag" id="hotel_liveinfo_'+item.hotel_id+'" style="display:block">';
							thtml+='<span style="color:#c0c0c0"> <font style="font-weight:700;color:#3ad195">  '+tripwith_txt[tripwith]+' 선호 숙소</font></span>';
							thtml+='</div>';
							thtml+='<div class="score">';
//							thtml+='<span style="font-weight:700">'+item.review_score+'</span> <font style="color:#c0c0c0;font-size:9pt">'+item.number_of_reviews+'개 리뷰</font>';
							thtml+=' <font style="color:#c0c0c0;font-size:9pt">'+item.favorite_cnt+'명 플래너 선택</font>';

							thtml+='</div>';
							thtml+='<div class="price">';
							thtml+='<span>예상이동거리</span>'+item.dist+'km';
							thtml+='</div>';
							thtml+='</div>';
							thtml+='</a>';
							thtml+='</li>';
	

							}

						});



						var cur_hotel_ids='';

						$.each(data.list, function( i, item ) {
							if(cur_hotel_ids=='')
								cur_hotel_ids=item.hotel_id;
							else
								cur_hotel_ids+=','+item.hotel_id;


							stitle=item.title;
							if(stitle.length>19)
								stitle=stitle.substring(0,19)+"..";

xlink=item.linkurl+'\u0026checkin='+checkin+'\u0026checkout='+checkout+'\u0026group_adults='+n_adult+'\u0026group_children='+n_child+'\u0026no_rooms='+n_room+'\u0026lang=ko';


							thtml+='<li class="prd_item">';
	if(item.is_like)
	 	thtml+='<div class="like active" id="'+item.hotel_id+'" style="cursor:pointer"></div>';
	else
	 	thtml+='<div class="like" id="'+item.hotel_id+'" style="cursor:pointer" ></div>';


						
							thtml+='<a id="hotel_link_'+item.hotel_id+'" href="'+item.linkurl+'\u0026checkin='+checkin+'\u0026checkout='+checkout+'\u0026group_adults='+n_adult+'\u0026group_children='+n_child+'\u0026no_rooms='+n_room+'\u0026lang=ko" target="_blank" class="prd outline lock-off">';
						
							thtml+='<figure class="thumb">';
							thtml+='<img class="fh lazyload" data-src="'+item.imgurl+'" />';
							thtml+='</figure>';

							thtml+='<div class="prd_info">';
							thtml+='<div class="name">';
							thtml+='<span>'+stitle+'</span>';
							thtml+='</div>';
							thtml+='<div class="tag" id="hotel_liveinfo_'+item.hotel_id+'" style="display:block">';
							thtml+='<span style="color:#c0c0c0"> <font style="font-weight:700;color:#3ad195">  '+formatMoney(item.price)+'원</font> / '+nights+'박</span>';
							thtml+='</div>';
							thtml+='<div class="score">';
//							thtml+='<span style="font-weight:700">'+item.review_score+'</span> <font style="color:#c0c0c0;font-size:9pt">'+item.number_of_reviews+'개 리뷰</font>';
if(item.favorite_cnt>0)
							thtml+=' <font style="color:#c0c0c0;font-size:9pt">'+item.favorite_cnt+'명 플래너 선택</font>';							thtml+='</div>';
							thtml+='<div class="price">';
							thtml+='<span>예상이동거리</span>'+item.dist+'km';
							thtml+='</div>';
							thtml+='</div>';
							thtml+='</a>';
							thtml+='</li>';

						});


						$("#tourlist").html(thtml);
						curSLPList=data.list;



					        $('.prd_count').text(formatMoney(data.totalcnt));
					      $('.prd_list.paginated').each(function() {
					            var currentPage = 0;
					            var numPerPage = 12;
					            var $prd_list = $(this);


					            var numRows = data.totalcnt;
					            var numPages = Math.ceil(numRows / numPerPage);

					$('.pager').remove();

				            var $pager = $('<div class="pager"></div>');

					cPage=data.curpage;
	
					sPage=5*parseInt((cPage-1)/5)+1;
					ePage=sPage+5;
					if(ePage>(numPages+1))
						ePage=numPages+1;

					if(sPage>5)
             					   $('<a href="javascript:updateHTs('+eval(sPage-5)+')" class="page_number"></a>').text("<").appendTo($pager);


				            for (var page = sPage; page < ePage; page++) {
						if(eval(page)==data.curpage)
					                $('<a href="javascript:updateHTs('+eval(page)+')" class="page_number active"></a>').text(page).appendTo($pager);
						else
             					   $('<a href="javascript:updateHTs('+eval(page)+')" class="page_number"></a>').text(page).appendTo($pager);
				            }
					if(numPages>ePage)
             					   $('<a href="javascript:updateHTs('+eval(ePage)+')" class="page_number"></a>').text(">").appendTo($pager);
	
            					$pager.insertAfter($prd_list);
            					if(parseInt($('a.page_number:last').text()) == 1) {
            					    $('.pager').hide();
            					} else {
            					    $('.pager').show();
            					};




        // 리스트 찜하기(토글)
        $('.prd_item .like').on('click', function() {
	tid=$(this).attr("id");

            $(this).toggleClass('active');





	             $.ajax({
	             	url: '/api/guidetour/toggle_slp_like.asp?trip_id=&slp_id='+tid+'&region=111031001',
	               	dataType: 'json',
	               	success: function(data){
					if(data!="")
					{
						thtml='';
					}
			}
		});



        });


				
					last_hotel_ids=cur_hotel_ids;
       			});

		}
				

			}
		});

}


function updateHTs2(cur_page)
{
		if(!cur_page)
			cur_page="1";


	             $.ajax({
	             	url: '/api/guidetour/get_hotellist.asp?dep='+dep+'&des='+des+'&region=111031001&bucketlist='+bucketlist+'&roomtype='+thema_code+'&class='+HT_class+'&review_score='+HT_review_score+'&orderby='+orderby+'&room1='+room1+'&page='+cur_page,
	               	dataType: 'json',
	               	success: function(data){
					if(data!="")
					{
						thtml='';

						var cur_hotel_ids='';
						$.each(data.list, function( i, item ) {
							if(cur_hotel_ids=='')
								cur_hotel_ids=item.hotel_id;
							else
								cur_hotel_ids+=','+item.hotel_id;


							stitle=item.title;
							if(stitle.length>19)
								stitle=stitle.substring(0,19)+"..";

							thtml+='<li class="prd_item">';
						
							thtml+='<div class="like"></div>';
						
							thtml+='<a id="hotel_link_'+item.hotel_id+'" href="'+item.deeplink+'" target="_blank" class="prd outline lock-off">';
						
							thtml+='<figure class="thumb">';
							thtml+='<img class="fh lazyload" data-src="'+item.imgurl+'" />';
							thtml+='</figure>';

							thtml+='<div class="prd_info">';
							thtml+='<div class="name">';
							thtml+='<span>'+stitle+'</span>';
							thtml+='</div>';
							thtml+='<div class="tag" id="hotel_liveinfo_'+item.hotel_id+'" style="display:block">';
							thtml+='<span style="color:#c0c0c0">선택기간에 빈방없음</span>';
							thtml+='</div>';
							thtml+='<div class="score">';
							thtml+='<span style="font-weight:700">'+item.review_score+'</span> <font style="color:#c0c0c0;font-size:9pt">'+item.number_of_reviews+'개 리뷰</font>';
							thtml+='</div>';
							thtml+='<div class="price">';
							thtml+='<span>예상이동거리</span>'+item.dist+'km';
							thtml+='</div>';
							thtml+='</div>';
							thtml+='</a>';
							thtml+='</li>';

						});


						$("#tourlist").html(thtml);
						curSLPList=data.list;

//$('.prd_list').children('li.prd_item').length  

					        $('.prd_count').text(formatMoney(data.totalcnt));
					      $('.prd_list.paginated').each(function() {
					            var currentPage = 0;
					            var numPerPage = 12;
					            var $prd_list = $(this);


//					            $prd_list.bind('repaginate', function() {
//					                $prd_list.find('li.prd_item').hide()
//					                .slice(currentPage * numPerPage,
//					                    (currentPage + 1) * numPerPage)
//					                .show();
//					            });


					            var numRows = data.totalcnt;
					            var numPages = Math.ceil(numRows / numPerPage);

					$('.pager').remove();

				            var $pager = $('<div class="pager"></div>');

					cPage=data.curpage;
	
					sPage=5*parseInt((cPage-1)/5)+1;
					ePage=sPage+5;

					if(sPage>5)
             					   $('<a href="javascript:updateHTs('+eval(sPage-5)+')" class="page_number"></a>').text("<").appendTo($pager);


				            for (var page = sPage; page < ePage; page++) {
						if(eval(page)==data.curpage)
					                $('<a href="javascript:updateHTs('+eval(page)+')" class="page_number active"></a>').text(page).appendTo($pager);
						else
             					   $('<a href="javascript:updateHTs('+eval(page)+')" class="page_number"></a>').text(page).appendTo($pager);
				            }
					if(numPages>ePage)
             					   $('<a href="javascript:updateHTs('+eval(ePage)+')" class="page_number"></a>').text(">").appendTo($pager);
	
            					$pager.insertAfter($prd_list);
            					if(parseInt($('a.page_number:last').text()) == 1) {
            					    $('.pager').hide();
            					} else {
            					    $('.pager').show();
            					};

					gethotelliveinfo(cur_hotel_ids);
					last_hotel_ids=cur_hotel_ids;
       			});

		}
				

			}
		});

}

function formatMoney(n, c, d, t) {
  var c = isNaN(c = Math.abs(c)) ? 0 : c,
    d = d == undefined ? "." : d,
    t = t == undefined ? "," : t,
    s = n < 0 ? "-" : "",
    i = String(parseInt(n = Math.abs(Number(n) || 0).toFixed(c))),
    j = (j = i.length) > 3 ? j % 3 : 0;

  return s + (j ? i.substr(0, j) + t : "") + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : "");
};
function dateDiff(_date1, _date2) {
    var diffDate_1 = _date1 instanceof Date ? _date1 : new Date(_date1);
    var diffDate_2 = _date2 instanceof Date ? _date2 : new Date(_date2);
 
    var diff = Math.abs(diffDate_2.getTime() - diffDate_1.getTime());
    diff = Math.ceil(diff / (1000 * 3600 * 24));
 
    return diff;
}



function gethotelliveinfo(cur_hotel_ids)
{



	             $.ajax({
	             	url: '//www.stubbyplanner.com/api/booking/get_available_blocks.asp?check_in='+checkin+'&check_out='+checkout+'&hotel_ids='+cur_hotel_ids,
	               	dataType: 'json',
	               	success: function(data){
					if(data!="")
					{
						

						var cur_hotel_ids='';
						$.each(data.result, function( i, item ) {
							thtml='';

							xlink=item.hotel_url;
							xlink=xlink.replace("www.","sp.");

							xhotel_id=item.hotel_id;


							roomname=item.block[0].name;

							if(roomname.length>20)
								roomname=roomname.substring(0,19)+"..";

							thtml+='<div style="padding-top:2px;height:24px;overflow:hidden"><font style="font-size:13pt;font-weight:700;color:#3ad195">'+formatMoney(item.block[0].min_price.other_currency.price.toFixed(0))+'원</font> <font style="color:#c0c0c0;font-size:10pt;font-weight:600">'+nights+'박</font> <div style="float:right;display:inline-block;padding-top:4px;">'+roomname+'</div><div style="clear:both"></div></div>';
							
							$("#hotel_link_"+xhotel_id).attr("href",xlink);
							$("#hotel_liveinfo_"+xhotel_id).html(thtml);
						});
					}
			}
		});
}



function updateTours(cur_page)
{
		if(!cur_page)
			cur_page="1";


	             $.ajax({
	             	url: '/api/guidetour/get_tours.asp?region=111031001&bucketlist='+bucketlist+"&thema_code="+thema_code+"&orderby="+orderby+"&page="+cur_page,
	               	dataType: 'json',
	               	success: function(data){
					if(data!="")
					{
						thtml='';


$.each(data.list, function( i, item ) {


 	thtml+='<li class="prd_item">';


if(item.useoutlink==1)
	thtml+='<a href="'+item.linkurl+'" target="_blank" class="prd outline lock-off">';
else
	thtml+='<a href="/guide/detail.asp?needlogin=&serial='+item.serial+'" class="prd outline lock-off">';


	thtml+='<figure class="thumb">';
	thtml+='<img class="fh lazyload" src="'+item.imgurl+'"  onerror="this.src=\''+item.imgurl.replace("_l.",".")+'\'"/>';
//	thtml+='<div class="band bg_red">쿠폰</div>';

if(item.useoutlink==0)
	thtml+='<div class="band2 bg_orange"><i></i>간편예약</div>';
else
	thtml+='<div class="band2 bg_gray"><p></p>제휴예약</div>';

	tcomname=item.com_name;
	if(tcomname.length>17)
		tcomname=tcomname.substring(0,17)+'..';

	thtml+='</figure>';

	thtml+='<div class="prd_info">';
	thtml+='<div class="cpn">';
//	thtml+='<i><img src="images/sample/IDG.jpg"/></i>';
             thtml+='<span>'+tcomname+'</span>';
             thtml+='</div>';
             thtml+='<div class="name">'

	thtml+='<span>'+item.title+'</span>';

           
             thtml+='</div>';
             thtml+='<div class="tag">';
             thtml+='<span>'+item.sale_tag+'</span>';
             thtml+='</div>';
             thtml+='<div class="score">';

	if(item.useoutlink==1)
	{
			thtml+='<span>'+item.review_score+'</span><span  class="buy">&nbsp;&nbsp;'+item.review_cnt+'개 리뷰</span></div>';
	}
	else
	{
		if(item.review_cnt>0)
			thtml+='<span>'+item.review_score+'</span><span  class="buy">&nbsp;&nbsp;'+item.reserver_cnt+'명 예약</span></div>';
		else
			thtml+='<span style="color:#8f8f8f;font-size:9pt">&nbsp;&nbsp;리뷰 이벤트</span></div>';
	}
	if(!item.price_sale)
		item.price_sale="";
	if(item.price_sale_currency)
	{
		if(item.price_sale_currency=="KRW")
		{
		             thtml+='<div class="price"><span>'+item.price_sale_currency+'</span> '+item.price_sale;
		}
		else
		{
			tprice=CURRENCY[item.price_sale_currency]*item.price_sale;
			tprice=tprice*0.99483;
			tprice=tprice.toFixed(0).replace(/\d(?=(\d{3})+\.)/g, '$&,');
			thtml+='<div class="price"><span>KRW</span> '+tprice;
		}
	}
	else
	{
	             thtml+='<div class="price">'+item.price_sale;
	}

//             thtml+='<span>/ 1인</span>';
             thtml+='</div>';
             thtml+='</div>';
             thtml+='</a>';
             thtml+='</li>';

});




$("#tourlist").html(thtml);



//$('.prd_list').children('li.prd_item').length  

        $('.prd_count').text(data.totalcnt);

      $('.prd_list.paginated').each(function() {
            var currentPage = 0;
            var numPerPage = 12;
            var $prd_list = $(this);
            $prd_list.bind('repaginate', function() {
                $prd_list.find('li.prd_item').hide()
                .slice(currentPage * numPerPage,
                    (currentPage + 1) * numPerPage)
                .show();
            });


            var numRows = data.totalcnt;
            var numPages = Math.ceil(numRows / numPerPage);

	$('.pager').remove();

            var $pager = $('<div class="pager"></div>');
            for (var page = 0; page < numPages; page++) {
	if(eval(page+1)==data.curpage)
                $('<a href="javascript:updateTours('+eval(page+1)+')" class="page_number active"></a>').text(page + 1).appendTo($pager);
	else
                $('<a href="javascript:updateTours('+eval(page+1)+')" class="page_number"></a>').text(page + 1).appendTo($pager);
            }
            $pager.insertAfter($prd_list);
            if(parseInt($('a.page_number:last').text()) == 1) {
                $('.pager').hide();
            } else {
                $('.pager').show();
            };
        });

					}
			}
		});

}

function addMarker(t,lat,lng,img,se,sub_t)
{

	var title = t;
	var posn = new google.maps.LatLng(lat,lng);
	markerBounds.extend(posn);
	var imgurl = 'https://chart.apis.google.com/chart?chst=d_map_pin_icon&chld=accomm%7Cffffff';

	var zidx=80;

	var icoimg = {
		url: img,
		scaledSize: new google.maps.Size(36, 36),
		anchor: new google.maps.Point(4, 4)
	};

	var marker = new google.maps.Marker({
		icon:icoimg,
		shape:{coords:[18,18,18],type:'circle'},
		position: posn,
		map: map,
		title: t,
		zindex:zidx,
		optimized: false
	});

	google.maps.event.addListener(marker, 'click', function() {
		if(prv_infowindow)
			prv_infowindow.close();

		infowindow = new google.maps.InfoWindow();


		thtml='<div style="padding-top:10px;padding-bottom:5px;padding-left:10px;padding-right:10px;"><a href="'+se+'" target="_blank"><b>'+sub_t+'</b></a></div>';


		infowindow.setContent(thtml);
		infowindow.open(map,marker);

		prv_infowindow=infowindow;
	  });
	markers.push(marker);
}
function clearMarkers() {
	for (var i = 0; i < markers.length; i++) {
		markers[i].setMap(null);
	}
	markers=[];
	markerBounds= new google.maps.LatLngBounds();
}

var markers=[];
var prv_infowindow;
var markerBounds= new google.maps.LatLngBounds();

var curSLPList;
var curGuidebookList;
function loadIniSchd()
{
	
	clearMarkers();
	

	
	if(curSLPList)
	{

		$.each(curSLPList, function( i, item ) {
			if(item.lat)
			{
				xtitle=item.title;
				addMarker(xtitle,item.lat,item.lng, item.imgurl.replace("_l.","_m."),item.linkurl,item.title);
			}
		});
		map.fitBounds(markerBounds);
	}
	

	
}


var room1="A,A";
function selRoom1(rr)
{

	$(".rr").css("background","#f5f5f5");
	$(".rr").css("color","#8f8f8f");


	$("#rr_"+rr).css("background","#3ad195");
	$("#rr_"+rr).css("color","#fff");

	room1=rr.replace(/\_/g,',');
	
	updateHTs();
	
}

var max_price="";
var min_price="";


function selPrice(mm)
{



	min_maxArr=mm.split("_");
	min_price=min_maxArr[0];
	max_price=min_maxArr[1];

	
	updateHTs();
	
}
var districts="";
function selDistrict(id)
{
	x=','+districts+',';
	if(x.indexOf(','+id+',')>-1)
	{

		x=x.replace(','+id+',',',');

		x=x.substring(1);
		districts=x.substring(0,x.length-1);


		$("#dd_"+id).css("background","#f5f5f5");
		$("#dd_"+id).css("color","#8f8f8f");

	}
	else
	{
		if(districts=="")
			districts=id;
		else
			districts=districts+','+id;

		$("#dd_"+id).css("background","#3ad195");
		$("#dd_"+id).css("color","#fff");
	}

	
	updateHTs();
	
}
function setTerminal(id,t,depdes)
{
	if(depdes=="dep")
		dep=id;
	else
		des=id;
		
	$("#"+depdes+"_txt").html(t);
	if($("#"+depdes+"_txt").hasClass("selected")==false)
		$("#"+depdes+"_txt").addClass("selected");
	closeMyModal();
	
	updateHTs();
	
}

function selTerminal(depdes)
{

	thtml='';





		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11103100170001")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11103100170001\',\'히드로 공항\',\''+depdes+'\')"><i class="fa fa-plane"></i> 히드로 공항 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11103100170002")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11103100170002\',\'개트윅 공항\',\''+depdes+'\')"><i class="fa fa-plane"></i> 개트윅 공항 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11103100170004")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11103100170004\',\'루튼 공항\',\''+depdes+'\')"><i class="fa fa-plane"></i> 루튼 공항 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11103100170008")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11103100170008\',\'사우스엔드 공항\',\''+depdes+'\')"><i class="fa fa-plane"></i> 사우스엔드 공항 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11103100170003")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11103100170003\',\'스텐스테드 공항\',\''+depdes+'\')"><i class="fa fa-plane"></i> 스텐스테드 공항 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11103100170005")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11103100170005\',\'런던 시티 공항 \',\''+depdes+'\')"><i class="fa fa-plane"></i> 런던 시티 공항  </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11103100170009")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11103100170009\',\'세인트 판크라스역\',\''+depdes+'\')"><i class="fa fa-train"></i> 세인트 판크라스역 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11103100170006")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11103100170006\',\'워털루 역\',\''+depdes+'\')"><i class="fa fa-train"></i> 워털루 역 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11103100170036")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11103100170036\',\'유스턴역\',\''+depdes+'\')"><i class="fa fa-train"></i> 유스턴역 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11103100170015")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11103100170015\',\'킹스크로스역\',\''+depdes+'\')"><i class="fa fa-train"></i> 킹스크로스역 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11103100170007")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11103100170007\',\'패딩턴역\',\''+depdes+'\')"><i class="fa fa-train"></i> 패딩턴역 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11103100170033")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11103100170033\',\'빅토리아역\',\''+depdes+'\')"><i class="fa fa-train"></i> 빅토리아역 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11103100170034")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11103100170034\',\'블랙프라이어스역\',\''+depdes+'\')"><i class="fa fa-train"></i> 블랙프라이어스역 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11103100170035")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11103100170035\',\'런던브릿지역\',\''+depdes+'\')"><i class="fa fa-train"></i> 런던브릿지역 </div>';
		

		terminal_serial=$("#desserial").val();
		if(terminal_serial=="11103100170016")
			selector_trs_class="selector_trs_selected";
		else
			selector_trs_class="selector_trs";

		thtml+='<div class="'+selector_trs_class+'" onclick="setTerminal(\'11103100170016\',\'빅토리아 버스 터미널\',\''+depdes+'\')"><i class="fa fa-bus"></i> 빅토리아 버스 터미널 </div>';
		

		thtml+='<div class="selector_trs_selected" onclick="closeMyModal()"><i class="fa fa-times-circle"></i> 닫기 </div>';

	



	$("#mymodal_body").html(thtml);
	$("#mymodal").show();

}

function closeMyModal()
{

	$("#mymodal").hide();
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
function bookinglinkApp(turlapp,turl){

window.location.replace(turlapp); 

setTimeout(function () {
	openWB(turl);
	 }, 2000);


//	if($('#use_booking_app').is(':checked'))
//		window.location=turlapp;
	//else
	

}
</script>



<div id="mymodal" style="z-index:9977;display:none;position:fixed;width:100%;height:100%;top:0px;left:0px">
	<div style="position:relative;width:100%;height:100%;">
		<div style="position:absolute;z-index:9988;width:100%;height:100%;top:0px;left:0px;background:#000;opacity:0.9;width:100%;height:100%;"></div>

		<div style="position:absolute;z-index:9999;width:100%;height:100%;top:0%;left:0px;text-align:center;color:#fff">
			<div style="text-align:right;font-size:16pt;color:#fff;padding-top:10px;padding-bottom:10px;padding-right:5%;"><a href="javascript:closeMyModal()" style="color:#fff;font-size:17pt"><i class="fa fa-times"></i></a></div>
			<div  id="mymodal_body" style="padding:0 5%;"></div>
		</div>
	</div>
</div>



<div id="alert_modal" style="display:none; position:fixed; top:0; left:0; right:0; bottom:0; background:rgba(0,0,0,.15); z-index:99999;">
            <div style="position:relative; top:30%; left:50%; transform:translate(-50%, -50%); width:320px; border-radius:2px; box-shadow:0 0 0 1px rgba(0,0,0,.1), 0 2px 8px 0 rgba(0,0,0,.25); background:#fff;">
                <div style="position:relative; height:42px; padding:0 18px; background:#f5f5f7; font-size:15px; font-weight:normal; line-height:42px; color:#4a4a4a;">안내
                    <a href="javascript:closeAlertModal()" class="" style="position:absolute; top:50%; right:20px; transform:translateY(-50%); width:22px; height:22px; background-image:url(https://d3b39vpyptsv01.cloudfront.net/0/0/1548911555427eWBbProQMk.png); background-size:cover;"></a>
                </div>
                <div id="alert_modal_msg" style="padding:16px 24px; font-size:15px; font-weight:normal; line-height:1.4; word-break:keep-all; letter-spacing:0; text-align:center; color:#4a4a4a;"></div>
                <div style="padding:0 24px 20px; text-align:center;">
                    <a href="javascript:closeAlertModal()" class="btn-u btn-u-xs" style="border-radius:3px; background:#8f8f8f">
                        <font style="font-size:16px; font-weight:normal; line-height:42px; color:#fff">확인</font>
                    </a>
                </div>
            </div>
        </div>

        <section class="stu_md_search">
            <div class="search_background"></div>
            <div class="md-container">
                <div class="md-header">
                    <a href="#stu_md-close" class="ico_close"></a>
                    <div class="md-searchWrap">
                      
                            <fieldset>


                                <input type="search" name="search_keyword" autocorrect="off" autosave="off" class="md-search-input" placeholder="도시로 검색하세요." value>
                            </fieldset>
                     
                    </div>
                </div>

                    <div class="md-content">

                        <div class="md-section">
                            <div class="content-header ico_theme">주요도시</div>
                            <ul class="content-list">
                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011004">
                                        <div class="value">
                                            <b class="name">파리</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                        <div class="count">

                                        </div>
                                    </a>
                                </li>
                               <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011003">
                                        <div class="value">
                                            <b class="name">니스</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                        <div class="count">
                                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031001">
                                        <div class="value">
                                            <b class="name">런던</b>
                                            <i class="category">영국</i>
                                        </div>
                                        <div class="count">
      
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111071001">
                                        <div class="value">
                                            <b class="name">암스테르담</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                        <div class="count">
                       
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111081001">
                                        <div class="value">
                                            <b class="name">브뤼셀</b>
                                            <i class="category">벨기에</i>
                                        </div>
                                        <div class="count">
                             
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061006">
                                        <div class="value">
                                            <b class="name">프랑크푸르트</b>
                                            <i class="category">독일</i>
                                        </div>
                                        <div class="count">
                                       
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061008">
                                        <div class="value">
                                            <b class="name">베를린</b>
                                            <i class="category">독일</i>
                                        </div>
                                        <div class="count">
                                          
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061005">
                                        <div class="value">
                                            <b class="name">뮌헨</b>
                                            <i class="category">독일</i>
                                        </div>
                                        <div class="count">
                                      
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131011001">
                                        <div class="value">
                                            <b class="name">프라하</b>
                                            <i class="category">체코</i>
                                        </div>
                                        <div class="count">
                                       
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041001">
                                        <div class="value">
                                            <b class="name">비엔나</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                        <div class="count">
                                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041002">
                                        <div class="value">
                                            <b class="name">잘츠부르크</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                        <div class="count">
                                       
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131021001">
                                        <div class="value">
                                            <b class="name">부다페스트</b>
                                            <i class="category">헝가리</i>
                                        </div>
                                        <div class="count">
                                
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131061001">
                                        <div class="value">
                                            <b class="name">두브로브니크</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                        <div class="count">
                                     
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131061002">
                                        <div class="value">
                                            <b class="name">스플리트</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                        <div class="count">
                                     
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131061008">
                                        <div class="value">
                                            <b class="name">자그레브</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                        <div class="count">
                                     
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041004">
                                        <div class="value">
                                            <b class="name">로마</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                        <div class="count">
                                     
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041003">
                                        <div class="value">
                                            <b class="name">피렌체</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                        <div class="count">
                         
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041006">
                                        <div class="value">
                                            <b class="name">베니스</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                        <div class="count">
                                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041011">
                                        <div class="value">
                                            <b class="name">나폴리</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                        <div class="count">
                                    
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041133">
                                        <div class="value">
                                            <b class="name">시칠리아</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                        <div class="count">
                                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021002">
                                        <div class="value">
                                            <b class="name">인터라켄</b>
                                            <i class="category">스위스</i>
                                        </div>
                                        <div class="count">
                                    
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011002">
                                        <div class="value">
                                            <b class="name">바르셀로나</b>
                                            <i class="category">스페인</i>
                                        </div>
                                        <div class="count">
                        
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=121011003">
                                        <div class="value">
                                            <b class="name">마드리드</b>
                                            <i class="category">스페인</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=121011001">
                                        <div class="value">
                                            <b class="name">그라나다</b>
                                            <i class="category">스페인</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=121011007">
                                        <div class="value">
                                            <b class="name">세비야</b>
                                            <i class="category">스페인</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=121011005">
                                        <div class="value">
                                            <b class="name">말라가</b>
                                            <i class="category">스페인</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=121021001">
                                        <div class="value">
                                            <b class="name">리스본</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                        <div class="count">
                                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=121021008">
                                        <div class="value">
                                            <b class="name">포르투</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                        <div class="count">
                                
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=121031001">
                                        <div class="value">
                                            <b class="name">아테네</b>
                                            <i class="category">그리스</i>
                                        </div>
                                        <div class="count">
                                  
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=121031002">
                                        <div class="value">
                                            <b class="name">산토리니</b>
                                            <i class="category">그리스</i>
                                        </div>
                                        <div class="count">
                                  
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=121031021">
                                        <div class="value">
                                            <b class="name">자킨토스</b>
                                            <i class="category">그리스</i>
                                        </div>
                                        <div class="count">
                                  
                                        </div>
                                    </a>
                                </li>



                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=121041001">
                                        <div class="value">
                                            <b class="name">이스탄불</b>
                                            <i class="category">터키</i>
                                        </div>
                                        <div class="count">
                             
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=121041003">
                                        <div class="value">
                                            <b class="name">카파도키아</b>
                                            <i class="category">터키</i>
                                        </div>
                                        <div class="count">
                             
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=121041028">
                                        <div class="value">
                                            <b class="name">페티예</b>
                                            <i class="category">터키</i>
                                        </div>
                                        <div class="count">
                             
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=141011001">
                                        <div class="value">
                                            <b class="name">모스크바</b>
                                            <i class="category">러시아</i>
                                        </div>
                                        <div class="count">
                                  
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=141011002">
                                        <div class="value">
                                            <b class="name">상트페테르부르크</b>
                                            <i class="category">러시아</i>
                                        </div>
                                        <div class="count">
             
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=141011008">
                                        <div class="value">
                                            <b class="name">블라디보스톡</b>
                                            <i class="category">러시아</i>
                                        </div>
                                        <div class="count">
             
                                        </div>
                                    </a>
                                </li>




                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=141051001">
                                        <div class="value">
                                            <b class="name">스톡홀름</b>
                                            <i class="category">스웨덴</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=141031001">
                                        <div class="value">
                                            <b class="name">코펜하겐</b>
                                            <i class="category">덴마크</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=141021001">
                                        <div class="value">
                                            <b class="name">헬싱키</b>
                                            <i class="category">핀란드</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=141041011">
                                        <div class="value">
                                            <b class="name">스타방에르</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=141061001">
                                        <div class="value">
                                            <b class="name">탈린</b>
                                            <i class="category">에스토니아</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=141071003">
                                        <div class="value">
                                            <b class="name">레이캬비크</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>



                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=131041032">
                                        <div class="value">
                                            <b class="name">할슈타트</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=131011003">
                                        <div class="value">
                                            <b class="name">체스키크롬로프</b>
                                            <i class="category">체코</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>



                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=111101001">
                                        <div class="value">
                                            <b class="name">더블린</b>
                                            <i class="category">아일랜드</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>


                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=121031024">
                                        <div class="value">
                                            <b class="name">이라클리온(크레타)</b>
                                            <i class="category">그리스</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>
                                <li class="content-item">
                                     <a href="/mb/index_city.asp?l=&region=121031068">
                                        <div class="value">
                                            <b class="name">하니아(크레타)</b>
                                            <i class="category">그리스</i>
                                        </div>
                                        <div class="count">
                                   
                                        </div>
                                    </a>
                                </li>

                            </ul>
                        </div>


                    <div class="md-content">

                        <div class="md-section">
                            <div class="content-header ico_theme">모든도시</div>
                            <ul class="content-list">

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011004">
                                        <div class="value">
                                            <b class="name">파리</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031001">
                                        <div class="value">
                                            <b class="name">런던</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041004">
                                        <div class="value">
                                            <b class="name">로마</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131011001">
                                        <div class="value">
                                            <b class="name">프라하</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011002">
                                        <div class="value">
                                            <b class="name">바르셀로나</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061006">
                                        <div class="value">
                                            <b class="name">프랑크푸르트</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061005">
                                        <div class="value">
                                            <b class="name">뮌헨</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041006">
                                        <div class="value">
                                            <b class="name">베니스</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111071001">
                                        <div class="value">
                                            <b class="name">암스테르담</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041003">
                                        <div class="value">
                                            <b class="name">피렌체</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041001">
                                        <div class="value">
                                            <b class="name">비엔나(빈)</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061008">
                                        <div class="value">
                                            <b class="name">베를린</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021002">
                                        <div class="value">
                                            <b class="name">인터라켄</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011003">
                                        <div class="value">
                                            <b class="name">마드리드</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021001">
                                        <div class="value">
                                            <b class="name">루체른</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041001">
                                        <div class="value">
                                            <b class="name">밀라노</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041001">
                                        <div class="value">
                                            <b class="name">이스탄불</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111081001">
                                        <div class="value">
                                            <b class="name">브뤼셀</b>
                                            <i class="category">벨기에</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131021001">
                                        <div class="value">
                                            <b class="name">부다페스트</b>
                                            <i class="category">헝가리</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121031001">
                                        <div class="value">
                                            <b class="name">아테네</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041002">
                                        <div class="value">
                                            <b class="name">잘츠부르크</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041011">
                                        <div class="value">
                                            <b class="name">나폴리</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011003">
                                        <div class="value">
                                            <b class="name">니스</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011001">
                                        <div class="value">
                                            <b class="name">그라나다</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021005">
                                        <div class="value">
                                            <b class="name">취리히</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121021001">
                                        <div class="value">
                                            <b class="name">리스본</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061001">
                                        <div class="value">
                                            <b class="name">하이델베르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011007">
                                        <div class="value">
                                            <b class="name">세비야</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141051001">
                                        <div class="value">
                                            <b class="name">스톡홀름</b>
                                            <i class="category">스웨덴</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041032">
                                        <div class="value">
                                            <b class="name">할슈타트</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031004">
                                        <div class="value">
                                            <b class="name">옥스퍼드</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021015">
                                        <div class="value">
                                            <b class="name">베른</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131061001">
                                        <div class="value">
                                            <b class="name">두브로브니크</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141011002">
                                        <div class="value">
                                            <b class="name">상트페테르부르크</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131011003">
                                        <div class="value">
                                            <b class="name">체스키 크루믈로프</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141011001">
                                        <div class="value">
                                            <b class="name">모스크바</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031008">
                                        <div class="value">
                                            <b class="name">에든버러</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011005">
                                        <div class="value">
                                            <b class="name">아비뇽</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141041002">
                                        <div class="value">
                                            <b class="name">오슬로</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141021001">
                                        <div class="value">
                                            <b class="name">헬싱키</b>
                                            <i class="category">핀란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011004">
                                        <div class="value">
                                            <b class="name">톨레도</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011057">
                                        <div class="value">
                                            <b class="name">론다</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061003">
                                        <div class="value">
                                            <b class="name">퓌센</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041005">
                                        <div class="value">
                                            <b class="name">인스브루크</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131031003">
                                        <div class="value">
                                            <b class="name">바르샤바</b>
                                            <i class="category">폴란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141031001">
                                        <div class="value">
                                            <b class="name">코펜하겐</b>
                                            <i class="category">덴마크</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061012">
                                        <div class="value">
                                            <b class="name">뒤셀도르프</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011010">
                                        <div class="value">
                                            <b class="name">리옹</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021006">
                                        <div class="value">
                                            <b class="name">융프라우</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041009">
                                        <div class="value">
                                            <b class="name">아시시</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011002">
                                        <div class="value">
                                            <b class="name">베르사유</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061011">
                                        <div class="value">
                                            <b class="name">쾰른</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061004">
                                        <div class="value">
                                            <b class="name">드레스덴</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021008">
                                        <div class="value">
                                            <b class="name">제네바</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011008">
                                        <div class="value">
                                            <b class="name">몽생미셸</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011009">
                                        <div class="value">
                                            <b class="name">발렌시아</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061007">
                                        <div class="value">
                                            <b class="name">뷔르츠부르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031005">
                                        <div class="value">
                                            <b class="name">케임브리지</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121031002">
                                        <div class="value">
                                            <b class="name">산토리니 섬</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111081002">
                                        <div class="value">
                                            <b class="name">브뤼헤</b>
                                            <i class="category">벨기에</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031007">
                                        <div class="value">
                                            <b class="name">리버풀</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041036">
                                        <div class="value">
                                            <b class="name">베로나</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111101001">
                                        <div class="value">
                                            <b class="name">더블린</b>
                                            <i class="category">아일랜드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131031004">
                                        <div class="value">
                                            <b class="name">크라쿠프</b>
                                            <i class="category">폴란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011012">
                                        <div class="value">
                                            <b class="name">스트라스부르</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041003">
                                        <div class="value">
                                            <b class="name">그라츠</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011005">
                                        <div class="value">
                                            <b class="name">말라가</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131061002">
                                        <div class="value">
                                            <b class="name">스플리트</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011014">
                                        <div class="value">
                                            <b class="name">마르세유</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031002">
                                        <div class="value">
                                            <b class="name">브라이튼</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011011">
                                        <div class="value">
                                            <b class="name">깐느</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021016">
                                        <div class="value">
                                            <b class="name">로잔</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041002">
                                        <div class="value">
                                            <b class="name">소렌토</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041003">
                                        <div class="value">
                                            <b class="name">카파도키아</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031030">
                                        <div class="value">
                                            <b class="name">맨체스터</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011128">
                                        <div class="value">
                                            <b class="name">엑상프로방스</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141041001">
                                        <div class="value">
                                            <b class="name">베르겐</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041012">
                                        <div class="value">
                                            <b class="name">피사</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111071002">
                                        <div class="value">
                                            <b class="name">잔세스칸스</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011143">
                                        <div class="value">
                                            <b class="name">지베르니</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041005">
                                        <div class="value">
                                            <b class="name">폼페이</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031009">
                                        <div class="value">
                                            <b class="name">글래스고</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011008">
                                        <div class="value">
                                            <b class="name">세고비아</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061024">
                                        <div class="value">
                                            <b class="name">슈투트가르트</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061020">
                                        <div class="value">
                                            <b class="name">뉘른베르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061030">
                                        <div class="value">
                                            <b class="name">밤베르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061009">
                                        <div class="value">
                                            <b class="name">라이프치히</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041024">
                                        <div class="value">
                                            <b class="name">람페두사 섬</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041006">
                                        <div class="value">
                                            <b class="name">앙카라</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011013">
                                        <div class="value">
                                            <b class="name">보르도</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111081003">
                                        <div class="value">
                                            <b class="name">안트워프</b>
                                            <i class="category">벨기에</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041004">
                                        <div class="value">
                                            <b class="name">에페소스 유적지</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061016">
                                        <div class="value">
                                            <b class="name">함부르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041010">
                                        <div class="value">
                                            <b class="name">카프리 섬</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011048">
                                        <div class="value">
                                            <b class="name">네르하</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011001">
                                        <div class="value">
                                            <b class="name">샤모니몽블랑</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041006">
                                        <div class="value">
                                            <b class="name">잘츠캄머구트</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041123">
                                        <div class="value">
                                            <b class="name">친꿰떼레</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131061008">
                                        <div class="value">
                                            <b class="name">자그레브</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111111001">
                                        <div class="value">
                                            <b class="name">룩셈부르크</b>
                                            <i class="category">룩셈부르크</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121021003">
                                        <div class="value">
                                            <b class="name">신트라</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011144">
                                        <div class="value">
                                            <b class="name">오베르 쉬르 우와즈</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021031">
                                        <div class="value">
                                            <b class="name">몽트뢰</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031003">
                                        <div class="value">
                                            <b class="name">윈저</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141021012">
                                        <div class="value">
                                            <b class="name">로바니에미</b>
                                            <i class="category">핀란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041008">
                                        <div class="value">
                                            <b class="name">시에나</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041030">
                                        <div class="value">
                                            <b class="name">파묵칼레</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021007">
                                        <div class="value">
                                            <b class="name">그린델발트</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011027">
                                        <div class="value">
                                            <b class="name">산티아고 데 콤포스텔라</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131081001">
                                        <div class="value">
                                            <b class="name">부쿠레슈티</b>
                                            <i class="category">루마니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011006">
                                        <div class="value">
                                            <b class="name">코르도바</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031006">
                                        <div class="value">
                                            <b class="name">바스</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031010">
                                        <div class="value">
                                            <b class="name">바이버리</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041022">
                                        <div class="value">
                                            <b class="name">제노바</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021004">
                                        <div class="value">
                                            <b class="name">체르마트</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141051002">
                                        <div class="value">
                                            <b class="name">웁살라</b>
                                            <i class="category">스웨덴</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111091001">
                                        <div class="value">
                                            <b class="name">모나코</b>
                                            <i class="category">모나코 공국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131011010">
                                        <div class="value">
                                            <b class="name">오스트라바</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111071003">
                                        <div class="value">
                                            <b class="name">알크마르</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041028">
                                        <div class="value">
                                            <b class="name">페티예</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141011008">
                                        <div class="value">
                                            <b class="name">블라디보스토크</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131011002">
                                        <div class="value">
                                            <b class="name">브르노</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011110">
                                        <div class="value">
                                            <b class="name">아를</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021017">
                                        <div class="value">
                                            <b class="name">바젤</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141011007">
                                        <div class="value">
                                            <b class="name">하바롭스크</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041035">
                                        <div class="value">
                                            <b class="name">토리노</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011141">
                                        <div class="value">
                                            <b class="name">퐁텐블로</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031044">
                                        <div class="value">
                                            <b class="name">요크</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031014">
                                        <div class="value">
                                            <b class="name">버밍엄</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011081">
                                        <div class="value">
                                            <b class="name">레온</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011015">
                                        <div class="value">
                                            <b class="name">디종</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061027">
                                        <div class="value">
                                            <b class="name">아헨</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111071008">
                                        <div class="value">
                                            <b class="name">로테르담</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131051002">
                                        <div class="value">
                                            <b class="name">브라티슬라바</b>
                                            <i class="category">슬로바키아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021009">
                                        <div class="value">
                                            <b class="name">라우터브루넨</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061034">
                                        <div class="value">
                                            <b class="name">본</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061104">
                                        <div class="value">
                                            <b class="name">바트 소덴</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131011005">
                                        <div class="value">
                                            <b class="name">카를로비 바리</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061017">
                                        <div class="value">
                                            <b class="name">하노버</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011009">
                                        <div class="value">
                                            <b class="name">생 폴 드 방스</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011089">
                                        <div class="value">
                                            <b class="name">마요르카 섬</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041016">
                                        <div class="value">
                                            <b class="name">볼로냐</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011017">
                                        <div class="value">
                                            <b class="name">이비사 섬(이비자)</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131081002">
                                        <div class="value">
                                            <b class="name">브라쇼브</b>
                                            <i class="category">루마니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041025">
                                        <div class="value">
                                            <b class="name">바트 이슐</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131031001">
                                        <div class="value">
                                            <b class="name">아우슈비츠</b>
                                            <i class="category">폴란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131061009">
                                        <div class="value">
                                            <b class="name">플리트비체</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121021008">
                                        <div class="value">
                                            <b class="name">포르투</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141061001">
                                        <div class="value">
                                            <b class="name">탈린</b>
                                            <i class="category">에스토니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041079">
                                        <div class="value">
                                            <b class="name">포지타노</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041007">
                                        <div class="value">
                                            <b class="name">린츠</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111071004">
                                        <div class="value">
                                            <b class="name">헤이그</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061081">
                                        <div class="value">
                                            <b class="name">가르미슈 파르텐키르헨</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011010">
                                        <div class="value">
                                            <b class="name">산 세바스티안</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061064">
                                        <div class="value">
                                            <b class="name">레겐스부르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041031">
                                        <div class="value">
                                            <b class="name">셀축</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131071003">
                                        <div class="value">
                                            <b class="name">류블랴나</b>
                                            <i class="category">슬로베니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061058">
                                        <div class="value">
                                            <b class="name">만하임</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041056">
                                        <div class="value">
                                            <b class="name">오르비에토</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041015">
                                        <div class="value">
                                            <b class="name">바리</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031029">
                                        <div class="value">
                                            <b class="name">리즈</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031051">
                                        <div class="value">
                                            <b class="name">포츠머스</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021038">
                                        <div class="value">
                                            <b class="name">슈피츠</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061010">
                                        <div class="value">
                                            <b class="name">브레멘</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011014">
                                        <div class="value">
                                            <b class="name">빌바오</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121031013">
                                        <div class="value">
                                            <b class="name">미코노스 섬</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031031">
                                        <div class="value">
                                            <b class="name">뉴캐슬</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021012">
                                        <div class="value">
                                            <b class="name">필라투스 산</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031184">
                                        <div class="value">
                                            <b class="name">스톤헨지</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011093">
                                        <div class="value">
                                            <b class="name">프리힐리아나</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011044">
                                        <div class="value">
                                            <b class="name">툴루즈</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041007">
                                        <div class="value">
                                            <b class="name">안탈리아</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011050">
                                        <div class="value">
                                            <b class="name">안시</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061040">
                                        <div class="value">
                                            <b class="name">에센</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131071001">
                                        <div class="value">
                                            <b class="name">블레드</b>
                                            <i class="category">슬로베니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031081">
                                        <div class="value">
                                            <b class="name">스윈든</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111071005">
                                        <div class="value">
                                            <b class="name">에인트호번</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121051003">
                                        <div class="value">
                                            <b class="name">예루살렘</b>
                                            <i class="category">이스라엘</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011023">
                                        <div class="value">
                                            <b class="name">팔마 데 마요르카</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141041011">
                                        <div class="value">
                                            <b class="name">스타방게르</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041043">
                                        <div class="value">
                                            <b class="name">코모</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121031036">
                                        <div class="value">
                                            <b class="name">델포이</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041014">
                                        <div class="value">
                                            <b class="name">이즈미르</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061134">
                                        <div class="value">
                                            <b class="name">신스하임</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121031016">
                                        <div class="value">
                                            <b class="name">로도스 섬</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011092">
                                        <div class="value">
                                            <b class="name">부뇰</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121021004">
                                        <div class="value">
                                            <b class="name">카스카이스</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011079">
                                        <div class="value">
                                            <b class="name">부르고스</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041008">
                                        <div class="value">
                                            <b class="name">클라겐푸르트</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131011012">
                                        <div class="value">
                                            <b class="name">체스케 부데요비체</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011031">
                                        <div class="value">
                                            <b class="name">사라고사</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111071011">
                                        <div class="value">
                                            <b class="name">위트레흐트</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141031002">
                                        <div class="value">
                                            <b class="name">오덴세</b>
                                            <i class="category">덴마크</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011120">
                                        <div class="value">
                                            <b class="name">생 말로</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041124">
                                        <div class="value">
                                            <b class="name">티볼리</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061101">
                                        <div class="value">
                                            <b class="name">포츠담</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061057">
                                        <div class="value">
                                            <b class="name">마인츠</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121031019">
                                        <div class="value">
                                            <b class="name">테살로니키</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011119">
                                        <div class="value">
                                            <b class="name">콜마르</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031046">
                                        <div class="value">
                                            <b class="name">윈더미어</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011007">
                                        <div class="value">
                                            <b class="name">이브아르</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061102">
                                        <div class="value">
                                            <b class="name">노이스</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131111001">
                                        <div class="value">
                                            <b class="name">베오그라드</b>
                                            <i class="category">세르비아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131031002">
                                        <div class="value">
                                            <b class="name">비엘리츠카</b>
                                            <i class="category">폴란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131141001">
                                        <div class="value">
                                            <b class="name">사라예보</b>
                                            <i class="category">보스니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111120001">
                                        <div class="value">
                                            <b class="name">산 마리노</b>
                                            <i class="category">산 마리노</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011036">
                                        <div class="value">
                                            <b class="name">낭트</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011020">
                                        <div class="value">
                                            <b class="name">그란 카나리아 섬</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011086">
                                        <div class="value">
                                            <b class="name">라스 팔마스</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011033">
                                        <div class="value">
                                            <b class="name">몽펠리에</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041128">
                                        <div class="value">
                                            <b class="name">벨라지오</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061041">
                                        <div class="value">
                                            <b class="name">프라이부르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131031012">
                                        <div class="value">
                                            <b class="name">브로츠와프</b>
                                            <i class="category">폴란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131051001">
                                        <div class="value">
                                            <b class="name">타트라 산맥</b>
                                            <i class="category">슬로바키아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061071">
                                        <div class="value">
                                            <b class="name">바이마르</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041026">
                                        <div class="value">
                                            <b class="name">장크트 길겐</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061050">
                                        <div class="value">
                                            <b class="name">카셀</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141041012">
                                        <div class="value">
                                            <b class="name">트롬소</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011116">
                                        <div class="value">
                                            <b class="name">몽바종</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041029">
                                        <div class="value">
                                            <b class="name">페루자</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131061007">
                                        <div class="value">
                                            <b class="name">자다르</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041064">
                                        <div class="value">
                                            <b class="name">아말피</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061019">
                                        <div class="value">
                                            <b class="name">뮌스터</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131121002">
                                        <div class="value">
                                            <b class="name">소피아</b>
                                            <i class="category">불가리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021086">
                                        <div class="value">
                                            <b class="name">뮈렌</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031019">
                                        <div class="value">
                                            <b class="name">코번트리</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041034">
                                        <div class="value">
                                            <b class="name">트리에스테</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031056">
                                        <div class="value">
                                            <b class="name">솔즈베리</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061053">
                                        <div class="value">
                                            <b class="name">코블렌츠</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011070">
                                        <div class="value">
                                            <b class="name">시체스</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121021002">
                                        <div class="value">
                                            <b class="name">로카 곶</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011040">
                                        <div class="value">
                                            <b class="name">렌</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131011007">
                                        <div class="value">
                                            <b class="name">쿠트나호라</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141051007">
                                        <div class="value">
                                            <b class="name">말뫼</b>
                                            <i class="category">스웨덴</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041029">
                                        <div class="value">
                                            <b class="name">쿠사다시</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141021015">
                                        <div class="value">
                                            <b class="name">탐페레</b>
                                            <i class="category">핀란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131091001">
                                        <div class="value">
                                            <b class="name">리가</b>
                                            <i class="category">라트비아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131011008">
                                        <div class="value">
                                            <b class="name">올로모우츠</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141051004">
                                        <div class="value">
                                            <b class="name">고텐부르크</b>
                                            <i class="category">스웨덴</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131031006">
                                        <div class="value">
                                            <b class="name">그단스크</b>
                                            <i class="category">폴란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011043">
                                        <div class="value">
                                            <b class="name">툴롱</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141031010">
                                        <div class="value">
                                            <b class="name">로스킬레</b>
                                            <i class="category">덴마크</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061072">
                                        <div class="value">
                                            <b class="name">비스바덴</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041014">
                                        <div class="value">
                                            <b class="name">안코나</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061111">
                                        <div class="value">
                                            <b class="name">뤼데스하임</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121031022">
                                        <div class="value">
                                            <b class="name">에기나 섬</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061097">
                                        <div class="value">
                                            <b class="name">아이제나흐</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121031039">
                                        <div class="value">
                                            <b class="name">올림피아</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061013">
                                        <div class="value">
                                            <b class="name">도르트문트</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121031018">
                                        <div class="value">
                                            <b class="name">스키아토스 섬</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061028">
                                        <div class="value">
                                            <b class="name">아우크스부르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011098">
                                        <div class="value">
                                            <b class="name">투르</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141041028">
                                        <div class="value">
                                            <b class="name">플롬</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021018">
                                        <div class="value">
                                            <b class="name">루가노</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061021">
                                        <div class="value">
                                            <b class="name">파더보른</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011023">
                                        <div class="value">
                                            <b class="name">카르카손</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011017">
                                        <div class="value">
                                            <b class="name">앙제</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011140">
                                        <div class="value">
                                            <b class="name">에즈마을</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131011013">
                                        <div class="value">
                                            <b class="name">플젠</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141031021">
                                        <div class="value">
                                            <b class="name">헬싱괴르</b>
                                            <i class="category">덴마크</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141011005">
                                        <div class="value">
                                            <b class="name">이르쿠츠크</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011079">
                                        <div class="value">
                                            <b class="name">망통</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021011">
                                        <div class="value">
                                            <b class="name">리기 산</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111091002">
                                        <div class="value">
                                            <b class="name">몬테 카를로</b>
                                            <i class="category">모나코 공국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121031048">
                                        <div class="value">
                                            <b class="name">스코펠로스</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131071002">
                                        <div class="value">
                                            <b class="name">포스토이나</b>
                                            <i class="category">슬로베니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031017">
                                        <div class="value">
                                            <b class="name">브리스톨</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021003">
                                        <div class="value">
                                            <b class="name">그뤼예르</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011078">
                                        <div class="value">
                                            <b class="name">마콩(메이컨)</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011011">
                                        <div class="value">
                                            <b class="name">알리칸테</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041035">
                                        <div class="value">
                                            <b class="name">사프란볼루</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061092">
                                        <div class="value">
                                            <b class="name">트리어</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121031041">
                                        <div class="value">
                                            <b class="name">에피다우루스</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061084">
                                        <div class="value">
                                            <b class="name">콘스탄츠</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111131001">
                                        <div class="value">
                                            <b class="name">안도라 라 벨라</b>
                                            <i class="category">안도라</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011026">
                                        <div class="value">
                                            <b class="name">도빌</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011154">
                                        <div class="value">
                                            <b class="name">바르비종</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041011">
                                        <div class="value">
                                            <b class="name">벨스</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061093">
                                        <div class="value">
                                            <b class="name">모펠든 발도르프</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111071007">
                                        <div class="value">
                                            <b class="name">마스트리흐트</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141041057">
                                        <div class="value">
                                            <b class="name">게이랑게르</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021063">
                                        <div class="value">
                                            <b class="name">생 모리츠</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131221002">
                                        <div class="value">
                                            <b class="name">코토르 지역의 자연 및 역사문화 유적지</b>
                                            <i class="category">몬테네그로</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041062">
                                        <div class="value">
                                            <b class="name">비첸차</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031187">
                                        <div class="value">
                                            <b class="name">세븐 시스터즈</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141041010">
                                        <div class="value">
                                            <b class="name">크리스티안산</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061128">
                                        <div class="value">
                                            <b class="name">비텐베르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031016">
                                        <div class="value">
                                            <b class="name">본머스</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061047">
                                        <div class="value">
                                            <b class="name">잉골슈타트</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131061003">
                                        <div class="value">
                                            <b class="name">트로기르</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131101003">
                                        <div class="value">
                                            <b class="name">빌니우스</b>
                                            <i class="category">리투아니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031012">
                                        <div class="value">
                                            <b class="name">벨파스트</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111071028">
                                        <div class="value">
                                            <b class="name">델프트</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041130">
                                        <div class="value">
                                            <b class="name">산 지미냐노</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011046">
                                        <div class="value">
                                            <b class="name">살라망카</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041097">
                                        <div class="value">
                                            <b class="name">라 스페치아</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041008">
                                        <div class="value">
                                            <b class="name">보드룸</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031034">
                                        <div class="value">
                                            <b class="name">노팅엄</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141051022">
                                        <div class="value">
                                            <b class="name">칼스타드</b>
                                            <i class="category">스웨덴</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011072">
                                        <div class="value">
                                            <b class="name">프라트 데 로브레가트</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131141002">
                                        <div class="value">
                                            <b class="name">모스타르</b>
                                            <i class="category">보스니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111071017">
                                        <div class="value">
                                            <b class="name">레이덴</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061066">
                                        <div class="value">
                                            <b class="name">로젠하임</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031038">
                                        <div class="value">
                                            <b class="name">애쉬포드</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121021007">
                                        <div class="value">
                                            <b class="name">마데이라 섬</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131051004">
                                        <div class="value">
                                            <b class="name">질리나</b>
                                            <i class="category">슬로바키아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041012">
                                        <div class="value">
                                            <b class="name">멜크</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031100">
                                        <div class="value">
                                            <b class="name">스탠스테드</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011073">
                                        <div class="value">
                                            <b class="name">르 아브르</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111081006">
                                        <div class="value">
                                            <b class="name">겐트</b>
                                            <i class="category">벨기에</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031045">
                                        <div class="value">
                                            <b class="name">레딩</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031033">
                                        <div class="value">
                                            <b class="name">노리치</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021049">
                                        <div class="value">
                                            <b class="name">쿠어</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041010">
                                        <div class="value">
                                            <b class="name">쿠프스타인</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011034">
                                        <div class="value">
                                            <b class="name">뮐루즈</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131051003">
                                        <div class="value">
                                            <b class="name">코시체</b>
                                            <i class="category">슬로바키아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141041053">
                                        <div class="value">
                                            <b class="name">나르비크</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041081">
                                        <div class="value">
                                            <b class="name">살레르노</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041027">
                                        <div class="value">
                                            <b class="name">판텔레리아 섬</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131011014">
                                        <div class="value">
                                            <b class="name">마리안스케 라즈네</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011050">
                                        <div class="value">
                                            <b class="name">알헤시라스</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141031004">
                                        <div class="value">
                                            <b class="name">오르후스</b>
                                            <i class="category">덴마크</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141041013">
                                        <div class="value">
                                            <b class="name">트론헤임</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041022">
                                        <div class="value">
                                            <b class="name">젤 암 시</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011082">
                                        <div class="value">
                                            <b class="name">팜플로나</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041068">
                                        <div class="value">
                                            <b class="name">이스키아 섬</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141021016">
                                        <div class="value">
                                            <b class="name">투르쿠</b>
                                            <i class="category">핀란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121021006">
                                        <div class="value">
                                            <b class="name">파로</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021081">
                                        <div class="value">
                                            <b class="name">마이엔펠트</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061103">
                                        <div class="value">
                                            <b class="name">뤼베크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011091">
                                        <div class="value">
                                            <b class="name">비고</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021024">
                                        <div class="value">
                                            <b class="name">브리그</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011086">
                                        <div class="value">
                                            <b class="name">나르본</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011032">
                                        <div class="value">
                                            <b class="name">루르드</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031036">
                                        <div class="value">
                                            <b class="name">사우스햄턴</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041060">
                                        <div class="value">
                                            <b class="name">레지오에밀리아</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131011016">
                                        <div class="value">
                                            <b class="name">크리보클라</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011118">
                                        <div class="value">
                                            <b class="name">오를레앙</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031022">
                                        <div class="value">
                                            <b class="name">엑서터</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021040">
                                        <div class="value">
                                            <b class="name">튠</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011161">
                                        <div class="value">
                                            <b class="name">에트르타</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011074">
                                        <div class="value">
                                            <b class="name">바베라 델 발레스</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011152">
                                        <div class="value">
                                            <b class="name">그라스</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031023">
                                        <div class="value">
                                            <b class="name">지브롤터</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121051002">
                                        <div class="value">
                                            <b class="name">텔 아비브</b>
                                            <i class="category">이스라엘</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031160">
                                        <div class="value">
                                            <b class="name">뉴캐슬 어폰 타인</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011043">
                                        <div class="value">
                                            <b class="name">타라고나</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021071">
                                        <div class="value">
                                            <b class="name">로이커바트</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061015">
                                        <div class="value">
                                            <b class="name">프리드리히스하펜</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031168">
                                        <div class="value">
                                            <b class="name">폴커크</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131011017">
                                        <div class="value">
                                            <b class="name">모라비안 카르스트</b>
                                            <i class="category">체코</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131061005">
                                        <div class="value">
                                            <b class="name">풀라</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031026">
                                        <div class="value">
                                            <b class="name">인버네스</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061036">
                                        <div class="value">
                                            <b class="name">첼레</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011035">
                                        <div class="value">
                                            <b class="name">님</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011029">
                                        <div class="value">
                                            <b class="name">바야돌리드</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011092">
                                        <div class="value">
                                            <b class="name">루앙</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011155">
                                        <div class="value">
                                            <b class="name">베르동 협곡</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011069">
                                        <div class="value">
                                            <b class="name">아빌라</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111101004">
                                        <div class="value">
                                            <b class="name">골웨이</b>
                                            <i class="category">아일랜드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141041043">
                                        <div class="value">
                                            <b class="name">스트린</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121031012">
                                        <div class="value">
                                            <b class="name">코스 섬</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011126">
                                        <div class="value">
                                            <b class="name">옹플뢰르</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061029">
                                        <div class="value">
                                            <b class="name">바덴바덴</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041026">
                                        <div class="value">
                                            <b class="name">팔레르모</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021013">
                                        <div class="value">
                                            <b class="name">티틀리스 산</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141071003">
                                        <div class="value">
                                            <b class="name">레이캬비크</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031109">
                                        <div class="value">
                                            <b class="name">스트랫포드 어폰 에이번</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041034">
                                        <div class="value">
                                            <b class="name">아이발릭</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121021024">
                                        <div class="value">
                                            <b class="name">오비도스</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031099">
                                        <div class="value">
                                            <b class="name">첼튼엄</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011146">
                                        <div class="value">
                                            <b class="name">생장피에드포르</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061018">
                                        <div class="value">
                                            <b class="name">카를스루에</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011098">
                                        <div class="value">
                                            <b class="name">푸엔테 라 레이나</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031150">
                                        <div class="value">
                                            <b class="name">앰블사이드</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041032">
                                        <div class="value">
                                            <b class="name">리미니</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041111">
                                        <div class="value">
                                            <b class="name">레코</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131111003">
                                        <div class="value">
                                            <b class="name">티바트</b>
                                            <i class="category">세르비아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061031">
                                        <div class="value">
                                            <b class="name">바이로이트</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011029">
                                        <div class="value">
                                            <b class="name">릴</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041063">
                                        <div class="value">
                                            <b class="name">아그리젠토</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141031006">
                                        <div class="value">
                                            <b class="name">에스비에르</b>
                                            <i class="category">덴마크</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141041031">
                                        <div class="value">
                                            <b class="name">릴레함메르</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011016">
                                        <div class="value">
                                            <b class="name">헤로나</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041005">
                                        <div class="value">
                                            <b class="name">아다나</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111101008">
                                        <div class="value">
                                            <b class="name">슬라이고</b>
                                            <i class="category">아일랜드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011024">
                                        <div class="value">
                                            <b class="name">샹베리</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131221003">
                                        <div class="value">
                                            <b class="name">두르미토르 국립공원</b>
                                            <i class="category">몬테네그로</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141041047">
                                        <div class="value">
                                            <b class="name">몰데</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031111">
                                        <div class="value">
                                            <b class="name">워릭</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031127">
                                        <div class="value">
                                            <b class="name">체스터필드</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021077">
                                        <div class="value">
                                            <b class="name">엥겔베르그</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131151001">
                                        <div class="value">
                                            <b class="name">스코페</b>
                                            <i class="category">마케도니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121021033">
                                        <div class="value">
                                            <b class="name">기마랑이스</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011055">
                                        <div class="value">
                                            <b class="name">바욘느</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011019">
                                        <div class="value">
                                            <b class="name">라 코루냐</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031050">
                                        <div class="value">
                                            <b class="name">이스트본</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041080">
                                        <div class="value">
                                            <b class="name">라벨로</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061038">
                                        <div class="value">
                                            <b class="name">뒤스부르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141051005">
                                        <div class="value">
                                            <b class="name">키루나</b>
                                            <i class="category">스웨덴</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041009">
                                        <div class="value">
                                            <b class="name">달라만</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041114">
                                        <div class="value">
                                            <b class="name">볼차노</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011037">
                                        <div class="value">
                                            <b class="name">포</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031151">
                                        <div class="value">
                                            <b class="name">그래스미어</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141011139">
                                        <div class="value">
                                            <b class="name">캄차카반도의 화산군 </b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011020">
                                        <div class="value">
                                            <b class="name">비아리츠</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141011057">
                                        <div class="value">
                                            <b class="name">카잔</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141051009">
                                        <div class="value">
                                            <b class="name">우메오</b>
                                            <i class="category">스웨덴</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141011006">
                                        <div class="value">
                                            <b class="name">울란 우데</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111081007">
                                        <div class="value">
                                            <b class="name">루벤</b>
                                            <i class="category">벨기에</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011125">
                                        <div class="value">
                                            <b class="name">랭스</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061014">
                                        <div class="value">
                                            <b class="name">에르푸르트</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041013">
                                        <div class="value">
                                            <b class="name">가지안테프</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111101002">
                                        <div class="value">
                                            <b class="name">코크</b>
                                            <i class="category">아일랜드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141041015">
                                        <div class="value">
                                            <b class="name">산데피오르드</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121021030">
                                        <div class="value">
                                            <b class="name">코임브라</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031120">
                                        <div class="value">
                                            <b class="name">레스터</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011114">
                                        <div class="value">
                                            <b class="name">본</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031018">
                                        <div class="value">
                                            <b class="name">카디프</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041023">
                                        <div class="value">
                                            <b class="name">브레겐츠</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031011">
                                        <div class="value">
                                            <b class="name">애버딘</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041073">
                                        <div class="value">
                                            <b class="name">베르가모</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041007">
                                        <div class="value">
                                            <b class="name">피엔자</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011022">
                                        <div class="value">
                                            <b class="name">칼비</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011121">
                                        <div class="value">
                                            <b class="name">낭시</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041083">
                                        <div class="value">
                                            <b class="name">알베로벨로</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111071020">
                                        <div class="value">
                                            <b class="name">리세</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021032">
                                        <div class="value">
                                            <b class="name">뇌샤텔</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041052">
                                        <div class="value">
                                            <b class="name">모데나</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011022">
                                        <div class="value">
                                            <b class="name">오비에도</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131170001">
                                        <div class="value">
                                            <b class="name">파두츠</b>
                                            <i class="category">리히텐슈타인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061070">
                                        <div class="value">
                                            <b class="name">울름</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131061004">
                                        <div class="value">
                                            <b class="name">볼</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111071019">
                                        <div class="value">
                                            <b class="name">아펠도른</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011036">
                                        <div class="value">
                                            <b class="name">카디즈</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011039">
                                        <div class="value">
                                            <b class="name">쿠엥카</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041015">
                                        <div class="value">
                                            <b class="name">카이세리</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061043">
                                        <div class="value">
                                            <b class="name">풀다</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011103">
                                        <div class="value">
                                            <b class="name">베르농</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121021027">
                                        <div class="value">
                                            <b class="name">파티마</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011026">
                                        <div class="value">
                                            <b class="name">산탄데르</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041017">
                                        <div class="value">
                                            <b class="name">말라티아</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011096">
                                        <div class="value">
                                            <b class="name">아스토르가</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011158">
                                        <div class="value">
                                            <b class="name">샤르트르</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041072">
                                        <div class="value">
                                            <b class="name">산레모</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061116">
                                        <div class="value">
                                            <b class="name">오버아머가우</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041125">
                                        <div class="value">
                                            <b class="name">파에스툼</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041016">
                                        <div class="value">
                                            <b class="name">코니아</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061022">
                                        <div class="value">
                                            <b class="name">로스토크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011028">
                                        <div class="value">
                                            <b class="name">테네리페 섬</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131081014">
                                        <div class="value">
                                            <b class="name">시나이아</b>
                                            <i class="category">루마니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141041025">
                                        <div class="value">
                                            <b class="name">보스</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041027">
                                        <div class="value">
                                            <b class="name">호프 바이 잘츠부르크</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011097">
                                        <div class="value">
                                            <b class="name">론세스발레스</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121031025">
                                        <div class="value">
                                            <b class="name">이오스 섬</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111071006">
                                        <div class="value">
                                            <b class="name">흐로닝언</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011030">
                                        <div class="value">
                                            <b class="name">비토리아 가스테이즈</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031015">
                                        <div class="value">
                                            <b class="name">블랙풀</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011066">
                                        <div class="value">
                                            <b class="name">그르노블</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031155">
                                        <div class="value">
                                            <b class="name">케스윅</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031065">
                                        <div class="value">
                                            <b class="name">캔터베리</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061046">
                                        <div class="value">
                                            <b class="name">힐데스하임</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031068">
                                        <div class="value">
                                            <b class="name">람스게이트</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131121003">
                                        <div class="value">
                                            <b class="name">바르나</b>
                                            <i class="category">불가리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131121006">
                                        <div class="value">
                                            <b class="name">플로브디프</b>
                                            <i class="category">불가리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041036">
                                        <div class="value">
                                            <b class="name">부르사</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011123">
                                        <div class="value">
                                            <b class="name">메스</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131081013">
                                        <div class="value">
                                            <b class="name">시기쇼아라</b>
                                            <i class="category">루마니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011095">
                                        <div class="value">
                                            <b class="name">과딕스</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011012">
                                        <div class="value">
                                            <b class="name">알메리아</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021054">
                                        <div class="value">
                                            <b class="name">로카르노</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011034">
                                        <div class="value">
                                            <b class="name">아랑후에스</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131081008">
                                        <div class="value">
                                            <b class="name">티미소아라</b>
                                            <i class="category">루마니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011124">
                                        <div class="value">
                                            <b class="name">캉</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011042">
                                        <div class="value">
                                            <b class="name">생트로페</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021042">
                                        <div class="value">
                                            <b class="name">브베</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011016">
                                        <div class="value">
                                            <b class="name">아작시오</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141021004">
                                        <div class="value">
                                            <b class="name">케미</b>
                                            <i class="category">핀란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111071013">
                                        <div class="value">
                                            <b class="name">틸뷔르흐</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041019">
                                        <div class="value">
                                            <b class="name">삼순</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041021">
                                        <div class="value">
                                            <b class="name">시바스</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121031007">
                                        <div class="value">
                                            <b class="name">코르푸 섬</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011018">
                                        <div class="value">
                                            <b class="name">헤레스</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121031035">
                                        <div class="value">
                                            <b class="name">나프플리온</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031055">
                                        <div class="value">
                                            <b class="name">윈체스터</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011062">
                                        <div class="value">
                                            <b class="name">세르베르</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061089">
                                        <div class="value">
                                            <b class="name">바트 메르겐트하임</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041108">
                                        <div class="value">
                                            <b class="name">트레비소</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011117">
                                        <div class="value">
                                            <b class="name">블루아</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031047">
                                        <div class="value">
                                            <b class="name">런던데리</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031064">
                                        <div class="value">
                                            <b class="name">메이드스톤</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011074">
                                        <div class="value">
                                            <b class="name">르망</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011156">
                                        <div class="value">
                                            <b class="name">샹빠뉴</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011063">
                                        <div class="value">
                                            <b class="name">메리다</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031138">
                                        <div class="value">
                                            <b class="name">볼턴</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131031014">
                                        <div class="value">
                                            <b class="name">자코파네</b>
                                            <i class="category">폴란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011051">
                                        <div class="value">
                                            <b class="name">앙티브</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011025">
                                        <div class="value">
                                            <b class="name">셰르부르</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041057">
                                        <div class="value">
                                            <b class="name">파도바</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011055">
                                        <div class="value">
                                            <b class="name">미하스</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131071005">
                                        <div class="value">
                                            <b class="name">보힌호수</b>
                                            <i class="category">슬로베니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141031016">
                                        <div class="value">
                                            <b class="name">실케보르</b>
                                            <i class="category">덴마크</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011080">
                                        <div class="value">
                                            <b class="name">로그로뇨</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041041">
                                        <div class="value">
                                            <b class="name">브레시아</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041069">
                                        <div class="value">
                                            <b class="name">루카</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011127">
                                        <div class="value">
                                            <b class="name">아미앵</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031021">
                                        <div class="value">
                                            <b class="name">더럼</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041030">
                                        <div class="value">
                                            <b class="name">페스카라</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061054">
                                        <div class="value">
                                            <b class="name">린다우</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031085">
                                        <div class="value">
                                            <b class="name">스완지</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031158">
                                        <div class="value">
                                            <b class="name">칼라일</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121031045">
                                        <div class="value">
                                            <b class="name">미케네</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011090">
                                        <div class="value">
                                            <b class="name">카다케스</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061108">
                                        <div class="value">
                                            <b class="name">프라이부르크 임 브라이스가우</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031131">
                                        <div class="value">
                                            <b class="name">셰필드</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031032">
                                        <div class="value">
                                            <b class="name">뉴퀘이</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131121007">
                                        <div class="value">
                                            <b class="name">베리코 투르노보</b>
                                            <i class="category">불가리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031037">
                                        <div class="value">
                                            <b class="name">스토너웨이</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121051006">
                                        <div class="value">
                                            <b class="name">아라드</b>
                                            <i class="category">이스라엘</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011060">
                                        <div class="value">
                                            <b class="name">무르시아</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031176">
                                        <div class="value">
                                            <b class="name">던디</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041037">
                                        <div class="value">
                                            <b class="name">아레초</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041016">
                                        <div class="value">
                                            <b class="name">필라흐</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011153">
                                        <div class="value">
                                            <b class="name">고르드</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061033">
                                        <div class="value">
                                            <b class="name">빌레펠트</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041050">
                                        <div class="value">
                                            <b class="name">라티나</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041019">
                                        <div class="value">
                                            <b class="name">카타니아</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141051037">
                                        <div class="value">
                                            <b class="name">칼마르</b>
                                            <i class="category">스웨덴</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061048">
                                        <div class="value">
                                            <b class="name">예나</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021010">
                                        <div class="value">
                                            <b class="name">알레치 빙하</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011164">
                                        <div class="value">
                                            <b class="name">메네르브</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011130">
                                        <div class="value">
                                            <b class="name">앙부아즈</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061091">
                                        <div class="value">
                                            <b class="name">바인하임</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011066">
                                        <div class="value">
                                            <b class="name">카세레스</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121021011">
                                        <div class="value">
                                            <b class="name">라고스</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011099">
                                        <div class="value">
                                            <b class="name">폰페라다</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031039">
                                        <div class="value">
                                            <b class="name">체스터</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041029">
                                        <div class="value">
                                            <b class="name">바덴</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141041005">
                                        <div class="value">
                                            <b class="name">알타</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011099">
                                        <div class="value">
                                            <b class="name">생 라파엘</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041022">
                                        <div class="value">
                                            <b class="name">토카트</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121031029">
                                        <div class="value">
                                            <b class="name">시로스 섬</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131121009">
                                        <div class="value">
                                            <b class="name">카잔루크</b>
                                            <i class="category">불가리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011054">
                                        <div class="value">
                                            <b class="name">푸엔히롤라</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011027">
                                        <div class="value">
                                            <b class="name">디나르</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061062">
                                        <div class="value">
                                            <b class="name">파사우</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111071009">
                                        <div class="value">
                                            <b class="name">아른험</b>
                                            <i class="category">네덜란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141041035">
                                        <div class="value">
                                            <b class="name">송달</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141021017">
                                        <div class="value">
                                            <b class="name">바사</b>
                                            <i class="category">핀란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131061028">
                                        <div class="value">
                                            <b class="name">라스토케</b>
                                            <i class="category">크로아티아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011038">
                                        <div class="value">
                                            <b class="name">페르피냥</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041018">
                                        <div class="value">
                                            <b class="name">칼리아리</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041048">
                                        <div class="value">
                                            <b class="name">포자</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041028">
                                        <div class="value">
                                            <b class="name">파르마</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141071002">
                                        <div class="value">
                                            <b class="name">케플라비크</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141041006">
                                        <div class="value">
                                            <b class="name">보되</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021050">
                                        <div class="value">
                                            <b class="name">다보스</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041017">
                                        <div class="value">
                                            <b class="name">브린디시</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061086">
                                        <div class="value">
                                            <b class="name">뇌르트링겐</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121021035">
                                        <div class="value">
                                            <b class="name">비아나 도 카스텔로</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041033">
                                        <div class="value">
                                            <b class="name">카쉬</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041090">
                                        <div class="value">
                                            <b class="name">비테르보</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021073">
                                        <div class="value">
                                            <b class="name">칸데르슈텍</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021066">
                                        <div class="value">
                                            <b class="name">벵겐</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121031021">
                                        <div class="value">
                                            <b class="name">자킨토스 섬</b>
                                            <i class="category">그리스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041032">
                                        <div class="value">
                                            <b class="name">위르귀프</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021044">
                                        <div class="value">
                                            <b class="name">빈터투어</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031103">
                                        <div class="value">
                                            <b class="name">밀톤 케인즈</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011061">
                                        <div class="value">
                                            <b class="name">칼레</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041061">
                                        <div class="value">
                                            <b class="name">스트레사</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031098">
                                        <div class="value">
                                            <b class="name">루턴</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021060">
                                        <div class="value">
                                            <b class="name">사스 페</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021076">
                                        <div class="value">
                                            <b class="name">프리부르</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011019">
                                        <div class="value">
                                            <b class="name">베르주라크</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011040">
                                        <div class="value">
                                            <b class="name">이룬</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041025">
                                        <div class="value">
                                            <b class="name">반</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021075">
                                        <div class="value">
                                            <b class="name">룽게른</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061056">
                                        <div class="value">
                                            <b class="name">뤼네부르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041010">
                                        <div class="value">
                                            <b class="name">디야르바키르</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011071">
                                        <div class="value">
                                            <b class="name">카스텔데펠스</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011021">
                                        <div class="value">
                                            <b class="name">메노르카 섬</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041033">
                                        <div class="value">
                                            <b class="name">트라파니</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031097">
                                        <div class="value">
                                            <b class="name">글로스터</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011021">
                                        <div class="value">
                                            <b class="name">브레스트</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131031015">
                                        <div class="value">
                                            <b class="name">토루뉴</b>
                                            <i class="category">폴란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111081009">
                                        <div class="value">
                                            <b class="name">나무르</b>
                                            <i class="category">벨기에</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131081006">
                                        <div class="value">
                                            <b class="name">콘스탄차</b>
                                            <i class="category">루마니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021072">
                                        <div class="value">
                                            <b class="name">그슈타드</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021022">
                                        <div class="value">
                                            <b class="name">벨린초나</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011068">
                                        <div class="value">
                                            <b class="name">헨다예</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111101010">
                                        <div class="value">
                                            <b class="name">킬케니</b>
                                            <i class="category">아일랜드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011053">
                                        <div class="value">
                                            <b class="name">마벨라</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041098">
                                        <div class="value">
                                            <b class="name">포르토피노</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041021">
                                        <div class="value">
                                            <b class="name">엘바</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011024">
                                        <div class="value">
                                            <b class="name">레우스</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131101004">
                                        <div class="value">
                                            <b class="name">클라이페다</b>
                                            <i class="category">리투아니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021033">
                                        <div class="value">
                                            <b class="name">니용</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041066">
                                        <div class="value">
                                            <b class="name">체팔루</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131081011">
                                        <div class="value">
                                            <b class="name">시비우</b>
                                            <i class="category">루마니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011044">
                                        <div class="value">
                                            <b class="name">토르토사</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121071009">
                                        <div class="value">
                                            <b class="name">몰타 섬</b>
                                            <i class="category">몰타</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131051006">
                                        <div class="value">
                                            <b class="name">비소케 타트라</b>
                                            <i class="category">슬로바키아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041113">
                                        <div class="value">
                                            <b class="name">트렌토</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061052">
                                        <div class="value">
                                            <b class="name">킬</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021045">
                                        <div class="value">
                                            <b class="name">이베르동</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131121001">
                                        <div class="value">
                                            <b class="name">부르가스</b>
                                            <i class="category">불가리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141051018">
                                        <div class="value">
                                            <b class="name">헬싱보리</b>
                                            <i class="category">스웨덴</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021080">
                                        <div class="value">
                                            <b class="name">바드 라가츠</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011058">
                                        <div class="value">
                                            <b class="name">베지에</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061096">
                                        <div class="value">
                                            <b class="name">보파르트</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121021026">
                                        <div class="value">
                                            <b class="name">나자레</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111101014">
                                        <div class="value">
                                            <b class="name">킬라니</b>
                                            <i class="category">아일랜드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061035">
                                        <div class="value">
                                            <b class="name">브라운슈바이크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031163">
                                        <div class="value">
                                            <b class="name">얼바인</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041100">
                                        <div class="value">
                                            <b class="name">라팔로</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021093">
                                        <div class="value">
                                            <b class="name">브록</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011100">
                                        <div class="value">
                                            <b class="name">콘수에그라</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121021015">
                                        <div class="value">
                                            <b class="name">빌라모라</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141021020">
                                        <div class="value">
                                            <b class="name">반타</b>
                                            <i class="category">핀란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021023">
                                        <div class="value">
                                            <b class="name">빌</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041089">
                                        <div class="value">
                                            <b class="name">피아노 로마노</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061114">
                                        <div class="value">
                                            <b class="name">하멜른</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041031">
                                        <div class="value">
                                            <b class="name">뒤른슈타인</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041023">
                                        <div class="value">
                                            <b class="name">트라브존</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041074">
                                        <div class="value">
                                            <b class="name">시라쿠사</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031144">
                                        <div class="value">
                                            <b class="name">프레스턴</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041077">
                                        <div class="value">
                                            <b class="name">타오르미나</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011047">
                                        <div class="value">
                                            <b class="name">토레몰리노스</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011051">
                                        <div class="value">
                                            <b class="name">에스테포나</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041127">
                                        <div class="value">
                                            <b class="name">스폴레토</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011065">
                                        <div class="value">
                                            <b class="name">트루히요</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061082">
                                        <div class="value">
                                            <b class="name">슈반가우</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021035">
                                        <div class="value">
                                            <b class="name">샤프하우젠</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041012">
                                        <div class="value">
                                            <b class="name">에르주룸</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041109">
                                        <div class="value">
                                            <b class="name">아오스타</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011028">
                                        <div class="value">
                                            <b class="name">라로셸</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011151">
                                        <div class="value">
                                            <b class="name">페루즈</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031125">
                                        <div class="value">
                                            <b class="name">스토크 온 트렌트</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041051">
                                        <div class="value">
                                            <b class="name">레체</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041126">
                                        <div class="value">
                                            <b class="name">포르토베네레</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021055">
                                        <div class="value">
                                            <b class="name">마이링겐</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041014">
                                        <div class="value">
                                            <b class="name">키르츠베르크 인 티롤</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141011066">
                                        <div class="value">
                                            <b class="name">리스트비양카</b>
                                            <i class="category">러시아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011061">
                                        <div class="value">
                                            <b class="name">바다호스</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061075">
                                        <div class="value">
                                            <b class="name">부퍼탈</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041075">
                                        <div class="value">
                                            <b class="name">마르살라</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011057">
                                        <div class="value">
                                            <b class="name">브장송</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041011">
                                        <div class="value">
                                            <b class="name">에르진잔</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111101017">
                                        <div class="value">
                                            <b class="name">리머릭</b>
                                            <i class="category">아일랜드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141041044">
                                        <div class="value">
                                            <b class="name">올레순</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041110">
                                        <div class="value">
                                            <b class="name">바레세</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041082">
                                        <div class="value">
                                            <b class="name">카스텔람마레 디 스타비아</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011075">
                                        <div class="value">
                                            <b class="name">랑스</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011165">
                                        <div class="value">
                                            <b class="name">본뉴</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011166">
                                        <div class="value">
                                            <b class="name">바농</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131081005">
                                        <div class="value">
                                            <b class="name">클루지 나포카</b>
                                            <i class="category">루마니아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141041071">
                                        <div class="value">
                                            <b class="name">프레이케스톨렌</b>
                                            <i class="category">노르웨이</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121011094">
                                        <div class="value">
                                            <b class="name">루고</b>
                                            <i class="category">스페인</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131041015">
                                        <div class="value">
                                            <b class="name">키츠부헬</b>
                                            <i class="category">오스트리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031197">
                                        <div class="value">
                                            <b class="name">코츠월드</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041042">
                                        <div class="value">
                                            <b class="name">키우시</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061099">
                                        <div class="value">
                                            <b class="name">마그데부르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061060">
                                        <div class="value">
                                            <b class="name">오펜부르크</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041053">
                                        <div class="value">
                                            <b class="name">몬차</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121021020">
                                        <div class="value">
                                            <b class="name">에보라</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041071">
                                        <div class="value">
                                            <b class="name">라벤나</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021043">
                                        <div class="value">
                                            <b class="name">비스프</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111101007">
                                        <div class="value">
                                            <b class="name">섀넌</b>
                                            <i class="category">아일랜드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041013">
                                        <div class="value">
                                            <b class="name">알게로</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061037">
                                        <div class="value">
                                            <b class="name">켐니츠</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021047">
                                        <div class="value">
                                            <b class="name">아델보덴</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121021016">
                                        <div class="value">
                                            <b class="name">타비라</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131031011">
                                        <div class="value">
                                            <b class="name">슈체친</b>
                                            <i class="category">폴란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031062">
                                        <div class="value">
                                            <b class="name">길퍼드</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121021034">
                                        <div class="value">
                                            <b class="name">브라가</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041027">
                                        <div class="value">
                                            <b class="name">에이르디르</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141051036">
                                        <div class="value">
                                            <b class="name">크리스티안스타드</b>
                                            <i class="category">스웨덴</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041087">
                                        <div class="value">
                                            <b class="name">카세르타</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041091">
                                        <div class="value">
                                            <b class="name">몬테카티니</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021021">
                                        <div class="value">
                                            <b class="name">안데르마트</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031149">
                                        <div class="value">
                                            <b class="name">켄달</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031191">
                                        <div class="value">
                                            <b class="name">보델바</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021084">
                                        <div class="value">
                                            <b class="name">아펜첼</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041078">
                                        <div class="value">
                                            <b class="name">메시나</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061137">
                                        <div class="value">
                                            <b class="name">로이틀링겐</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111021037">
                                        <div class="value">
                                            <b class="name">시옹</b>
                                            <i class="category">스위스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111061138">
                                        <div class="value">
                                            <b class="name">코헴</b>
                                            <i class="category">독일</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011052">
                                        <div class="value">
                                            <b class="name">아르카숑</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011081">
                                        <div class="value">
                                            <b class="name">몽토방</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111031203">
                                        <div class="value">
                                            <b class="name">시렌세스터</b>
                                            <i class="category">영국</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111011148">
                                        <div class="value">
                                            <b class="name">스뮤르앙 오쥬와</b>
                                            <i class="category">프랑스</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041059">
                                        <div class="value">
                                            <b class="name">프라토</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041055">
                                        <div class="value">
                                            <b class="name">올루데니즈</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141071001">
                                        <div class="value">
                                            <b class="name">아쿠레이리</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=111041102">
                                        <div class="value">
                                            <b class="name">오페라</b>
                                            <i class="category">이탈리아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141071004">
                                        <div class="value">
                                            <b class="name">에길스타디르</b>
                                            <i class="category">아이슬란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=131091002">
                                        <div class="value">
                                            <b class="name">시굴다</b>
                                            <i class="category">라트비아</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=141021007">
                                        <div class="value">
                                            <b class="name">쿠오피오</b>
                                            <i class="category">핀란드</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121041018">
                                        <div class="value">
                                            <b class="name">마르딘</b>
                                            <i class="category">터키</i>
                                        </div>
                                    </a>
                                </li>

                                <li class="content-item">
                                    <a href="/mb/index_city.asp?l=&region=121021017">
                                        <div class="value">
                                            <b class="name">포르티마오</b>
                                            <i class="category">포르투갈</i>
                                        </div>
                                    </a>
                                </li>

                            </ul>
                        </div>


            </section>
            <!--// 모달 영역 -->
</body>
</html>
