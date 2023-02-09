<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<link rel="image_src" href="//www.stubbyplanner.com/img_v9/stubby_intro2.png" />


<meta property="og:type" content="website">
<meta property="og:locale" content="ko_KR">
<meta property="og:url" content="http://www.stubbyplanner.com/" />
<meta property="og:image" content="http://www.stubbyplanner.com/img_v9/stubby_intro2.png">
<meta property="og:site_name" content="스투비플래너">
<meta property="og:description" content="스투비플래너로 상상속 유럽여행을 현실로 만들어 보세요">
<meta property="og:title" content="상상속 유럽여행을 현실로, 스투비플래너">
<meta property="fb:app_id" content="218650814915663">


<title>상상속 유럽여행을 현실로, 스투비플래너</title>

<!-- Meta -->

    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="스투비플래너로 상상속 유럽여행을 현실로 만들어 보세요">
    <meta name="author" content="">

	<meta property="og:type" content="website"><meta property="og:locale" content="ko_KR"><meta property="og:image" content="http://www.stubbyplanner.com/img_v9/stubby_intro2.png"><meta property="og:site_name" content="stubbyplanner">
<meta property="og:description" content="스투비플래너로 상상속 유럽여행을 현실로 만들어 보세요">
<meta property="og:title" content="상상속 유럽여행을 현실로, 스투비플래너"><meta property="fb:app_id" content="218650814915663">
    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="icon" href="favicon.png"> 

    <!-- CSS/JavaScript -->
    <link rel="stylesheet" type="text/css" href="../css2/swiper.min.css">
<link href="https://api.mapbox.com/mapbox-gl-js/v1.8.1/mapbox-gl.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="../css2/common.css">

    <link rel="stylesheet" type="text/css" href="../css2/tourHome11.css">
	<link rel="stylesheet" href="../css2/font-awesome.min.css">
	<link rel="stylesheet" href="../css2/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="../css2/header_footer.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- swiper.min.js : 이미지슬라이더 -->
    <script src="../js2/swiper.min.js" type="text/javascript"></script>
    <!-- header/footer -->
    <script src="../js2/header_footer.js" type="text/javascript"></script>


<script src="https://www.google.com/jsapi"></script>

<script>
 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
 ga('create', 'UA-913663-1', 'auto');
 ga('send', 'pageview');
 ga('send','event','home','pageview','');
</script>
<script>
 google.load( "webfont", "1" );
 google.setOnLoadCallback(function() {
  WebFont.load({ custom: {
   families: [ "NanumGothic" ],
	urls: ['https://fonts.googleapis.com/earlyaccess/nanumgothic.css']
  }});
 });
</script>
<style>

.card_myplan {
	background:#fff;
//border:1px solid #efefef;
	border-radius:10px;
  box-shadow: 0 2px 4px 0 rgba(0,0,0,0.1);
  transition: 0.3s;
}
.card {
	margin-left:20px;margin-right:20px;background:#fff;border-radius:10px;margin-bottom:20px;margin-top:20px;

  box-shadow: 0 2px 4px 0 rgba(0,0,0,0.1);
  transition: 0.3s;
}
.grid {
 
  /* center */
  margin: 0 auto;
}

/* clearfix */
.grid:after {
  content: '';
  display: block;
  clear: both;
}

/* ---- grid-item ---- */
.grid-sizer,
.grid-item {
width:20%;
}

.grid-item {
  padding-left:5px;
  padding-right:5px;
  position:relative;
  height: 120px;
  float: left;
  overflow:hidden;

margin-bottom: 10px;
}

.grid-item--height2 { height: 180px; }
.grid-item--height3 { height: 260px; }
.banner_block img
{
	position:relative;

	top:-20px;

}
.banner_block
{

	padding-right:10px;

	overflow:hidden;
	position:relative;

	height:200px;

	display:inline-block;
	width:33%;
	margin-bottom:10px;
}
.rec_title{
	position:absolute;
	top:30px;
	left:10px;
	color:#fff;
	
	font-size:16pt;
	font-weight:700
}
.rec_subtitle{
	position:absolute;
	top:10px;
	left:10px;
	color:#fff;
	
	font-size:12pt;
	font-weight:700
}
.sround{
width:80%;border-radius:3px;
}
.sbold
{font-weight:600;padding-top:5px;}
.rounds
{border-radius:5px;}
.round
{border-radius:100px;}
ul.nolist
{list-style:none;}
ul.nolist li
{
	display: inline-block;
	width:11.5%;
	overflow:hidden;
	text-align: center;
}
ul.nolist li a
{
	font-size: 12px;font-weight: 300;line-height: 16px;color: #666;
}



