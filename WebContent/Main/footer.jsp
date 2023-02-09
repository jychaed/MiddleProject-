<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css"> 
 footer { font-family: 'IBM Plex Sans KR', sans-serif;}
 
 
 
 .business_info{
 		text-align : center;
 }
/* .stu_utils ul{
	left : 10%;
}
.stu_coInfo{
	left : 15%;
}
.business_info ul li{
	left : 20%;
}
 */

/* 이벤트 배너 */
.stu_event_banner { padding:20px 0; } 
.stu_event_banner .stu_inner_wrap { padding:0 12px; } 
.stu_event_banner .event_banner { padding:0 0 30px; } 
.stu_event_banner li { height:100px; background:#f3f3f3; text-align:left; overflow:hidden; } 
.stu_event_banner li a { position:relative; height:100%;display:block} 
.stu_event_banner .txtWrap { position:absolute; top:30px; left:14px; color:#333; white-space:nowrap; z-index:1; } 
.stu_event_banner .txtWrap p { display:block; font-size:15px; font-weight:400; color:#333; } 
.stu_event_banner .txtWrap b { font-size:20px; font-weight:bolder; } 
.stu_event_banner .txtWrap b span { margin-right:6px; color:#ee685a; } 
.stu_event_banner .swiper-container-horizontal > .swiper-pagination-bullets { bottom:0; } 
.stu_event_banner .swiper-pagination-bullet-active { background:gray; } 
.stu_event_banner .swiper-button-prev, 
.stu_event_banner .swiper-button-next { display:none; } 

@media (min-width:620px){ 
	.stu_event_banner .stu_inner_wrap { padding:0 20px; } 
	.stu_event_banner li { height:110px; } 
	.stu_event_banner .txtWrap {  left:6%;  } 
	.stu_event_banner .txtWrap p { margin:0 0 4px; font-size:20px; font-weight:300; } 
	.stu_event_banner .txtWrap b { font-size:22px; } 
	.stu_event_banner .imgWrap {  width:216px; height:129.6px; margin:10px 8% 0 0;  } 
	.stu_event_banner .imgWrap b { margin:-4px 0 0; font-size:28px; } 
	.stu_event_banner .imgWrap b span { margin:0 0 -2px; font-size:13px; } 
	.stu_event_banner .swiper-button-prev, 
	.stu_event_banner .swiper-button-next { display:block; width:46.5px; height:62px; margin:-44px 0 0; background-image:url(/images2/common/stu_icon.png); background-repeat:no-repeat; background-size:496px; vertical-align:middle; } 
	.stu_event_banner .swiper-button-prev { background-position:0 -124px; } 
	.stu_event_banner .swiper-button-next { background-position:-46.5px -124px; }
} 
@media (min-width:1025px){ 
		.stu_event_banner { margin:0; padding:30px 0; } 
		.stu_event_banner .stu_inner_wrap { padding:0; } 
		.stu_event_banner li { height:120px; } 
		.stu_event_banner .txtWrap { top:50%;-webkit-transform:translateY(-50%);transform:translateY(-50%);  } 
		.stu_event_banner .txtWrap p { display:inline-block; margin:0 8px 0 0; font-size:26px; } 
		.stu_event_banner .txtWrap b {  font-size:26px; } 
		.stu_event_banner .txtWrap b span { font-size:34px; } 
	}






/* 푸터영역 */
footer { position:relative; padding:0! important; border:none; background:none; }
footer .stu_utils { background:#373741; text-align:center; }
footer .stu_utils .stu_inner_wrap { padding:20px 20px 26px; }
footer .stu_links li { display:inline-block; position:relative; white-space:nowrap; }
footer .stu_links li + li { padding:0 0 0 17px; }
footer .stu_links li + li:before { content:""; position:absolute; top:50%; left:8px; -webkit-transform:translateY(-50%); transform:translateY(-50%); height:12px; border-left:1px solid #6e7075; }
footer .stu_links li a { display:block; padding:12px 0; font-size:13.5px; font-weight:normal; line-height:20px; color:#86868c; }
footer .stu_links li a:hover { color:#c3c3c6; }
footer .stu_sns li { display:inline-block; padding:14px 6px 0; }
footer .stu_sns li a { display:inline-block; width:32px; height:32px; -webkit-border-radius:50%; border-radius:50%; background-size:288px; font-size:0; text-indent:-9999px; opacity:.4; }
footer .stu_sns li a:hover { opacity:1; }
footer .stu_sns li.stu_facebook a { background-position:0 0; }
footer .stu_sns li.stu_instagram a { background-position:0 -32px; }
footer .stu_sns li.stu_kakaotalk a { background-position:-256px 0; }
footer .stu_sns li.stu_email a { background-position:-256px -32px; }
footer .stu_coInfo { background:#45454f; text-align:center; }
footer .stu_coInfo .stu_inner_wrap { padding:26px 20px 20px; }
footer .stu_footer_logo { display:block; width:180px; height:20px; margin:0 0 20px; background-position:-27px -26.5px; background-size:234px; }
footer .stu_copyright { font-size:12px; font-weight:300; line-height:20px; letter-spacing:0; text-align:left; color:#86868c; }
footer .stu_copyright b { font-weight:bolder; color:#c3c3c6; }
footer .stu_copyright .info_btn { position:absolute; top:28px; right:20px; font-size:13.5px; font-weight:normal; cursor:pointer; }
footer .stu_copyright .info_btn i { display:inline-block; width:16px; height:16px; margin:0 0 0 3px; background-position:-144px -176px; background-size:256px; vertical-align:-3px; opacity:.4; }
footer .stu_copyright .info_btn.on i { background-position:-144px -160px; }
footer .business_info { max-height:0; transition:all ease .2s; overflow:hidden; }
footer .business_info.on { max-height:300px; }
footer .business_info .txtWrap { padding:0 0 16px; }
footer .business_info br { display:none; }


















/* ========================================================= */
/* --------------------------------------------------------- */
/*                    태블릿 (가로 및 세로)                    */
/* --------------------------------------------------------- */



/* 푸터영역 */
footer .stu_utils { height:52px; }
footer .stu_utils .stu_inner_wrap { padding:0; }
footer .stu_links { white-space:nowrap; }
footer .stu_links li { margin:0 2%; }
footer .stu_links li + li { padding:0; }
footer .stu_links li + li:before { display:none; }
footer .stu_links li a { padding:0; line-height:52px; }
footer .stu_links br { display:none; }
footer .stu_sns { position:absolute; right:14px; z-index:1; }
footer .stu_sns li { padding:22px 6px 0; }
footer .stu_coInfo .stu_inner_wrap { padding:20px 20px 20px; }
footer .stu_footer_logo { position:absolute; top:26px; margin:0; }
footer .stu_copyright .info_btn { display:none; }
footer .business_info, footer .business_info.on { max-height:none; padding:0 0 12px; }
footer .business_info .txtWrap { padding:0; }
footer .business_info li { display:inline-block; position:relative; }
footer .business_info li + li { padding:0 0 0 17px; }
footer .business_info li + li:before { content:""; position:absolute; top:50%; left:8px; -webkit-transform:translateY(-50%); height:10px; border-left:1px solid #595b64; }
footer .business_info br { display:block; }



/* 검색영역 */
/* 검색영역 - 팝업영역 */
.md-container { top:8%; height:84%; }




}















/* ========================================================= */
/* --------------------------------------------------------- */
/*                    PC 웹 (가로 및 세로)                    */
/* --------------------------------------------------------- */
/* ========================================================= */

@media (min-width:1025px){

/* 공통 */
.on-mobile { display:none; }
.on-pc { display:block; }




/* 푸터영역 */
footer .stu_links, footer .stu_links li { float:left; margin:0; }
footer .stu_links li, footer .stu_links li + li { padding:0 50px 0 0; }
footer .stu_links li:before, footer .stu_links li + li:before { content:""; display:block; position:absolute; top:50%; left:-24px; -webkit-transform:translateY(-50%); transform:translateY(-50%); height:12px; border-left:1px solid #6e7075; }
footer .stu_links li a { font-size:14px; }
footer .stu_sns { right:0; }
footer .stu_sns li { padding:10px 0 0 14px; }
footer .stu_coInfo { text-align:left; }
footer .stu_coInfo .stu_inner_wrap { padding:28px 0 40px 190px; }
footer .stu_footer_logo { top:34px; left:0; width:162px; height:36.9px; background-position:-24.3px -4.95px; background-size:210.6px; }
footer .stu_copyright { font-size:13.5px; font-weight:font-weight:bolder; line-height:24px; }

footer { position:relative; padding:0! important; border:none; background:none; }
footer .stu_utils { background:#373741; text-align:center; }
footer .stu_utils .stu_inner_wrap { padding:20px 20px 26px; }
footer .stu_links li { display:inline-block; position:relative; white-space:nowrap; }
footer .stu_links li + li { padding:0 0 0 17px; }
footer .stu_links li + li:before { content:""; position:absolute; top:50%; left:8px; -webkit-transform:translateY(-50%); transform:translateY(-50%); height:12px; border-left:1px solid #6e7075; }
footer .stu_links li a { display:block; padding:12px 0; font-size:13.5px; font-weight:normal; line-height:20px; color:#86868c; }
footer .stu_links li a:hover { color:#c3c3c6; }
footer .stu_sns li { display:inline-block; padding:14px 6px 0; }
footer .stu_sns li a { display:inline-block; width:32px; height:32px; -webkit-border-radius:50%; border-radius:50%; background-size:288px; font-size:0; text-indent:-9999px; opacity:.4; }
footer .stu_sns li a:hover { opacity:1; }
footer .stu_sns li.stu_facebook a { background-position:0 0; }
footer .stu_sns li.stu_instagram a { background-position:0 -32px; }
footer .stu_sns li.stu_kakaotalk a { background-position:-256px 0; }
footer .stu_sns li.stu_email a { background-position:-256px -32px; }
footer .stu_coInfo { background:#45454f; text-align:center; }
footer .stu_coInfo .stu_inner_wrap { padding:26px 20px 20px; }
footer .stu_footer_logo { display:block; width:180px; height:20px; margin:0 0 20px; background-position:-27px -26.5px; background-size:234px; }
footer .stu_copyright { font-size:12px; font-weight:300; line-height:20px; letter-spacing:0; text-align:left; color:#86868c; }
footer .stu_copyright b { font-weight:bolder; color:#c3c3c6; }
footer .stu_copyright .info_btn { position:absolute; top:28px; right:20px; font-size:13.5px; font-weight:normal; cursor:pointer; }
footer .stu_copyright .info_btn i { display:inline-block; width:16px; height:16px; margin:0 0 0 3px; background-position:-144px -176px; background-size:256px; vertical-align:-3px; opacity:.4; }
footer .stu_copyright .info_btn.on i { background-position:-144px -160px; }
footer .business_info { max-height:0; transition:all ease .2s; overflow:hidden; }
footer .business_info.on { max-height:300px; }
footer .business_info .txtWrap { padding:0 0 16px; }
footer .business_info br { display:none; }


/* 검색영역 */
/* 검색영역 - 음영 */
.stu_md_search { position:absolute; }

/* 검색영역 - 팝업영역 */
.md-container { position:relative; max-width:1044px; width:calc(100% - 56px); height:auto; margin:0 0 0 -27px; }
.pos-top1 { top:84px; }
.pos-top2 { top:142px; }
/* 검색영역 - 팝업영역 - 헤더 */
.md-header { position:relative; left:0; -webkit-transform:none; transform:none; max-width:1044px; padding:6.5px 20px; border:1px solid #4a4a4a; border-bottom:0; }
.md-header a.ico_close { position:absolute; top:-1px; right:0; -webkit-transform:translateX(100%); transform:translateX(100%); width:56px; height:52px; margin:0; border:1px solid #4a4a4a; border-left:0; background-position:-45px -48px; background-size:388px; background-color:#666; }
.md-header .md-searchWrap { width:100%; height:38px; }
.md-header .md-search-input { height:38px; }
/* 검색영역 - 팝업영역 - 컨텐츠 */
.md-content { max-height:440px; height:auto; margin:0; padding:0; border:1px solid #4a4a4a; border-top:0; }



/* �명꽣�곸뿭 */
footer { position:relative; padding:0! important; border:none; background:none; }
footer .stu_utils { background:#373741; text-align:center; }
footer .stu_utils .stu_inner_wrap { padding:20px 20px 26px; }
footer .stu_links li { display:inline-block; position:relative; white-space:nowrap; }
footer .stu_links li + li { padding:0 0 0 17px; }
footer .stu_links li + li:before { content:""; position:absolute; top:50%; left:8px; -webkit-transform:translateY(-50%); transform:translateY(-50%); height:12px; border-left:1px solid #6e7075; }
footer .stu_links li a { display:block; padding:12px 0; font-size:13.5px; font-weight:normal; line-height:20px; color:#86868c; }
footer .stu_links li a:hover { color:#c3c3c6; }
footer .stu_sns li { display:inline-block; padding:14px 6px 0; }
footer .stu_sns li a { display:inline-block; width:32px; height:32px; -webkit-border-radius:50%; border-radius:50%; background-size:288px; font-size:0; text-indent:-9999px; opacity:.4; }
footer .stu_sns li a:hover { opacity:1; }
footer .stu_sns li.stu_facebook a { background-position:0 0; }
footer .stu_sns li.stu_instagram a { background-position:0 -32px; }
footer .stu_sns li.stu_kakaotalk a { background-position:-256px 0; }
footer .stu_sns li.stu_email a { background-position:-256px -32px; }
footer .stu_coInfo { background:#45454f; text-align:center; }
footer .stu_coInfo .stu_inner_wrap { padding:26px 20px 20px; }
footer .stu_footer_logo { display:block; width:180px; height:20px; margin:0 0 20px; background-position:-27px -26.5px; background-size:234px; }
footer .stu_copyright { font-size:12px; font-weight:300; line-height:20px; letter-spacing:0; text-align:left; color:#86868c; }
footer .stu_copyright b { font-weight:bolder; color:#c3c3c6; }
footer .stu_copyright .info_btn { position:absolute; top:28px; right:20px; font-size:13.5px; font-weight:normal; cursor:pointer; }
footer .stu_copyright .info_btn i { display:inline-block; width:16px; height:16px; margin:0 0 0 3px; background-position:-144px -176px; background-size:256px; vertical-align:-3px; opacity:.4; }
footer .stu_copyright .info_btn.on i { background-position:-144px -160px; }
footer .business_info { max-height:0; transition:all ease .2s; overflow:hidden; }
footer .business_info.on { max-height:300px; }
footer .business_info .txtWrap { padding:0 0 16px; }
footer .business_info br { display:none; }



/* �대깽�몃같�� �곸뿭 */
.stu_event_banner { padding:28px 0 0; }
.stu_event_banner .event_banner2 { position:relative; height:120px; background:#f3f3f3; overflow:hidden; }
.stu_event_banner .event_banner2 a { display:block; width:100%; height:100%; }
.stu_event_banner .txtWrap { position:absolute; top:50%; left:16px; -webkit-transform:translateY(-50%); transform:translateY(-50%); color:#333; white-space:nowrap; z-index:1; }
.stu_event_banner .txtWrap p { display:block; font-size:15px; font-weight:normal; color:#333; }
.stu_event_banner .txtWrap b { display:block; font-size:20px; font-weight:bolder; }
.stu_event_banner .imgWrap { float:right; position:relative; width:140px; height:84px; margin:18px 16px 0 0; background-position:center; background-size:cover; text-align:center; }
.stu_event_banner .imgWrap b { position:absolute; top:50%; left:0; right:0; -webkit-transform:translateY(-50%); transform:translateY(-50%); font-size:20.5px; font-weight:bolder; color:#333; }
.stu_event_banner .imgWrap span { display:block; font-size:12px; color:#72bbff; }



/* 寃��됱쁺�� */
/* 寃��됱쁺�� - �뚯쁺 */
.stu_md_search { display:none; position:fixed; top:0; left:0; right:0; bottom:0; margin:0; padding:0; background:none; opacity:0; overflow:hidden; z-index:101; }
.stu_md_search.active { display:block; opacity:1; }
.stu_md_search .search_background { position:absolute; top:0; left:0; right:0; bottom:0; margin:0; padding:0; background:rgba(0,0,0,.3); }
/* 寃��됱쁺�� - �앹뾽�곸뿭 */
.md-container { position:fixed; top:0; left:50%; width:100%; max-width:680px; height:100%; transform:translateX(-50%); }
/* 寃��됱쁺�� - �앹뾽�곸뿭 - �ㅻ뜑 */

















/* ========================================================= */
/* --------------------------------------------------------- */
/*                    �쒕툝由� (媛�濡� 諛� �몃줈)                    */
/* --------------------------------------------------------- */
/* ========================================================= */

@media (min-width:620px){
/* scroll top */
.stu_scroll_top { height:48px; }
.stu_scroll_top span { line-height:48px; }



footer .stu_utils { height:52px; }
footer .stu_utils .stu_inner_wrap { padding:0; }
footer .stu_links { white-space:nowrap; }
footer .stu_links li { margin:0 2%; }
footer .stu_links li + li { padding:0; }
footer .stu_links li + li:before { display:none; }
footer .stu_links li a { padding:0; line-height:52px; }
footer .stu_links br { display:none; }
footer .stu_sns { position:absolute; right:14px; z-index:1; }
footer .stu_sns li { padding:22px 6px 0; }
footer .stu_coInfo .stu_inner_wrap { padding:20px 20px 20px; }
footer .stu_footer_logo { position:absolute; top:26px; margin:0; }
footer .stu_copyright .info_btn { display:none; }
footer .business_info, footer .business_info.on { max-height:none; padding:0 0 12px; }
footer .business_info .txtWrap { padding:0; }
footer .business_info li { display:inline-block; position:relative; }
footer .business_info li + li { padding:0 0 0 17px; }
footer .business_info li + li:before { content:""; position:absolute; top:50%; left:8px; -webkit-transform:translateY(-50%); height:10px; border-left:1px solid #595b64; }
footer .business_info br { display:block; }



/* �대깽�몃같�� �곸뿭 */
.stu_event_banner { padding:28px 0; }
.stu_event_banner .stu_inner_wrap { padding:0 40px; }
.stu_event_banner .txtWrap { left:6%; }
.stu_event_banner .txtWrap p { margin:0 0 4px; font-size:20px; font-weight:300; }
.stu_event_banner .txtWrap b { font-size:22px; }
.stu_event_banner .imgWrap { width:216px; height:129.6px; margin:10px 8% 0 0; }
.stu_event_banner .imgWrap b { margin:-4px 0 0; font-size:28px; }
.stu_event_banner .imgWrap span { margin:0 0 -2px; font-size:13px; }



/* 寃��됱쁺�� */
/* 寃��됱쁺�� - �앹뾽�곸뿭 */
.md-container { top:8%; height:84%; }




}















/* ========================================================= */
/* --------------------------------------------------------- */
/*                    PC �� (媛�濡� 諛� �몃줈)                    */
/* --------------------------------------------------------- */
/* ========================================================= */

@media (min-width:1025px){

/* 怨듯넻 */
.on-mobile { display:none; }
.on-pc { display:block; }


.stu_scroll_top { position:fixed; left:50%; bottom:50px; width:55px; height:55px; margin:0 0 0 570px; -webkit-border-radius:2px; border-radius:2px; border:none; background:#373741; z-index:100; }
.stu_scroll_top:hover { background:#373741; }
.stu_scroll_top span { display:none; }
.stu_scroll_top i { width:35px; height:37.5px; margin:9px 0 0; background-position:-155px -256.25px; background-size:400px; opacity:1; }



/* �명꽣�곸뿭 */
footer .stu_links, footer .stu_links li { float:left; margin:0; }
footer .stu_links li, footer .stu_links li + li { padding:0 50px 0 0; }
footer .stu_links li:before, footer .stu_links li + li:before { content:""; display:block; position:absolute; top:50%; left:-24px; -webkit-transform:translateY(-50%); transform:translateY(-50%); height:12px; border-left:1px solid #6e7075; }
footer .stu_links li a { font-size:14px; }
footer .stu_sns { right:0; }
footer .stu_sns li { padding:10px 0 0 14px; }
footer .stu_coInfo { text-align:left; }
footer .stu_coInfo .stu_inner_wrap { padding:28px 0 40px 190px; }
footer .stu_footer_logo { top:34px; left:0; width:162px; height:36.9px; background-position:-24.3px -4.95px; background-size:210.6px; }
footer .stu_copyright { font-size:13.5px; font-weight:normal; line-height:24px; }



/* �대깽�몃같�� �곸뿭 */
.stu_event_banner .stu_inner_wrap { padding:0; }
.stu_event_banner .event_banner2 { height:140px; }
.stu_event_banner .txtWrap p { display:inline-block; margin:0 8px 0 0; font-size:26px; }
.stu_event_banner .txtWrap b { display:inline-block; font-size:26px; }
.stu_event_banner .imgWrap { width:266.7px; height:160px; margin:14px 10% 0 0; }
.stu_event_banner .imgWrap b { font-size:34px; }
.stu_event_banner .imgWrap span { font-size:15px; }



/* 寃��됱쁺�� */
/* 寃��됱쁺�� - �뚯쁺 */
.stu_md_search { position:absolute; }
/* 寃��됱쁺�� - �앹뾽�곸뿭 */
.md-container { position:relative; max-width:1044px; width:calc(100% - 56px); height:auto; margin:0 0 0 -27px; }
.pos-top1 { top:84px; }
.pos-top2 { top:142px; }
/* 寃��됱쁺�� - �앹뾽�곸뿭 - �ㅻ뜑 */









    </style>
</head>
 
 <footer >


	<div style = "height:500px; text-align : center;"> 
	</div>
        <div class="stu_coInfo">
            <div class="stu_inner_wrap">

                <div class="stu_copyright">
                    <div class="info_btn">추가정보<i></i></div>

                    <div class="business_info">
			                    
			      <div class = "footertext">  
			         <address class="footer_licensee">
			            <p><strong>(주)트리풀</strong><br>PL : 정종은&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;주소 : 대전광역시 중구 계룡로 846, 3-4층</p>
			         </address>
			         <p class="footer_licensee">
			            <span><strong class="customer_center"><span>고객센터</span>&nbsp;1577-1233&nbsp;</strong></span>
			         </p>
			         <strong class="customer_center"></strong>
			   
			         <p class="copy">COPYRIGHTⓒ TRIPFULL SERVICE INC. ALL RIGHTS RESERVED</p>  
					</div>
	                </div>
	            </div>
       	 </div>
       	 </div>

    </footer>
</html>    
    