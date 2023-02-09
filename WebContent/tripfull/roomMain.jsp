<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="ko">

<html>
<head>
    <title>숙소 홈 - 스투비플래너</title>
    <!-- meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimun-scale=1.0, maximum-scale=1.0, user-scalable=no">


	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">



	<!-- CSS Header and Footer -->
	<link rel="stylesheet" href="../css2/header-v4.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="../css2/animate.css">
	<link rel="stylesheet" href="../css2/line-icons.css">
	<link rel="stylesheet" href="../css2/font-awesome.min.css">


    <!-- CSS/JavaScript -->
    <link rel="stylesheet" type="text/css" href="../css2/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="../css2/common.css">
    <link rel="stylesheet" type="text/css" href="../css2/BnB_home.css">

<link rel="stylesheet" type="text/css" href="../css2/header_footer.css">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>



	<!-- CSS Customization -->
	<link rel="stylesheet" href="../css2/style.css">

    <!-- swiper.js : 이미지슬라이더 -->
    <script type="text/javascript" src="../js2/swiper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


<style>
.search_input i {
    display: inline-block;
    width: 20.4px;
    height: 20.4px;
    margin: 0 4px 0 0;
    background-position: -57.8px -30.6px;
    background-size: 217.6px;
    vertical-align: -4px;
    opacity: .7;
background-image: url(http://d3b39vpyptsv01.cloudfront.net/0/0/1548062231191VwAkOaUebn.png);
    background-repeat: no-repeat;

}
.stu_topBanner .stu_main_search { width:calc(100% - 40px); margin:0 auto; }
.stu_topBanner .search_input { display:block; position:relative; height:50px; margin:-25px 0 0; padding:0 0 0 20px; -webkit-border-radius:3px; border-radius:3px; -webkit-box-shadow:0 1px 1px 0 rgba(0,0,0,.15), 0 3px 9px rgba(40,50,60,.2); box-shadow:0 1px 1px 0 rgba(0,0,0,.15), 0 3px 9px rgba(40,50,60,.2); background:#fff; font-size:15px; font-weight:normal; line-height:49px; color:#666; }
.stu_topBanner .search_input i { display:inline-block; width:20.4px; height:20.4px; margin:0 4px 0 0; background-position:-57.8px -30.6px; background-size:217.6px; vertical-align:-4px; opacity:.7; }

@media (min-width:620px){
	/* topBanner-search */
	.stu_topBanner .stu_main_search { position:absolute; bottom:0; left:50%; transform:translate(-50%, 50%); max-width:900px; width:calc(100% - 80px); }
	.stu_topBanner .search_input { margin:0; }
	.stu_topBanner .search_input i {  }
}
@media (min-width:1025px){
/* topBanner-search */
.stu_topBanner .stu_main_search {  }
.stu_topBanner .search_input { font-size:16px; }
.stu_topBanner .search_input i { margin:0 8px 0 0; }
}


.like.active {
    background-position: -84px 0;
}
.like {
    position: absolute;
    top: 10px;
    right: 10px;
    width: 28px;
    height: 28px;
    background-position: -112px 0;
    background-size: 224px;
    z-index: 9;
}
.like
{
    background-image: url(images/common/stu_icon.png);
    background-repeat: no-repeat;
    vertical-align: middle;
}

a{display:inline;}
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

</style>
</head>
<%@ include file = "headerpage.jsp" %>
<body>


    <div class="stu_wrap" >

        <main >
            <section class="stu_topBanner" style="overflow:visible;">
                <div class="stu_inner_wrap"  style="overflow:hidden;">
                    <div class="viewport">
                        <div class="textArea">
                            <p class="type1">최적 동선의</p>
                            <p class="type2">국내 숙소 간편검색</p>
                        </div>
                        <img src="images/sleeping.png" alt="샘플이미지">
                    </div>
                </div>

	<div class="stu_main_search">
                <a href="#" class="search_input" id="ico_search"><i></i>SEARCH</a>
            </div>

            </section>
            <section class="stu_selectCity">
                <div class="stu_inner_wrap">

                    <h2 class="stu_h2_title">다양한 숙소를 찾아보세요!</h2>
                    <div class="swiper-container swiper1">
                        <ul class="swiper-wrapper">
                            <li class="swiper-slide">
                                <a href="index_city.asp?region=111011004">
                                    <div class="stu_thumb_wrap">
                                        <div class="imgArea">
                                            <img src="images/select01.jpg" alt="제주">
                                        </div>
                                        <div class="textArea">
                                            <p>제주</p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="swiper-slide">
                                <a href="index_city.asp?region=111031001">
                                    <div class="stu_thumb_wrap">
                                        <div class="imgArea">
                                            <img src="images/select02.jpg" alt="서울">
                                        </div>
                                        <div class="textArea">
                                            <p>서울</p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="swiper-slide">
                                <a href="index_city.asp?region=121011002">
                                    <div class="stu_thumb_wrap">
                                        <div class="imgArea">
                                            <img src="images/select03.jpg" alt="대전">
                                        </div>
                                        <div class="textArea">
                                            <p>대전 </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="swiper-slide">
                                 <a href="index_city.asp?region=131011001">
                                    <div class="stu_thumb_wrap">
                                        <div class="imgArea">
                                            <img src="images/select05.jpg" alt="대구">
                                        </div>
                                        <div class="textArea">
                                            <p>대구 </p>
                                        </div>
                                    </div>
                                </a>
                            </li>



                            <li class="swiper-slide">
                                <a href="index_city.asp?region=111041004">
                                    <div class="stu_thumb_wrap">
                                        <div class="imgArea">
                                            <img src="images/select04.jpg" alt="부산">
                                        </div>
                                        <div class="textArea">
                                            <p>부산 </p>
                                        </div>
                                    </div>
                                </a>
                            </li>


                            <li class="swiper-slide">
                               <a href="index_city.asp?region=111041003">
                                    <div class="stu_thumb_wrap">
                                        <div class="imgArea">
                                            <img src="images/select06.jpg" alt="가평">
                                        </div>
                                        <div class="textArea">
                                            <p>가평</p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="swiper-slide">
                                   <a href="index_city.asp?region=111041006">
                                    <div class="stu_thumb_wrap">
                                        <div class="imgArea">
                                            <img src="images/select07.jpg" alt="양양">
                                        </div>
                                        <div class="textArea">
                                            <p>양양 </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="swiper-slide">
                                 <a href="index_city.asp?region=121011003">
                                    <div class="stu_thumb_wrap">
                                        <div class="imgArea">
                                            <img src="images/select08.jpg" alt="속초">
                                        </div>
                                        <div class="textArea">
                                            <p>속초 </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="swiper-slide">
                                <a href="index_city.asp?region=131041001">
                                    <div class="stu_thumb_wrap">
                                        <div class="imgArea">
                                            <img src="images/select09.jpg" alt="강릉">
                                        </div>
                                        <div class="textArea">
                                            <p>강릉</p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="swiper-slide">
                                <a href="index_city.asp?region=131021001">
                                    <div class="stu_thumb_wrap">
                                        <div class="imgArea">
                                            <img src="images/select11.jpg" alt="여수">
                                        </div>
                                        <div class="textArea">
                                            <p>여수</p>
                                        </div>
                                    </div>
                                </a>
                            </li>



                            <li class="swiper-slide">
                                <a href="index_city.asp?region=111061006">
                                    <div class="stu_thumb_wrap">
                                        <div class="imgArea">
                                            <img src="images/select12.jpg" alt="단양">
                                        </div>
                                        <div class="textArea">
                                            <p>단양</p>
                                        </div>
                                    </div>
                                </a>
                            </li>


                            <li class="swiper-slide">
                                <a href="index_city.asp?region=111061005">
                                    <div class="stu_thumb_wrap">
                                        <div class="imgArea">
                                            <img src="images/select13.jpg" alt="전주">
                                        </div>
                                        <div class="textArea">
                                            <p>전주</p>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li class="swiper-slide">
                                <a href="index_city.asp?region=111061008">
                                    <div class="stu_thumb_wrap">
                                        <div class="imgArea">
                                            <img src="images/select14.jpg" alt="순천">
                                        </div>
                                        <div class="textArea">
                                            <p>순천</p>
                                        </div>
                                    </div>
                                </a>
                            </li>






                            <li class="swiper-slide">
                                <a href="index_city.asp?region=111071001">
                                    <div class="stu_thumb_wrap">
                                        <div class="imgArea">
                                            <img src="images/select15.jpg" alt="파주">
                                        </div>
                                        <div class="textArea">
                                            <p>파주</p>
                                        </div>
                                    </div>
                                </a>
                            </li>


                            <li class="swiper-slide">
                                <a href="index_city.asp?region=111081001">
                                    <div class="stu_thumb_wrap">
                                        <div class="imgArea">
                                            <img src="images/select16.jpg" alt="포항">
                                        </div>
                                        <div class="textArea">
                                            <p>포항</p>
                                        </div>
                                    </div>
                                </a>
                            </li>


                            <li class="swiper-slide">
                                <a href="index_city.asp?region=111021002">
                                    <div class="stu_thumb_wrap">
                                        <div class="imgArea">
                                            <img src="images/select17.jpg" alt="울산">
                                        </div>
                                        <div class="textArea">
                                            <p>울산</p>
                                        </div>
                                    </div>
                                </a>
                            </li>



                        </ul>
                        <!--scrollbar-->
                        <div class="swiper-scrollbar"></div>
                    </div>

                    <div class="ct-toggle-btn-wrap">
                        <button type="button" class="ct-toggle-btn"></button>
                    </div>

                </div>
            </section>












        </main>

	<%@ include file = "footer.jsp" %>



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




    </div>



    <script>
        $(document).ready(function() {






         // 스와이핑
            var mySwiper = new Swiper ('.swiper1', {
                slidesPerView:'auto',
                freeMode:true,
                direction:'horizontal',
                noSwiping:true,
                noSwipingClass:'swiper-slide',
                breakpoints: {
                    620: {
                        noSwiping:false,
                        scrollbar: {
                            el: '.swiper-scrollbar',
                            hide: true,
                        },
                    },
                }
            });

            // 아코디언 버튼(토글)
            var hide_list = $('.swiper1 li:gt(5)');
            $(hide_list).addClass('stu_hide');
            $('.ct-toggle-btn-wrap').click(function() {
                $(this).children('.ct-toggle-btn').toggleClass('on');
                $(hide_list).toggleClass('stu_hide');
            });



        })
    </script>










<script src="../js2/header_footer3.js" type="text/javascript"></script>




</body>
</html>