a {display:inline}
.search_tag
{
	display:inline-block;
	margin-right:5px;
	padding-top:4px;
	padding-bottom:4px;
	padding-left:8px;
	padding-right:8px;
	background:#007aff;
	color:#fff;
	font-size:16px;
	border-radius:20px;
	margin-bottom:5px;
}



.resv_box
{
	cursor:pointer;
	text-align:center;
	line-height:110%;
	display:inline-block;
	border:1px solid #e1e1e1;
	padding-top:10px;
	padding-bottom:5px;
	padding-left:10px;
	padding-right:10px;
	color:#c0c0c0;
}
.resv_box_on
{
	cursor:pointer;

	text-align:center;
	line-height:110%;
	display:inline-block;
	border:1px solid #e1e1e1;
	padding-top:10px;
	padding-bottom:5px;
	padding-left:10px;
	padding-right:10px;

	color:#000;
}
.btn_u_green{
background:#3ad195
}
 .owl-dots {
    text-align: center;
//    position: fixed;
  //  bottom: 5px;
    width: 100%;
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    -ms-backface-visibility: hidden;
    backface-visibility: hidden;
}

.owl-dot
{
	border-radius:0px;
	width:12px;
	height:5px;
	margin-left:2px;
	margin-right:2px;
    display: inline-block;
    background: rgba(127,127,127, 0.5);
}
.owl-dot.active {
    background: rgba(127,127,127, 1);
}
.region_menu2
{	text-align:center;
	padding-top:8px;
	float:left;

	width:27.4%;

	border:1px solid #efefef;
	margin-right:2px;
}
.region_menu2 img
{width:80%;}

.region_menu
{	text-align:center;
	padding-top:8px;
	float:left;

	width:13.5%;

	border:1px solid #efefef;
	margin-right:2px;
}
.region_menu img
{width:80%;}
.region_title
{
	padding-left:5px;padding-right:5px;
	text-align:center;
	font-size:8pt;padding-top:3px;padding-bottom:3px;
}
.popover {
  position: absolute;
  top: 0;
  left: 0;

  z-index: 1010;
  display: none;
  max-width: 600px;
  padding: 1px;
  text-align: left;
  white-space: normal;
  background-color: #ffffff;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.2);
  -webkit-border-radius: 6px;
     -moz-border-radius: 6px;
          border-radius: 6px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
     -moz-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
          box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  -webkit-background-clip: padding-box;
     -moz-background-clip: padding;
          background-clip: padding-box;
}
h1,h2,h3,h4,h5,p,b,i,div,span,a,td,li,i,font,small{font-family: 'Noto Sans', sans-serif;}
	.menu-small{font-size:11pt}
.light_medium_10_shadowed {
	border: 0px rgb(0, 0, 0); color: rgb(255, 255, 255); line-height: 13px; font-size: 10px; font-weight: 700; text-decoration: none; text-shadow: 0px 0px 7px rgba(0,0,0,0.5); background-color: transparent;
	font-family:'NanumGothic';
}
.light_medium_25_shadowed {
	border: 0px rgb(0, 0, 0); color: rgb(255, 255, 255); line-height: 25px; font-size: 45px; font-weight: 900; text-decoration: none; text-shadow: 2px 2px 7px rgba(0,0,0,0.5); background-color: transparent;
	font-family:'NanumGothic';
}


.light_medium_10_shadowed_m {
	border: 0px rgb(0, 0, 0); color: rgb(255, 255, 255); line-height: 13px; font-size: 8px; font-weight: 500; text-decoration: none; text-shadow: 0px 0px 7px rgba(0,0,0,0.5); background-color: transparent;
	font-family:'Noto Sans', sans-serif;
}
.light_medium_13_shadowed_m {
	border: 0px rgb(0, 0, 0); color: rgb(255, 255, 255); line-height: 19px; font-size: 18px; font-weight: 700; text-decoration: none; text-shadow: 0px 0px 7px rgba(0,0,0,0.5); background-color: transparent;
	font-family:'Noto Sans', sans-serif;
}

.light_medium_11_shadowed_m {
	border: 0px rgb(0, 0, 0); color: rgb(255, 255, 255); line-height: 19px; font-size: 13px; font-weight: 700; text-decoration: none; text-shadow: 0px 0px 7px rgba(0,0,0,0.5); background-color: transparent;
	font-family:'Noto Sans', sans-serif;
}

.light_medium_13_shadowed {
	border: 0px rgb(0, 0, 0); color: rgb(255, 255, 255); line-height: 17px; font-size: 16px; font-weight: 700; text-decoration: none; text-shadow: 0px 0px 7px rgba(0,0,0,0.5); background-color: transparent;
	font-family:'NanumGothic';
}


.owl-nav [class*=owl-] {
	background: rgba(0, 0, 0, 0.5);
	color: rgba(255, 255, 255, 0.9);
	font-size: 11px;
	width: 30px;
	height: 30px;
	line-height: 30px;
	border-radius: 0;
	text-align: center;
}

.owl-nav [class*=owl-]:hover {
	background: rgba(0, 0, 0, 0.9);
	color: #FFF;
}

.owl-prev
{
	position: absolute;
	top: 150px;
	height: 30px;
	margin: auto !important;
}

.owl-next {
	position: absolute;
	top: 150px;
	height: 30px;
	margin: auto !important;
}


.owl-prev {
	left: -10px;
}

.owl-next {
	right: -10px;
}
#top_banner .owl-prev {
	left: 0px;
}

#top_banner .owl-next {
	right: 0px;
}


.tab_menu_selected
{
	border-top:1px solid rgba(0,0,0,.1);
	border-left:1px solid rgba(0,0,0,.1);
	border-bottom:1px solid #fff;
	background:#ffffff;
	color:#4a4a4a;
	padding-top:9px;
	padding-bottom:9px;
	text-align:center;
	font-weight:bold;
}
.tab_menu
{
	border-top:1px solid rgba(0,0,0,.1);
	border-left:1px solid rgba(0,0,0,.1);
	border-bottom:1px solid rgba(0,0,0,.1);
	background:#efefef;
	color:#818181;
	padding-top:9px;
	padding-bottom:9px;
	text-align:center;
	font-weight:bold;

}
.rank_list
{
	margin-top:3px;
	margin-bottom:3px;

	font-size:9pt;

	font-weight:400;
	padding-top:5px;
	height:25px;
}

.rank_list i
{
	margin-right:7px;line-height:15px;float:left;display:block;width:25px;text-align:center;font-size:9pt;border:1px solid #efefef;font-weight:bold;padding-top:2px;padding-bottom:2px;color:#696969;

}
.stu_tabs p
{
	color:#888;
}
.current p
{
	color:#fff;
}
.stu_titleArea p
{
	color:#fff;
}

.stu_tagArea .stu_tag_on
{
	background:#696969;
	color:#fff;
	
}
.stu_tagArea .stu_tag_off
{
	
}

.speech-bubble {
	position: relative;
	background: #ee685a;
	border-radius: .4em;
}

.speech-bubble:after {
	content: '';
	position: absolute;
	top: 0;
	left: 27%;
	width: 0;
	height: 0;
	border: 23px solid transparent;
	border-bottom-color: #ee685a;
	border-top: 0;
	border-left: 0;
	margin-left: -11.5px;
	margin-top: -18px;
}

.speech-bubble2 {
	position: relative;
	background: #3ad195;
	border-radius: .4em;
}

.speech-bubble2:after {
	content: '';
	position: absolute;
	top: 0;
	left: 73%;
	width: 0;
	height: 0;
	border: 23px solid transparent;
	border-bottom-color: #3ad195;
	border-top: 0;
	border-left: 0;
	margin-left: -11.5px;
	margin-top: -18px;
}

.select_theme li { width:840px; }
.select_theme li .prd_item { width:280px; }
.select_theme li .imgArea { padding:55.2% 0 0; }
.select_theme li .textArea { left:16px; bottom:16px; text-align:left; }
.select_theme .btnWrap i { background-position:-148px -320px; }

@media (min-width:620px){
.select_theme li { width:100%; }
.select_theme li .prd_item { width:33.33%; }
.select_theme li .textArea { top:50%; left:50%; bottom:auto; -webkit-transform:translate(-50%, -50%); transform:translate(-50%, -50%); text-align:center; }
}



.band_coupon {
    display: inline-block;
    position: absolute;
    top: 10px;
    left: -29px;	
    -webkit-transform: rotate(-45deg);
    transform: rotate(-45deg);
    width: 100px;
    box-shadow: 0 2px 0 0 rgba(0,0,0,.1);
    background: #ffd565;
    font-size: 13px;
    font-weight: bold;
    line-height: 22px;
    text-shadow: 0 1px 0 rgba(255,255,255,.5);
    color: #7b683c;
}
</style>
</head>	
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

                                            <p style="color:#ee685a">여행으로 가득채우다   </p>
                                            <b>TRIPFULL<span> </span></b>


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
                            <a href="/guide/reservation.asp">마이페이지</a>
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

		<i class="fa fa-chevron-down"></i></font></a>
                            <div class="prfPopup" id="divLangSelector" style="right:120px;width:120px">
                                <ul class="prfPopup_section">
                                    <li class="prfPopup_item"><a href="/index.asp"><img src="../images/icons/login.png">	 한국어</a></li>

		   </ul>
		</div>

  </li>
                            <li class="gnb_item sign_out">
                            <a href="../member/login.jsp " class="signup">회원가입</a>
                        </li>
	

                    </ul>
                </nav>
                <nav class="lnb_container">


                    <ul class="lnb_wrap">
                        <li class="lnb_item active">
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








